module Substitute_2
(
	input wire [127:0] data_in,
	output wire [127:0] data_out
);



SBox SBox1(.data_in(data_in[127:120]), .data_out(data_out[127:120]));
SBox SBox2(.data_in(data_in[119:112]), .data_out(data_out[119:112]));
SBox SBox3(.data_in(data_in[111:104]), .data_out(data_out[111:104]));
SBox SBox4(.data_in(data_in[103:96]), .data_out(data_out[103:96]));
SBox SBox5(.data_in(data_in[95:88]), .data_out(data_out[95:88]));
SBox SBox6(.data_in(data_in[87:80]), .data_out(data_out[87:80]));
SBox SBox7(.data_in(data_in[79:72]), .data_out(data_out[79:72]));
SBox SBox8(.data_in(data_in[71:64]), .data_out(data_out[71:64]));
SBox SBox9(.data_in(data_in[63:56]), .data_out(data_out[63:56]));
SBox SBox10(.data_in(data_in[55:48]), .data_out(data_out[55:48]));
SBox SBox11(.data_in(data_in[47:40]), .data_out(data_out[47:40]));
SBox SBox12(.data_in(data_in[39:32]), .data_out(data_out[39:32]));
SBox SBox13(.data_in(data_in[31:24]), .data_out(data_out[31:24]));
SBox SBox14(.data_in(data_in[23:16]), .data_out(data_out[23:16]));
SBox SBox15(.data_in(data_in[15:8]), .data_out(data_out[15:8]));
SBox SBox16(.data_in(data_in[7:0]), .data_out(data_out[7:0]));


endmodule