// $Id: $
// File name:   flex_counter.sv
// Created:     2/1/2018
// Author:      Qifan Chang
// Lab Section: 337-06
// Version:     1.0  Initial Design Entry
// Description: flex counter
module flex_counter
#(
   parameter NUM_CNT_BITS = 4
)
(
   input wire clk,
   input wire n_rst,
   input wire clear,
   input wire count_enable,
   input wire [NUM_CNT_BITS - 1:0] rollover_val,
   output reg [NUM_CNT_BITS - 1:0] count_out,
   output reg rollover_flag
);

   reg [NUM_CNT_BITS - 1:0] next_count;
   reg n_flag;

   always @ (count_out, clear, count_enable) begin
	if (count_enable == 1'b1) begin
		if (count_out == rollover_val) 
			next_count = 1;
		else
			next_count = count_out + 1;
	end 
	else
		next_count = count_out;
   end 

   assign n_flag = (next_count == rollover_val) ? 1'b1 : 1'b0;

   always_ff @ (posedge clk, negedge n_rst) begin
	if (n_rst == 1'b0) begin
		count_out <= '0;
		rollover_flag  <= 1'b0;
	end 
	else if (clear) begin
		count_out <= 0;
		rollover_flag <= 1'b0;
	end 
	else begin
		count_out <= next_count;
		rollover_flag <= n_flag;
	end
   end

   

endmodule