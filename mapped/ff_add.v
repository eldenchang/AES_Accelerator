/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Thu Apr 26 17:46:53 2018
/////////////////////////////////////////////////////////////


module ff_add ( add1, add2, result );
  input [0:0] add1;
  input [0:0] add2;
  output [0:0] result;


  XOR2X1 U2 ( .A(add2[0]), .B(add1[0]), .Y(result[0]) );
endmodule

