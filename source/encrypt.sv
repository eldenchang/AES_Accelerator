module encrypt(
	input wire clk,
	input wire n_rst,
	input wire [127:0]data,
	input wire [127:0]round_key,
	input wire last_round,
	output wire [127:0] encrypted
);
wire [127:0] sub_out;
wire [127:0] mix_in;
wire [127:0] mix_out;
Substitute_2 sub_block(.data_in(data), .data_out(sub_out));
shiftRows shift_block(.in(sub_out), .out(mix_in));
MixColumns mix_block(.clk(clk), .n_rst(n_rst), .enable(!last_round), .data_in(mix_in), .data_out(mix_out));
addKey add_block(.in1(mix_out), .in2(round_key), .out(encrypted));

endmodule