module gen_keys(
	input wire clk,
	input wire n_rst,
	input wire start_doing,       //from controller, load new key
	input wire [127:0] rx_key,   //from rx_SR module
	input wire [3:0] cur_round,  //from mixColumns module
	output reg [127:0] cur_key, //output to addRoundKey module
	output reg done
);
reg [1279:0] key_sch,key_sch_storage;
reg [3:0] round;
reg [127:0] temp_key, orig_key;
reg key_load, my_reset;

temp theActualGenKeys(.clk(clk), .n_rst(n_rst & my_reset), .key_load(key_load), .rx_key(rx_key), .cur_round(round), .cur_key(temp_key), .orig_key(orig_key));
	typedef enum bit [3:0] {IDLE,RESET,LOAD,R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,DONE} stateType;

	stateType state;
	stateType n_state;

	always_ff @(posedge clk,negedge n_rst)
	begin
		if(n_rst==0)
		begin
			state <= IDLE;
		end
		else
		begin
			state <= n_state;
		end
	end
	always_ff @(posedge clk,negedge n_rst)
	begin
		if(n_rst==0)
		begin
			key_sch_storage <= '0;
		end
		else
		begin
			key_sch_storage <= key_sch;
		end
	end


	always_comb begin
		n_state = state;
		case(state)
			IDLE: n_state = start_doing ? RESET : IDLE;
			RESET: n_state = LOAD;
			LOAD: n_state = R0;
			R0: n_state = R1;
			R1: n_state = R2;
			R2: n_state = R3;
			R3: n_state = R4;
			R4: n_state = R5;
			R5: n_state = R6;
			R6: n_state = R7;
			R7: n_state = R8;
			R8: n_state = R9;
			R9: n_state = R10;
			R10: n_state = DONE;
			DONE: n_state = IDLE;
		endcase // state
	end
	always_comb begin
		key_load = 0;
		round = 0;
		done = 0;
		my_reset  = 1;
		key_sch = key_sch_storage;
		case(state)
			IDLE: 
				begin 
				end
			RESET:
				begin
					my_reset = 0;
				end
			LOAD: 
				begin
					key_load = 1;
				end
			R0: 
				begin 
					round = 0;
				end
			R1: 
				begin 
					round = 1;
				end
			R2: 
				begin 
					round = 2;
					key_sch[1279:1152] = temp_key;
				end
			R3: 
				begin 
					round = 3;
					key_sch[1151:1024] = temp_key;
				end
			R4: 
				begin 
					round = 4;
					key_sch[1023:896] = temp_key;
				end
			R5: 
				begin 
					round = 5;
					key_sch[895:768] = temp_key;
				end
			R6: 
				begin 
					round = 6;
					key_sch[767:640] = temp_key;
				end
			R7: 
				begin 
					round = 7;
					key_sch[639:512] = temp_key;
				end
			R8: 
				begin 
					round = 8;
					key_sch[511:384] = temp_key;
				end
			R9: 
				begin 
					round = 9;
					key_sch[383:256] = temp_key;
				end
			R10: 
				begin 
					round = 10;
					key_sch[255:128] = temp_key;
				end
			DONE: 
				begin
					done = 1;
					key_sch[127:0] = temp_key;
				end
		endcase // state
	end
	always_comb begin
		cur_key = orig_key;
		case(cur_round)
			4'd0: cur_key = orig_key;
			4'd1: cur_key = key_sch_storage[1279:1152];
			4'd2: cur_key = key_sch_storage[1151:1024];
			4'd3: cur_key = key_sch_storage[1023:896];
			4'd4: cur_key = key_sch_storage[895:768];
			4'd5: cur_key = key_sch_storage[767:640];
			4'd6: cur_key = key_sch_storage[639:512];
			4'd7: cur_key = key_sch_storage[511:384];
			4'd8: cur_key = key_sch_storage[383:256];
			4'd9: cur_key = key_sch_storage[255:128];
			4'd10: cur_key= key_sch_storage[127:0];
		endcase // state
	end

endmodule