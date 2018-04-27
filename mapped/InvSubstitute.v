/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Thu Apr 26 21:24:30 2018
/////////////////////////////////////////////////////////////


module InvSubstitute ( data_in, data_out );
  input [127:0] data_in;
  output [127:0] data_out;

  tri   [127:0] data_in;
  tri   [127:0] data_out;

  InvSBox SBox1 ( .data_in(data_in[127:120]), .data_out(data_out[127:120]) );
  InvSBox SBox2 ( .data_in(data_in[119:112]), .data_out(data_out[119:112]) );
  InvSBox SBox3 ( .data_in(data_in[111:104]), .data_out(data_out[111:104]) );
  InvSBox SBox4 ( .data_in(data_in[103:96]), .data_out(data_out[103:96]) );
  InvSBox SBox5 ( .data_in(data_in[95:88]), .data_out(data_out[95:88]) );
  InvSBox SBox6 ( .data_in(data_in[87:80]), .data_out(data_out[87:80]) );
  InvSBox SBox7 ( .data_in(data_in[79:72]), .data_out(data_out[79:72]) );
  InvSBox SBox8 ( .data_in(data_in[71:64]), .data_out(data_out[71:64]) );
  InvSBox SBox9 ( .data_in(data_in[63:56]), .data_out(data_out[63:56]) );
  InvSBox SBox10 ( .data_in(data_in[55:48]), .data_out(data_out[55:48]) );
  InvSBox SBox11 ( .data_in(data_in[47:40]), .data_out(data_out[47:40]) );
  InvSBox SBox12 ( .data_in(data_in[39:32]), .data_out(data_out[39:32]) );
  InvSBox SBox13 ( .data_in(data_in[31:24]), .data_out(data_out[31:24]) );
  InvSBox SBox14 ( .data_in(data_in[23:16]), .data_out(data_out[23:16]) );
  InvSBox SBox15 ( .data_in(data_in[15:8]), .data_out(data_out[15:8]) );
  InvSBox SBox16 ( .data_in(data_in[7:0]), .data_out(data_out[7:0]) );
endmodule

