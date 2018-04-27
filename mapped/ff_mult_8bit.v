/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Thu Apr 26 17:46:17 2018
/////////////////////////////////////////////////////////////


module ff_mult_8bit ( mult1, mult2, result );
  input [7:0] mult1;
  input [7:0] mult2;
  output [7:0] result;

  tri   [7:0] mult1;
  tri   [7:0] mult2;
  tri   [7:0] result;

  ff_mult FF_MULT ( .mult1(mult1), .mult2(mult2), .result(result) );
endmodule

