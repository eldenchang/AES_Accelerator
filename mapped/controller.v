/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Fri Apr 27 06:23:30 2018
/////////////////////////////////////////////////////////////


module flex_counter ( clk, n_rst, clear, count_enable, rollover_val, count_out, 
        rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   N15, N16, N17, N18, N19, n1, n2, n3, n4, n5, n6, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37;

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
  NOR2X1 U8 ( .A(n1), .B(n2), .Y(N19) );
  NAND2X1 U9 ( .A(n3), .B(n4), .Y(n2) );
  XOR2X1 U10 ( .A(n5), .B(rollover_val[2]), .Y(n4) );
  XNOR2X1 U11 ( .A(rollover_val[1]), .B(n6), .Y(n3) );
  NAND3X1 U12 ( .A(n12), .B(n13), .C(n14), .Y(n1) );
  XNOR2X1 U13 ( .A(rollover_val[3]), .B(n15), .Y(n14) );
  XNOR2X1 U14 ( .A(rollover_val[0]), .B(n16), .Y(n12) );
  AND2X1 U15 ( .A(n13), .B(n15), .Y(N18) );
  MUX2X1 U16 ( .B(n17), .A(n18), .S(count_enable), .Y(n15) );
  XNOR2X1 U17 ( .A(n19), .B(n20), .Y(n18) );
  NOR2X1 U18 ( .A(n21), .B(n17), .Y(n20) );
  NOR2X1 U19 ( .A(clear), .B(n5), .Y(N17) );
  OAI21X1 U20 ( .A(n22), .B(n23), .C(n24), .Y(n5) );
  OAI21X1 U21 ( .A(n23), .B(n25), .C(n26), .Y(n24) );
  NOR2X1 U22 ( .A(n21), .B(n19), .Y(n22) );
  NOR2X1 U23 ( .A(n25), .B(n26), .Y(n19) );
  AND2X1 U24 ( .A(n13), .B(n6), .Y(N16) );
  MUX2X1 U25 ( .B(n27), .A(n28), .S(count_enable), .Y(n6) );
  OAI21X1 U26 ( .A(n29), .B(n30), .C(n25), .Y(n28) );
  NAND2X1 U27 ( .A(n29), .B(count_out[0]), .Y(n25) );
  AND2X1 U28 ( .A(n31), .B(count_out[0]), .Y(n30) );
  NOR2X1 U29 ( .A(n27), .B(n21), .Y(n29) );
  INVX1 U30 ( .A(count_out[1]), .Y(n27) );
  AND2X1 U31 ( .A(n13), .B(n16), .Y(N15) );
  MUX2X1 U32 ( .B(n23), .A(n32), .S(count_out[0]), .Y(n16) );
  NOR2X1 U33 ( .A(n21), .B(n23), .Y(n32) );
  INVX1 U34 ( .A(n31), .Y(n21) );
  NAND3X1 U35 ( .A(n33), .B(n34), .C(n35), .Y(n31) );
  NOR2X1 U36 ( .A(n36), .B(n37), .Y(n35) );
  XOR2X1 U37 ( .A(rollover_val[1]), .B(count_out[1]), .Y(n37) );
  XOR2X1 U38 ( .A(rollover_val[0]), .B(count_out[0]), .Y(n36) );
  XOR2X1 U39 ( .A(n26), .B(rollover_val[2]), .Y(n34) );
  INVX1 U40 ( .A(count_out[2]), .Y(n26) );
  XOR2X1 U41 ( .A(n17), .B(rollover_val[3]), .Y(n33) );
  INVX1 U42 ( .A(count_out[3]), .Y(n17) );
  INVX1 U43 ( .A(count_enable), .Y(n23) );
  INVX1 U44 ( .A(clear), .Y(n13) );
endmodule


module controller ( clk, n_rst, start, change_key, chg_key_done, enc_done, 
        last_round, change_key_start, aes_enable, ahb_mode, ahb_shift_en, 
        restart_check );
  input clk, n_rst, start, change_key, chg_key_done, enc_done, last_round;
  output change_key_start, aes_enable, ahb_mode, ahb_shift_en, restart_check;
  wire   \roll_over_val[3] , roll_over_val_0, rst_switch_state, roll_over, N63,
         N64, N69, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107;
  wire   [3:0] state;
  wire   [3:0] n_state;

  DFFSR \state_reg[3]  ( .D(n_state[3]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        state[3]) );
  DFFSR \state_reg[2]  ( .D(n_state[2]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        state[2]) );
  DFFSR \state_reg[1]  ( .D(n_state[1]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        state[1]) );
  DFFSR \state_reg[0]  ( .D(n_state[0]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        state[0]) );
  flex_counter counter ( .clk(clk), .n_rst(n_rst), .clear(rst_switch_state), 
        .count_enable(1'b1), .rollover_val({\roll_over_val[3] , 
        roll_over_val_0, 1'b1, roll_over_val_0}), .rollover_flag(roll_over) );
  AOI22X1 U78 ( .A(n106), .B(n85), .C(N69), .D(state[2]), .Y(n65) );
  NAND2X1 U79 ( .A(n65), .B(n91), .Y(n73) );
  NOR2X1 U80 ( .A(n85), .B(enc_done), .Y(n72) );
  OAI21X1 U81 ( .A(n72), .B(state[3]), .C(n92), .Y(n66) );
  AOI21X1 U82 ( .A(state[1]), .B(n73), .C(n86), .Y(n71) );
  NAND2X1 U83 ( .A(N63), .B(n92), .Y(n67) );
  OAI21X1 U84 ( .A(n106), .B(n92), .C(n67), .Y(n69) );
  NOR2X1 U85 ( .A(state[3]), .B(state[0]), .Y(n68) );
  OAI21X1 U86 ( .A(state[2]), .B(n69), .C(n68), .Y(n70) );
  OAI21X1 U87 ( .A(n84), .B(n71), .C(n70), .Y(n_state[0]) );
  NAND2X1 U88 ( .A(n92), .B(n91), .Y(n76) );
  OR2X1 U89 ( .A(n72), .B(n84), .Y(n75) );
  OAI21X1 U90 ( .A(n73), .B(n84), .C(state[1]), .Y(n74) );
  OAI21X1 U91 ( .A(n76), .B(n75), .C(n74), .Y(n_state[1]) );
  NOR2X1 U92 ( .A(n106), .B(state[3]), .Y(n77) );
  NAND3X1 U93 ( .A(state[0]), .B(state[1]), .C(n77), .Y(n78) );
  XNOR2X1 U94 ( .A(state[2]), .B(n78), .Y(n_state[2]) );
  NAND3X1 U95 ( .A(n85), .B(n91), .C(n84), .Y(n83) );
  NAND2X1 U96 ( .A(N64), .B(n92), .Y(n82) );
  NAND2X1 U97 ( .A(n92), .B(n84), .Y(n80) );
  OR2X1 U98 ( .A(n107), .B(state[2]), .Y(n79) );
  OAI21X1 U99 ( .A(n80), .B(n79), .C(state[3]), .Y(n81) );
  OAI21X1 U100 ( .A(n83), .B(n82), .C(n81), .Y(n_state[3]) );
  INVX2 U101 ( .A(state[0]), .Y(n84) );
  INVX2 U102 ( .A(state[2]), .Y(n85) );
  INVX2 U103 ( .A(n66), .Y(n86) );
  INVX1 U104 ( .A(n87), .Y(rst_switch_state) );
  NOR2X1 U105 ( .A(n88), .B(n89), .Y(roll_over_val_0) );
  NAND2X1 U106 ( .A(n90), .B(n91), .Y(n89) );
  NAND2X1 U107 ( .A(state[0]), .B(n87), .Y(\roll_over_val[3] ) );
  NOR2X1 U108 ( .A(n92), .B(n93), .Y(n87) );
  OAI21X1 U109 ( .A(n94), .B(n95), .C(n96), .Y(n93) );
  NOR2X1 U110 ( .A(n90), .B(n97), .Y(restart_check) );
  NAND2X1 U111 ( .A(n88), .B(n91), .Y(n97) );
  INVX1 U112 ( .A(n98), .Y(n90) );
  INVX1 U113 ( .A(roll_over), .Y(n106) );
  INVX1 U114 ( .A(chg_key_done), .Y(n107) );
  NOR2X1 U115 ( .A(n92), .B(n99), .Y(ahb_mode) );
  NAND2X1 U116 ( .A(n94), .B(n84), .Y(n99) );
  NOR2X1 U117 ( .A(n91), .B(n100), .Y(change_key_start) );
  NAND2X1 U118 ( .A(n88), .B(n98), .Y(n100) );
  AOI22X1 U119 ( .A(state[0]), .B(state[1]), .C(n101), .D(state[2]), .Y(n98)
         );
  XNOR2X1 U120 ( .A(state[2]), .B(n101), .Y(n88) );
  XOR2X1 U121 ( .A(n84), .B(n92), .Y(n101) );
  INVX1 U122 ( .A(n96), .Y(ahb_shift_en) );
  MUX2X1 U123 ( .B(n94), .A(n102), .S(state[0]), .Y(n96) );
  AND2X1 U124 ( .A(n92), .B(n95), .Y(n102) );
  INVX1 U125 ( .A(state[1]), .Y(n92) );
  INVX1 U126 ( .A(n103), .Y(n94) );
  MUX2X1 U127 ( .B(n103), .A(n104), .S(state[1]), .Y(aes_enable) );
  NAND2X1 U128 ( .A(state[0]), .B(n95), .Y(n104) );
  NOR2X1 U129 ( .A(state[2]), .B(state[3]), .Y(n95) );
  NAND2X1 U130 ( .A(state[2]), .B(n91), .Y(n103) );
  INVX1 U131 ( .A(state[3]), .Y(n91) );
  NAND2X1 U132 ( .A(last_round), .B(roll_over), .Y(N69) );
  AND2X1 U133 ( .A(change_key), .B(start), .Y(N64) );
  NOR2X1 U134 ( .A(change_key), .B(n105), .Y(N63) );
  INVX1 U135 ( .A(start), .Y(n105) );
endmodule

