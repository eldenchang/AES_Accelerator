
module controller(
	input wire clk,
	input wire n_rst,

	input wire start, //from AHB_lite interface, signal for controller to know there are incoming tasks
	input wire change_key, // 1==change_key 0==encrypt/decrypt
	input wire chg_key_done, // from GenKey, for conroller to know(and also forward to interface) that the key have been stored
	input wire enc_done, //from AESctr, for controller to know there is a new packets of data just finished being encrypting
	input wire last_round, // 1== ahb has read all data to encrypt/decrypt and has nothing more to read
	//intput wire shift_enable, // from AESctr 
	output reg change_key_start, //to GenKey and preAddKey, to start loading keys from rx_sr
	output reg aes_enable, //to AESctr, to start the encryption proccess
	output reg ahb_mode, //to AHB_lite interface, tell AHB interface input / output data 0== read from SRAm, 1==Write to SRAM
	output reg ahb_shift_en,
	output reg restart_check
	);

	typedef enum bit [3:0]{IDLE, INITIAL_READ, INITIAL_WAIT, WAIT_CYCLE_START, READ, WAIT_FOR_AES, WRITE, WAIT_AGAIN, CHNGE_KEY} stateType;

	stateType state;
	stateType n_state;

	reg rst_switch_state;
	reg roll_over;
	reg [3:0] roll_over_val;
	flex_counter counter(.clk(clk), .n_rst(n_rst), .count_enable(1'b1), .rollover_val(roll_over_val), .clear(rst_switch_state) , .rollover_flag(roll_over));


	always_ff @(posedge clk or negedge n_rst) begin
		if(n_rst==1'b0) 
		begin
			state <= IDLE;
		end 
		else 
		begin
			state <= n_state;
		end
	end

	always_comb begin
		n_state = state;
		case(state)
			IDLE: n_state = start ? (change_key ? CHNGE_KEY : INITIAL_READ) : IDLE;
			CHNGE_KEY: n_state = chg_key_done ? IDLE : CHNGE_KEY;
			INITIAL_READ: n_state = INITIAL_WAIT;
			INITIAL_WAIT: n_state = roll_over ? WAIT_CYCLE_START : INITIAL_WAIT;
			WAIT_CYCLE_START: n_state = roll_over ? READ : WAIT_CYCLE_START;
			READ: n_state = WAIT_FOR_AES;
			WAIT_FOR_AES: n_state = enc_done ? WRITE : WAIT_FOR_AES;
			WRITE: n_state = WAIT_AGAIN;
			WAIT_AGAIN: n_state =  roll_over ? (last_round? IDLE : WAIT_CYCLE_START) : WAIT_AGAIN;
		endcase // state
	end

	always_comb begin
		change_key_start = 0;
		restart_check =0 ;
		aes_enable = 0;
		ahb_mode = 0;
		ahb_shift_en = 0;
		rst_switch_state = 1;
		roll_over_val = 4'd10;
		case(state)
			IDLE: 
				begin
					rst_switch_state = 1; 
					restart_check = 1;
				end
			CHNGE_KEY: 
				begin
					change_key_start = 1;
				end
			INITIAL_READ: 
				begin 
					ahb_mode = 0;
					ahb_shift_en = 1;
				end
			INITIAL_WAIT:
				begin
					rst_switch_state = 0;
				end
			WAIT_CYCLE_START:
				begin
					rst_switch_state = 0;
					roll_over_val = 4'd2;
					aes_enable = 1;
				end
			READ: 
				begin 
					ahb_mode = 0;
					ahb_shift_en = 1;
					aes_enable = 1;
				end
			WAIT_FOR_AES:
				begin
					aes_enable = 1;					
				end
			WRITE: 
				begin
					ahb_mode = 1;
					ahb_shift_en = 1;	
					aes_enable = 0;		
				end
			WAIT_AGAIN: 
				begin
					rst_switch_state = 0;	
					roll_over_val = 4'd7;
					aes_enable = 0;		
				end
		endcase // state
	end
endmodule // controller		