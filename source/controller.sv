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
	input wire enc_done, //from AESctr, for controller to know there is a new packets of data just finished being encrypting
	//intput wire shift_enable, // from AESctr

	output reg opt_mode, // opt mode indicate if the job is encrypt(0) or decrypt(1), 
	output reg load_key, //to GenKey and preAddKey, to start loading keys from rx_sr
	output reg aes_enable, //to AESctr, to start the encryption proccess
	output reg ahb_mode, //to AHB_lite interface, tell AHB interface input / output data
	output reg done_chg_key, // to AHB_lite interface, to let interface forward the done_chg_key signal to CPU
	output reg ahb_shift_en, // to AHB_lite interface to let interface shift in/out data
	output reg preaddkey,
	output reg aes_load
	);

	// typedef enum bit [3:0]{IDLE, START, CHG_KEY, ENCRYP_AND_FETCH, WAIT_ENCRYP, ENCRYP_AND_WRITE, PREADDKEY, LOAD, ERROR} stateType;
	typedef enum bit [3:0]{IDLE, START, CHG_KEY, 
						ENC, ENC_AND_FETCH, WAIT, WRITE, ERROR} stateType;

	stateType state;
	stateType n_state;

	wire [3:0] ct, sr_ct;
	reg rst_switch_state, rst_sr_ct;
	wire switch_state, shift_ct_en;
	flex_counter counter(.clk(clk), .n_rst(n_rst), .count_enable(1'b1), .rollover_val(4'd2), .clear(rst_switch_state), .count_out(ct));
	flex_counter SR_counter(.clk(clk), .n_rst(n_rst), .count_enable(shift_ct_en), .rollover_val(4'd4), .clear(rst_sr_ct), .count_out(sr_ct));

	assign switch_state = (ct == 1);
	assign opt_mode = enc_dec;

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
			START: n_state = sr_ct ? (data_type ? CHG_KEY : ENC_AND_FETCH) : START; // begin
			CHG_KEY: n_state = chg_key_done ? IDLE : CHG_KEY;
			ENC: n_state = ENC_AND_FETCH;
			ENC_AND_FETCH: n_state = sr_ct ? WAIT : ENC_AND_FETCH;
			WAIT: n_state = enc_done ? WRITE : WAIT;
			ERROR: n_state = start ? IDLE : ERROR;
		endcase // state
	end

	always_comb begin
		load_key = 0;
		aes_enable = 0;
		ahb_mode = 0;
		done_chg_key = 0;
		preaddkey = 0;
		rst_switch_state = 0;
		rst_sr_ct = 0;
		aes_load = 0;
		abh_shift_en = 0;	
		case(state)
			IDLE: rst_sr_ct = 1; //reset the shift register counter
			START: begin
				//rx_enable = 1;
				if(data_type == 0) begin
					ahb_mode = 0;
					ahb_shift_en = 1;
				end
				shift_ct_en = 1;
				//load_key = 1;
			end
			CHG_KEY: begin 
				//rx_enable = 1;
				load_key = 1;
			end
			ENC: begin
				aes_enable = 1;
				rst_sr_ct = 1;
			end
			ENC_AND_FETCH: begin 
				//rx_enable = 1;
				//fetch = 1;
				shift_ct_en = 1;
				ahb_mode = 0;
				ahb_shift_en = 1;
			end
			WAIT: begin

			end
			WRITE: begin
				ahb_mode = 1;
				ahb_shift_en = 1;	
			end
		endcase // state
	end
endmodule // controller		