module addKey(
    	input  wire [127:0] in1,
    	input  wire [127:0] in2,
    	output wire [127:0] out
);
    	assign out = in1 ^ in2;

endmodule
