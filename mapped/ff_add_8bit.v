/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Thu Apr 26 17:46:31 2018
/////////////////////////////////////////////////////////////


module ff_add_8bit ( add1, add2, result );
  input [7:0] add1;
  input [7:0] add2;
  output [7:0] result;

  tri   [7:0] add1;
  tri   [7:0] add2;
  tri   [7:0] result;

  ff_add ADD ( .add1(add1), .add2(add2), .result(result) );
endmodule

