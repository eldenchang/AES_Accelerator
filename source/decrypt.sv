module decrypt(
	input wire clk,
	input wire n_rst,
	input wire [127:0]data,
	input wire [127:0]round_key,
	input wire last_round,
	output wire [127:0] decrypted
);
wire [127:0] sub_in;
wire [127:0] sub_out;
wire [127:0] mix_in;
InvShiftRows Invshift_block(.in(data), .out(sub_in));
InvSubstitute Invsub_block(.clk(clk), .n_rst(n_rst), .load(1'b1), .data_in(sub_in), .data_out(sub_out));
addKey Invadd_block(.in1(sub_out), .in2(round_key), .out(mix_in));
InvMixColumns Invmix_block(.clk(clk), .n_rst(n_rst), .enable(!last_round), .data_in(mix_in), .data_out(decrypted));







endmodule