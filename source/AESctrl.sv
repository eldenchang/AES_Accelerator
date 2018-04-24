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
	output wire done,
	output wire last_round,
	output wire load_enable,
	output wire [3:0] round,
	output wire [127:0] data,
	output wire [127:0] Tx_SR
);
	typedef enum bit [5:0] {IDLE,E0,E1,E2,E3,E4,E5,E6,E7,E8,E9,E10,E11,E12,E13,E14,E15,E16,E17,E18,E19,E20,D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15,D16,D17,D18,D19,D20} stateType;

	stateType curr_state;
	stateType next_state;

	always_ff @(posedge clk,negedge n_rst)
	begin
		if(n_rst==0)
		begin
			curr_state <= IDLE;
		end
		else
		begin
			curr_state <= next_state;
		end
	end

	always_comb
	begin
		last_round = 0;
		load_enable = 0;
		done = 0;
		round = 0;
		data = 0;
		if (encrypt == 1'b1)
		begin
			Tx_SR = encrypted;
			data = encrypted;
			if (curr_state == E1 || curr_state == D1)
			begin
				data = Rx_SR ^ round_key;
			end
			
		end
		else
		begin
			Tx_SR = decrypted;
			data = decrypted;
			if (curr_state == E1 || curr_state == D1)
			begin
				data = Rx_SR ^ round_key;
			end
		end
		last_round = (curr_state == D19 || curr_state == E19 || curr_state == D20 || curr_state == E20);
		load_enable = (curr_state == D20 || curr_state == E20);
		done = (curr_state == D20 || curr_state == E20);

	end	

	always_comb
	begin
		round = 4'd0;
		next_state = IDLE;
		if (curr_state == IDLE)
		begin
			if (start == 1'b1 && encrypt == 1'b1)
			begin
				next_state = E0;
			end
			else
			begin
				next_state = D0;
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
			round = 4'd1;
		end
		else if (curr_state == E3)
		begin
			next_state = E4;
			round = 4'd2;
		end
		else if (curr_state == E4)
		begin
			next_state = E5;
			round = 4'd2;
		end
		else if (curr_state == E5)
		begin
			next_state = E6;
			round = 4'd3;
		end
		else if (curr_state == E6)
		begin
			next_state = E7;
			round = 4'd3;
		end
		else if (curr_state == E7)
		begin
			next_state = E8;
			round = 4'd4;
		end
		else if (curr_state == E8)
		begin
			next_state = E9;
			round = 4'd4;
		end
		else if (curr_state == E9)
		begin
			next_state = E10;
			round = 4'd5;
		end
		else if (curr_state == E10)
		begin
			next_state = E11;
			round = 4'd5;
		end
		else if (curr_state == E11)
		begin
			next_state = E12;
			round = 4'd6;
		end
		else if (curr_state == E12)
		begin
			next_state = E13;
			round = 4'd6;
		end
		else if (curr_state == E13)
		begin
			next_state = E14;
			round = 4'd7;
		end
		else if (curr_state == E14)
		begin
			next_state = E15;
			round = 4'd7;
		end
		else if (curr_state == E15)
		begin
			next_state = E16;
			round = 4'd8;
		end
		else if (curr_state == E16)
		begin
			next_state = E17;
			round = 4'd8;
		end
		else if (curr_state == E17)
		begin
			next_state = E18;
			round = 4'd9;
		end
		else if (curr_state == E18)
		begin
			next_state = E19;
			round = 4'd9;
		end
		else if (curr_state == E19)
		begin
			next_state = E20;
			round = 4'd10;
		end
		else if (curr_state == E20)
		begin
			next_state = IDLE;
			round = 4'd10;
		end
		else if (curr_state == D0)
		begin
			round = 4'd10;
			next_state = D1;
		end
		else if (curr_state == D1)
		begin
			round = 4'd9;
			next_state = D2;
		end
		else if (curr_state == D2)
		begin
			round = 4'd9;
			next_state = D3;
		end
		else if (curr_state == D3)
		begin
			next_state = D4;
			round = 4'd8;
		end
		else if (curr_state == D4)
		begin
			next_state = D5;
			round = 4'd8;
		end
		else if (curr_state == D5)
		begin
			next_state = D6;
			round = 4'd7;
		end
		else if (curr_state == D6)
		begin
			next_state = D7;
			round = 4'd7;
		end
		else if (curr_state == D7)
		begin
			next_state = D8;
			round = 4'd6;
		end
		else if (curr_state == D8)
		begin
			next_state = D9;
			round = 4'd6;
		end
		else if (curr_state == D9)
		begin
			next_state = D10;
			round = 4'd5;
		end
		else if (curr_state == D10)
		begin
			next_state = D11;
			round = 4'd5;
		end
		else if (curr_state == D11)
		begin
			next_state = D12;
			round = 4'd4;
		end
		else if (curr_state == D12)
		begin
			next_state = D13;
			round = 4'd4;
		end
		else if (curr_state == D13)
		begin
			next_state = D14;
			round = 4'd3;
		end
		else if (curr_state == D14)
		begin
			next_state = D15;
			round = 4'd3;
		end
		else if (curr_state == D15)
		begin
			next_state = D16;
			round = 4'd2;
		end
		else if (curr_state == D16)
		begin
			next_state = D17;
			round = 4'd2;
		end
		else if (curr_state == D17)
		begin
			next_state = D18;
			round = 4'd1;
		end
		else if (curr_state == D18)
		begin
			next_state = D19;
			round = 4'd1;
		end
		else if (curr_state == D19)
		begin
			next_state = D20;
			round = 4'd0;
		end
		else if (curr_state == D20)
		begin
			next_state = IDLE;
			round = 4'd0;
		end
	end


endmodule