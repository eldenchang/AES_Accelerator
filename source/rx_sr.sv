// $Id: $
// File name:   rx_sr.sv
// Created:     4/22/2018
// Author:      Qifan Chang
// Lab Section: 337-06
// Version:     1.0  Initial Design Entry
// Description: Input shift register
module rx_sr
(
	input wire clk,
	input wire n_rst,
	input wire [63:0] data_in,
	input wire shift_enable,
	output wire [127:0] data_out
);

flexbyte_stp_sr #(.NUM_BYTES_IN(8), .NUM_BYTES_OUT(16)) stp(.clk(clk), .n_rst(n_rst), .shift_enable(shift_enable), .data_in(data_in), .data_out(data_out));

endmodule
