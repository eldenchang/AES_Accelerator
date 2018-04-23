module ff_add
#(
	parameter NUM_BITS = 1 //number of bits to add together
)
(
	input wire [NUM_BITS - 1:0] add1,
	input wire [NUM_BITS - 1:0] add2,
	output wire [NUM_BITS - 1:0] result
);

assign result = add1 ^ add2;

endmodule