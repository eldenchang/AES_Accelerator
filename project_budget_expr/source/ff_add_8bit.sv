module ff_add_8bit
(
	input wire [7:0] add1,
	input wire [7:0] add2,
	output wire [7:0] result
);

ff_add #(8) ADD(.add1(add1), .add2(add2), .result(result));

endmodule 