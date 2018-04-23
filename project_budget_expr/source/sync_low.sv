// $Id: $
// File name:   sync_low.sv
// Created:     1/26/2018
// Author:      Qifan Chang
// Lab Section: 337-06
// Version:     1.0  Initial Design Entry
// Description: Synchronizer(reset low)

module sync_low
(
	input wire clk,
	input wire n_rst,
	input wire async_in,
	output reg sync_out
);

reg Q;

always_ff @ (posedge clk, negedge n_rst)
begin 
	if(1'b0 == n_rst)
	begin
		Q <= 1'b0;
		sync_out <= 1'b0;
	end
	else
	begin
		Q <= async_in;
		sync_out <= Q;
	end
end
endmodule
		 