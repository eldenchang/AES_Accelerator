/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Thu Apr 26 17:47:25 2018
/////////////////////////////////////////////////////////////


module ff_mult ( mult1, mult2, result );
  input [1:0] mult1;
  input [1:0] mult2;
  output [1:0] result;
  wire   n6, n7, n8, n9, n10;

  XOR2X1 U9 ( .A(n6), .B(n7), .Y(result[1]) );
  XOR2X1 U10 ( .A(n8), .B(n9), .Y(n7) );
  NAND2X1 U11 ( .A(mult2[0]), .B(mult1[1]), .Y(n9) );
  AND2X1 U12 ( .A(mult1[0]), .B(mult2[1]), .Y(n6) );
  XOR2X1 U13 ( .A(n8), .B(n10), .Y(result[0]) );
  NAND2X1 U14 ( .A(mult2[0]), .B(mult1[0]), .Y(n10) );
  NAND2X1 U15 ( .A(mult1[1]), .B(mult2[1]), .Y(n8) );
endmodule

