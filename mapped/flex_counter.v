/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Wed Apr 25 21:58:57 2018
/////////////////////////////////////////////////////////////


module flex_counter ( clk, n_rst, clear, count_enable, rollover_val, count_out, 
        rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   N15, N16, N17, N18, N19, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66;

  DFFSR \count_out_reg[0]  ( .D(N15), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \count_out_reg[1]  ( .D(N16), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[2]  ( .D(N17), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR rollover_flag_reg ( .D(N19), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \count_out_reg[3]  ( .D(N18), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  NOR2X1 U37 ( .A(n35), .B(n36), .Y(N19) );
  NAND2X1 U38 ( .A(n37), .B(n38), .Y(n36) );
  XOR2X1 U39 ( .A(n39), .B(rollover_val[2]), .Y(n38) );
  XNOR2X1 U40 ( .A(rollover_val[1]), .B(n40), .Y(n37) );
  NAND3X1 U41 ( .A(n41), .B(n42), .C(n43), .Y(n35) );
  XNOR2X1 U42 ( .A(rollover_val[3]), .B(n44), .Y(n43) );
  XNOR2X1 U43 ( .A(rollover_val[0]), .B(n45), .Y(n41) );
  AND2X1 U44 ( .A(n42), .B(n44), .Y(N18) );
  MUX2X1 U45 ( .B(n46), .A(n47), .S(count_enable), .Y(n44) );
  XNOR2X1 U46 ( .A(n48), .B(n49), .Y(n47) );
  NOR2X1 U47 ( .A(n50), .B(n46), .Y(n49) );
  NOR2X1 U48 ( .A(clear), .B(n39), .Y(N17) );
  OAI21X1 U49 ( .A(n51), .B(n52), .C(n53), .Y(n39) );
  OAI21X1 U50 ( .A(n52), .B(n54), .C(n55), .Y(n53) );
  NOR2X1 U51 ( .A(n50), .B(n48), .Y(n51) );
  NOR2X1 U52 ( .A(n54), .B(n55), .Y(n48) );
  AND2X1 U53 ( .A(n42), .B(n40), .Y(N16) );
  MUX2X1 U54 ( .B(n56), .A(n57), .S(count_enable), .Y(n40) );
  OAI21X1 U55 ( .A(n58), .B(n59), .C(n54), .Y(n57) );
  NAND2X1 U56 ( .A(n58), .B(count_out[0]), .Y(n54) );
  AND2X1 U57 ( .A(n60), .B(count_out[0]), .Y(n59) );
  NOR2X1 U58 ( .A(n56), .B(n50), .Y(n58) );
  INVX1 U59 ( .A(count_out[1]), .Y(n56) );
  AND2X1 U60 ( .A(n42), .B(n45), .Y(N15) );
  MUX2X1 U61 ( .B(n52), .A(n61), .S(count_out[0]), .Y(n45) );
  NOR2X1 U62 ( .A(n50), .B(n52), .Y(n61) );
  INVX1 U63 ( .A(n60), .Y(n50) );
  NAND3X1 U64 ( .A(n62), .B(n63), .C(n64), .Y(n60) );
  NOR2X1 U65 ( .A(n65), .B(n66), .Y(n64) );
  XOR2X1 U66 ( .A(rollover_val[1]), .B(count_out[1]), .Y(n66) );
  XOR2X1 U67 ( .A(rollover_val[0]), .B(count_out[0]), .Y(n65) );
  XOR2X1 U68 ( .A(n55), .B(rollover_val[2]), .Y(n63) );
  INVX1 U69 ( .A(count_out[2]), .Y(n55) );
  XOR2X1 U70 ( .A(n46), .B(rollover_val[3]), .Y(n62) );
  INVX1 U71 ( .A(count_out[3]), .Y(n46) );
  INVX1 U72 ( .A(count_enable), .Y(n52) );
  INVX1 U73 ( .A(clear), .Y(n42) );
endmodule

