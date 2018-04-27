/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Thu Apr 26 21:28:58 2018
/////////////////////////////////////////////////////////////


module tx_sr ( clk, n_rst, data_in, shift_enable, load_enable, data_out );
  input [127:0] data_in;
  output [31:0] data_out;
  input clk, n_rst, shift_enable, load_enable;

  tri   clk;
  tri   n_rst;
  tri   [127:0] data_in;
  tri   shift_enable;
  tri   load_enable;
  tri   [31:0] data_out;

  flexbyte_pts_sr pts ( .clk(clk), .n_rst(n_rst), .shift_enable(shift_enable), 
        .load_enable(load_enable), .data_in(data_in), .data_out(data_out) );
endmodule

