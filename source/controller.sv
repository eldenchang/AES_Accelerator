// $Id: $
// File name:   controller.sv
// Created:     4/15/2018
// Author:      Qifan Chang
// Lab Section: 337-06
// Version:     1.0  Initial Design Entry
// Description: main controller of AES encryption block
module controller(
	input wire clk,
	input wire n_rst,

	input wire start, //from AHB_lite interface, signal for controller to know there are incoming tasks
	input wire data_received, //from AHB_lite interface, for controller to know there is data received by interface
	input wire data_type, // from AHB_lite interface, for controller to know if the incoming data is new key value or video dara
	input wire enc_dec, // encrypt or decrypt
	input wire chg_key_done, // from GenKey, for conroller to know(and also forward to interface) that the key have been stored
	input wire data_output, //from AESctr, for controller to know there is a new packets of data just finished being encrypting
	//intput wire shift_enable, // from AESctr

	output reg load_key, //to GenKey and preAddKey, to start loading keys from rx_sr
	output reg aes_enable, //to AESctr, to start the encryption proccess
	output reg ahb_mode, //to AHB_lite interface, tell AHB interface input / output data
	output reg done_chg_key, // to AHB_lite interface, to let interface forward the done_chg_key signal to CPU
	output reg fetch, // to AHB_lite interface to let interface to fetch data from SRAM
	output reg preaddkey,
	output reg aes_load,
	output wire data_flag //indicating that the data should be shifted into pipeline
	);

	// typedef enum bit [3:0]{IDLE, START, CHG_KEY, ENCRYP_AND_FETCH, WAIT_ENCRYP, ENCRYP_AND_WRITE, PREADDKEY, LOAD, ERROR} stateType;
	typedef enum bit [3:0]{IDLE, START, CHG_KEY, PRE_ADD_KEY, ENC, ENC_AND_WRITE, ENCRYP_AND_FETCH, DEC, DEC_AND_WRITE, DEC_AND_FETCH, ERROR} stateType;

	stateType state;
	stateType n_state;

	wire [3:0] ct, sr_ct;
	reg rst_switch_state, rst_sr_ct;
	wire switch_state, shift_ct_en;
	flex_counter counter(.clk(clk), .n_rst(n_rst), .count_enable(1'b1), .rollover_val(4'd2), .clear(rst_switch_state), .count_out(ct));
	flex_counter SR_counter(.clk(clk), .n_rst(n_rst), .count_enable(shift_ct_en), .rollover_val(4'd4), .clear(rst_switch_state), .count_out(sr_ct));

	assign switch_state = (ct == 1);
	assign data_flag = data_type;

	always_ff @(posedge clk or negedge n_rst) begin
		if(~n_rst) begin
			state <= IDLE;
		end else begin
			state <= n_state;
		end
	end

	always_comb begin
		n_state = state;
		case(state)
			IDLE: n_state = start ? START : IDLE;
			//START: n_state = (!data_type && data_received) ? CHK_ADDR : START;
			START: sr_ct ?  // begin
				// if(data_type == 0) begin
				// 	n_state = data_received ? CHG_KEY : START;
				// end
				// else if(data_type == 1) begin
				// 		n_state = data_received ? ENCRYP_AND_FETCH : START;
				// end
			// end
			CHG_KEY: n_state = IDLE;
			LOAD: begin
				if(switch_state) begin
					if (!data_output) begin
						n_state = pipeline_full ? WAIT_ENCRYP : ENCRYP_AND_FETCH;
					end
					else begin
						n_state = ENCRYP_AND_WRITE;
					end
				end
				else begin
					n_state = LOAD;
				end
			end
			ENCRYP_AND_FETCH: n_state = PREADDKEY;
			PREADDKEY: n_state = LOAD; 
			WAIT_ENCRYP: n_state = data_output ? ENCRYP_AND_WRITE : WAIT_ENCRYP;
			ENCRYP_AND_WRITE: n_state = pipeline_full ? ENCRYP_AND_WRITE : ENCRYP_AND_FETCH;
			ERROR: n_state = start ? IDLE : ERROR;
		endcase // state
	end

	always_comb begin
		fetch = 0;
		load_key = 0;
		aes_enable = 0;
		ahb_mode = 0;
		done_chg_key = 0;
		preaddkey = 0;
		rst_switch_state = 0;
		aes_load = 0;
		

		case(state)
			IDLE: rst = 1; //reset the shift register counter
			START: begin
				//rx_enable = 1;
				if(data_type == 0) begin
					fetch = 1;
				end
				shift_ct_en = 1;
				//load_key = 1;
			end
			CHG_KEY: begin 
				//rx_enable = 1;
				load_key = 1;
			end
			ENCRYP_AND_FETCH: begin 
				//rx_enable = 1;
				//fetch = 1;
				preaddkey = 1;
				aes_enable = 1;
				
			end
			LOAD: begin // waiting for AESctr to load data 
				//fetch = 1;
				aes_enable = 1;
				aes_load = 1;
			end
			PREADDKEY: begin //lO
				aes_enable = 1;
				fetch = 1;
				rst_switch_state = 1;
			end
			ENCRYP_AND_WRITE: begin
				aes_enable = 1;
			end
			WAIT_ENCRYP: aes_enable = 1;
		endcase // state
	end
endmodule // controller		