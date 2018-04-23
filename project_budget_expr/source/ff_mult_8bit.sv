module ff_mult_8bit
(
	input wire [7:0] mult1,
	input wire [7:0] mult2,
	output wire [7:0] result
);

ff_mult #(8) FF_MULT(.mult1(mult1), .mult2(mult2), .result(result));

endmodule