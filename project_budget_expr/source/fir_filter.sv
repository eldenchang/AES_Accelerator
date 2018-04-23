// $Id: $
// File name:   fir_filter.sv
// Created:     2/16/2018
// Author:      Qifan Chang
// Lab Section: 337-06
// Version:     1.0  Initial Design Entry
// Description: top level wrapper block
module fir_filter
(
	input wire clk,
	input wire n_reset,
	input wire [15:0] sample_data,
	input wire [15:0] fir_coefficient,
	input wire data_ready,
	input wire load_coeff,
	
	output wire one_k_samples,
	output wire modwait,
	output wire [15:0] fir_out,
	output wire err
);

wire dr;
wire lc;
wire cnt_up_internal;
wire clear_internal;
wire [2:0] op_internal;
wire [3:0] src1_internal;
wire [3:0] src2_internal;
wire [3:0] dest_internal;
wire overflow_internal;
wire [16:0] outreg_data_internal;

controller CON (.clk(clk), .n_reset(n_reset), .dr(dr), .lc(lc), .overflow(overflow_internal), .cnt_up(cnt_up_internal), .clear(clear_internal), .modwait(modwait), .op(op_internal), .src1(src1_internal), .src2(src2_internal), .dest(dest_internal), .err(err));
counter CT (.clk(clk), .n_reset(n_reset), .cnt_up(cnt_up_internal), .clear(clear_internal), .one_k_samples(one_k_samples));
datapath DP (.clk(clk), .n_reset(n_reset), .op(op_internal), .src1(src1_internal), .src2(src2_internal), .dest(dest_internal), .ext_data1(sample_data), .ext_data2(fir_coefficient), .outreg_data(outreg_data_internal), .overflow(overflow_internal));
magnitude MAG (.in(outreg_data_internal), .out(fir_out));
sync_low DR (.clk(clk), .n_rst(n_reset), .async_in(data_ready), .sync_out(dr));
sync_low LC (.clk(clk), .n_rst(n_reset), .async_in(load_coeff), .sync_out(lc));

endmodule
