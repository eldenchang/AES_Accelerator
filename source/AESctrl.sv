// $Id: $
// File name:   AESctrl.sv
// Created:     4/23/2018
// Author:      Mohammed Al Saeed
// Lab Section: 337-14
// Version:     1.0  Initial Design Entry
// Description: AES ctrl block

module AESctrl
(
	input  wire clk,
	input  wire n_rst,
	input wire start,
	input wire encrypt,
	input wire [127:0] Rx_SR,
	input wire [127:0] round_key,
	input wire [127:0] encrypted,
	input wire [127:0] decrypted,
	output reg done,
	output reg last_round,
	output reg load_enable,
	output reg [3:0] round,
	output reg [127:0] data,
	output reg [127:0] Tx_SR
);
	typedef enum bit [4:0] {IDLE,E0,E1,E2,E3,E4,E5,E6,E7,E8,E9,E10,D00,D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10} stateType;

	stateType curr_state;
	stateType next_state;
	reg [127:0] old_round_key;

	always_ff @(posedge clk,negedge n_rst)
	begin
		if(n_rst==0)
		begin
			curr_state <= IDLE;
			old_round_key <= 0;
		end
		else
		begin
			curr_state <= next_state;
			old_round_key <= round_key;
		end
	end

	always_comb
	begin
		last_round = 0;
		load_enable = 0;
		done = 0;
		data = 0;
		if (encrypt == 1'b1)
		begin
			Tx_SR = encrypted;
			data = encrypted;
			if (curr_state == E0 )
			begin
				data = Rx_SR ^ round_key;
			end
			
		end
		else
		begin
			Tx_SR = decrypted;
			data = decrypted;
			if (curr_state == D0)
			begin
				data = Rx_SR ^ old_round_key;
			end
		end
		last_round = (curr_state == IDLE || curr_state == E9 || curr_state == D9);
		load_enable = (curr_state == D10 || curr_state == E10);
		done = (curr_state == D10 || curr_state == E10);

	end	

	always_comb
	begin
		round = 4'd0;
		next_state = IDLE;
		if (curr_state == IDLE)
		begin
			if (start == 1'b0)
			begin
				next_state = IDLE;
			end
			else if (encrypt == 1'b1)
			begin
				next_state = E0;
			end
			else
			begin
				next_state = D00;
			end
		end
		else if (curr_state == E0)
		begin
			next_state = E1;
			round = 4'd0;
		end
		else if (curr_state == E1)
		begin
			next_state = E2;
			round = 4'd1;
		end
		else if (curr_state == E2)
		begin
			next_state = E3;
			round = 4'd2;
		end
		else if (curr_state == E3)
		begin
			next_state = E4;
			round = 4'd3;
		end
		else if (curr_state == E4)
		begin
			next_state = E5;
			round = 4'd4;
		end
		else if (curr_state == E5)
		begin
			next_state = E6;
			round = 4'd5;
		end
		else if (curr_state == E6)
		begin
			next_state = E7;
			round = 4'd6;
		end
		else if (curr_state == E7)
		begin
			next_state = E8;
			round = 4'd7;
		end
		else if (curr_state == E8)
		begin
			next_state = E9;
			round = 4'd8;
		end
		else if (curr_state == E9)
		begin
			next_state = E10;
			round = 4'd9;
		end
		else if (curr_state == E10)
		begin
			next_state = IDLE;
			round = 4'd10;
		end
		
		else if (curr_state == D00)
		begin
			next_state = D0;
			round = 4'd10;
		end
		else if (curr_state == D0)
		begin
			round = 4'd9;
			next_state = D1;
		end
		else if (curr_state == D1)
		begin
			round = 4'd8;
			next_state = D2;
		end
		else if (curr_state == D2)
		begin
			round = 4'd7;
			next_state = D3;
		end
		else if (curr_state == D3)
		begin
			next_state = D4;
			round = 4'd6;
		end
		else if (curr_state == D4)
		begin
			next_state = D5;
			round = 4'd5;
		end
		else if (curr_state == D5)
		begin
			next_state = D6;
			round = 4'd4;
		end
		else if (curr_state == D6)
		begin
			next_state = D7;
			round = 4'd3;
		end
		else if (curr_state == D7)
		begin
			next_state = D8;
			round = 4'd2;
		end
		else if (curr_state == D8)
		begin
			next_state = D9;
			round = 4'd1;
		end
		else if (curr_state == D9)
		begin
			next_state = D10;
			round = 4'd0;
		end
		else if (curr_state == D10)
		begin
			next_state = IDLE;
			round = 4'd0;
		end
	end


endmodule