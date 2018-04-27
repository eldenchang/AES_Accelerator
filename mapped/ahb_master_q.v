/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Fri Apr 27 06:32:15 2018
/////////////////////////////////////////////////////////////


module ahb_master_q_DW01_add_0 ( A, B, CI, SUM, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [31:1] carry;
  assign SUM[4] = B[4];
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

  FAX1 U1_31 ( .A(A[31]), .B(B[31]), .C(carry[31]), .YS(SUM[31]) );
  FAX1 U1_30 ( .A(A[30]), .B(B[30]), .C(carry[30]), .YC(carry[31]), .YS(
        SUM[30]) );
  FAX1 U1_29 ( .A(A[29]), .B(B[29]), .C(carry[29]), .YC(carry[30]), .YS(
        SUM[29]) );
  FAX1 U1_28 ( .A(A[28]), .B(B[28]), .C(carry[28]), .YC(carry[29]), .YS(
        SUM[28]) );
  FAX1 U1_27 ( .A(A[27]), .B(B[27]), .C(carry[27]), .YC(carry[28]), .YS(
        SUM[27]) );
  FAX1 U1_26 ( .A(A[26]), .B(B[26]), .C(carry[26]), .YC(carry[27]), .YS(
        SUM[26]) );
  FAX1 U1_25 ( .A(A[25]), .B(B[25]), .C(carry[25]), .YC(carry[26]), .YS(
        SUM[25]) );
  FAX1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .YC(carry[25]), .YS(
        SUM[24]) );
  FAX1 U1_23 ( .A(A[23]), .B(B[23]), .C(carry[23]), .YC(carry[24]), .YS(
        SUM[23]) );
  FAX1 U1_22 ( .A(A[22]), .B(B[22]), .C(carry[22]), .YC(carry[23]), .YS(
        SUM[22]) );
  FAX1 U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .YC(carry[22]), .YS(
        SUM[21]) );
  FAX1 U1_20 ( .A(A[20]), .B(B[20]), .C(carry[20]), .YC(carry[21]), .YS(
        SUM[20]) );
  FAX1 U1_19 ( .A(A[19]), .B(B[19]), .C(carry[19]), .YC(carry[20]), .YS(
        SUM[19]) );
  FAX1 U1_18 ( .A(A[18]), .B(B[18]), .C(carry[18]), .YC(carry[19]), .YS(
        SUM[18]) );
  FAX1 U1_17 ( .A(A[17]), .B(B[17]), .C(carry[17]), .YC(carry[18]), .YS(
        SUM[17]) );
  FAX1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .YC(carry[17]), .YS(
        SUM[16]) );
  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YC(carry[16]), .YS(
        SUM[15]) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(n1), .YC(carry[7]), .YS(SUM[6]) );
  AND2X2 U1 ( .A(B[5]), .B(A[5]), .Y(n1) );
  XOR2X1 U2 ( .A(B[5]), .B(A[5]), .Y(SUM[5]) );
endmodule


module ahb_master_q_DW01_add_1 ( A, B, CI, SUM, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , \carry[4] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28;
  assign SUM[1] = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(n13), .YC(\carry[4] ), .YS(SUM[3]) );
  AND2X2 U1 ( .A(n16), .B(A[28]), .Y(n1) );
  AND2X2 U2 ( .A(n17), .B(A[26]), .Y(n2) );
  AND2X2 U3 ( .A(n18), .B(A[24]), .Y(n3) );
  AND2X2 U4 ( .A(n19), .B(A[22]), .Y(n4) );
  AND2X2 U5 ( .A(n20), .B(A[20]), .Y(n5) );
  AND2X2 U6 ( .A(n21), .B(A[18]), .Y(n6) );
  AND2X2 U7 ( .A(n22), .B(A[16]), .Y(n7) );
  AND2X2 U8 ( .A(n23), .B(A[14]), .Y(n8) );
  AND2X2 U9 ( .A(n24), .B(A[12]), .Y(n9) );
  AND2X2 U10 ( .A(n25), .B(A[10]), .Y(n10) );
  AND2X2 U11 ( .A(n26), .B(A[8]), .Y(n11) );
  AND2X2 U12 ( .A(n27), .B(A[6]), .Y(n12) );
  AND2X2 U13 ( .A(B[2]), .B(A[2]), .Y(n13) );
  AND2X2 U14 ( .A(\carry[4] ), .B(A[4]), .Y(n14) );
  AND2X2 U15 ( .A(n1), .B(A[29]), .Y(n15) );
  AND2X2 U16 ( .A(n2), .B(A[27]), .Y(n16) );
  AND2X2 U17 ( .A(n3), .B(A[25]), .Y(n17) );
  AND2X2 U18 ( .A(n4), .B(A[23]), .Y(n18) );
  AND2X2 U19 ( .A(n5), .B(A[21]), .Y(n19) );
  AND2X2 U20 ( .A(n6), .B(A[19]), .Y(n20) );
  AND2X2 U21 ( .A(n7), .B(A[17]), .Y(n21) );
  AND2X2 U22 ( .A(n8), .B(A[15]), .Y(n22) );
  AND2X2 U23 ( .A(n9), .B(A[13]), .Y(n23) );
  AND2X2 U24 ( .A(n10), .B(A[11]), .Y(n24) );
  AND2X2 U25 ( .A(n11), .B(A[9]), .Y(n25) );
  AND2X2 U26 ( .A(n12), .B(A[7]), .Y(n26) );
  AND2X2 U27 ( .A(n14), .B(A[5]), .Y(n27) );
  AND2X2 U28 ( .A(n15), .B(A[30]), .Y(n28) );
  XOR2X1 U29 ( .A(A[31]), .B(n28), .Y(SUM[31]) );
  XOR2X1 U30 ( .A(n15), .B(A[30]), .Y(SUM[30]) );
  XOR2X1 U31 ( .A(n1), .B(A[29]), .Y(SUM[29]) );
  XOR2X1 U32 ( .A(n16), .B(A[28]), .Y(SUM[28]) );
  XOR2X1 U33 ( .A(n2), .B(A[27]), .Y(SUM[27]) );
  XOR2X1 U34 ( .A(n17), .B(A[26]), .Y(SUM[26]) );
  XOR2X1 U35 ( .A(n3), .B(A[25]), .Y(SUM[25]) );
  XOR2X1 U36 ( .A(n18), .B(A[24]), .Y(SUM[24]) );
  XOR2X1 U37 ( .A(n4), .B(A[23]), .Y(SUM[23]) );
  XOR2X1 U38 ( .A(n19), .B(A[22]), .Y(SUM[22]) );
  XOR2X1 U39 ( .A(n5), .B(A[21]), .Y(SUM[21]) );
  XOR2X1 U40 ( .A(n20), .B(A[20]), .Y(SUM[20]) );
  XOR2X1 U41 ( .A(n6), .B(A[19]), .Y(SUM[19]) );
  XOR2X1 U42 ( .A(n21), .B(A[18]), .Y(SUM[18]) );
  XOR2X1 U43 ( .A(n7), .B(A[17]), .Y(SUM[17]) );
  XOR2X1 U44 ( .A(n22), .B(A[16]), .Y(SUM[16]) );
  XOR2X1 U45 ( .A(n8), .B(A[15]), .Y(SUM[15]) );
  XOR2X1 U46 ( .A(n23), .B(A[14]), .Y(SUM[14]) );
  XOR2X1 U47 ( .A(n9), .B(A[13]), .Y(SUM[13]) );
  XOR2X1 U48 ( .A(n24), .B(A[12]), .Y(SUM[12]) );
  XOR2X1 U49 ( .A(n10), .B(A[11]), .Y(SUM[11]) );
  XOR2X1 U50 ( .A(n25), .B(A[10]), .Y(SUM[10]) );
  XOR2X1 U51 ( .A(n11), .B(A[9]), .Y(SUM[9]) );
  XOR2X1 U52 ( .A(n26), .B(A[8]), .Y(SUM[8]) );
  XOR2X1 U53 ( .A(n12), .B(A[7]), .Y(SUM[7]) );
  XOR2X1 U54 ( .A(n27), .B(A[6]), .Y(SUM[6]) );
  XOR2X1 U55 ( .A(n14), .B(A[5]), .Y(SUM[5]) );
  XOR2X1 U56 ( .A(\carry[4] ), .B(A[4]), .Y(SUM[4]) );
  XOR2X1 U57 ( .A(B[2]), .B(A[2]), .Y(SUM[2]) );
endmodule


module ahb_master_q ( hclk, hrst, hready, hresp, ahbMode, enable, size, 
        shiftin, raddr, waddr, hrdata, restart_check, haddr, shiftout, 
        shift_en, end_block, hwdata, hwrite, txshift_en );
  input [31:0] size;
  input [31:0] shiftin;
  input [31:0] raddr;
  input [31:0] waddr;
  input [31:0] hrdata;
  output [31:0] haddr;
  output [31:0] shiftout;
  output [31:0] hwdata;
  input hclk, hrst, hready, hresp, ahbMode, enable, restart_check;
  output shift_en, end_block, hwrite, txshift_en;
  wire   N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47,
         N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61,
         N62, N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75,
         N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89,
         N90, N91, N92, N93, N94, N95, N96, N97, n238, n239, n240, n241, n242,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353;
  wire   [2:0] state;
  wire   [1:0] count;
  assign shiftout[31] = hrdata[31];
  assign shiftout[30] = hrdata[30];
  assign shiftout[29] = hrdata[29];
  assign shiftout[28] = hrdata[28];
  assign shiftout[27] = hrdata[27];
  assign shiftout[26] = hrdata[26];
  assign shiftout[25] = hrdata[25];
  assign shiftout[24] = hrdata[24];
  assign shiftout[23] = hrdata[23];
  assign shiftout[22] = hrdata[22];
  assign shiftout[21] = hrdata[21];
  assign shiftout[20] = hrdata[20];
  assign shiftout[19] = hrdata[19];
  assign shiftout[18] = hrdata[18];
  assign shiftout[17] = hrdata[17];
  assign shiftout[16] = hrdata[16];
  assign shiftout[15] = hrdata[15];
  assign shiftout[14] = hrdata[14];
  assign shiftout[13] = hrdata[13];
  assign shiftout[12] = hrdata[12];
  assign shiftout[11] = hrdata[11];
  assign shiftout[10] = hrdata[10];
  assign shiftout[9] = hrdata[9];
  assign shiftout[8] = hrdata[8];
  assign shiftout[7] = hrdata[7];
  assign shiftout[6] = hrdata[6];
  assign shiftout[5] = hrdata[5];
  assign shiftout[4] = hrdata[4];
  assign shiftout[3] = hrdata[3];
  assign shiftout[2] = hrdata[2];
  assign shiftout[1] = hrdata[1];
  assign shiftout[0] = hrdata[0];
  assign end_block = 1'b0;
  assign hwdata[31] = shiftin[31];
  assign hwdata[30] = shiftin[30];
  assign hwdata[29] = shiftin[29];
  assign hwdata[28] = shiftin[28];
  assign hwdata[27] = shiftin[27];
  assign hwdata[26] = shiftin[26];
  assign hwdata[25] = shiftin[25];
  assign hwdata[24] = shiftin[24];
  assign hwdata[23] = shiftin[23];
  assign hwdata[22] = shiftin[22];
  assign hwdata[21] = shiftin[21];
  assign hwdata[20] = shiftin[20];
  assign hwdata[19] = shiftin[19];
  assign hwdata[18] = shiftin[18];
  assign hwdata[17] = shiftin[17];
  assign hwdata[16] = shiftin[16];
  assign hwdata[15] = shiftin[15];
  assign hwdata[14] = shiftin[14];
  assign hwdata[13] = shiftin[13];
  assign hwdata[12] = shiftin[12];
  assign hwdata[11] = shiftin[11];
  assign hwdata[10] = shiftin[10];
  assign hwdata[9] = shiftin[9];
  assign hwdata[8] = shiftin[8];
  assign hwdata[7] = shiftin[7];
  assign hwdata[6] = shiftin[6];
  assign hwdata[5] = shiftin[5];
  assign hwdata[4] = shiftin[4];
  assign hwdata[3] = shiftin[3];
  assign hwdata[2] = shiftin[2];
  assign hwdata[1] = shiftin[1];
  assign hwdata[0] = shiftin[0];

  DFFSR \state_reg[0]  ( .D(n242), .CLK(hclk), .R(hrst), .S(1'b1), .Q(state[0]) );
  DFFSR \state_reg[1]  ( .D(n240), .CLK(hclk), .R(hrst), .S(1'b1), .Q(state[1]) );
  DFFSR \state_reg[2]  ( .D(n241), .CLK(hclk), .R(hrst), .S(1'b1), .Q(state[2]) );
  DFFSR \count_reg[0]  ( .D(n239), .CLK(hclk), .R(hrst), .S(1'b1), .Q(count[0]) );
  DFFSR \count_reg[1]  ( .D(n238), .CLK(hclk), .R(hrst), .S(1'b1), .Q(count[1]) );
  ahb_master_q_DW01_add_0 r356 ( .A({n254, n254, n254, n254, n256, n255, n256, 
        n255, n256, n255, n256, n255, n256, n255, n256, n255, n256, n255, n254, 
        n254, n254, n254, n254, n254, n254, n254, n256, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .B({N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, 
        N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, 
        N39, N38, N37, N36, N35, N34}), .CI(1'b0), .SUM({N97, N96, N95, N94, 
        N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, 
        N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66})
         );
  ahb_master_q_DW01_add_1 r352 ( .A({n322, n323, n324, n325, n326, n327, n328, 
        n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, 
        n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, 
        n353}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, count, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, 
        N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, 
        N38, N37, N36, N35, N34}) );
  INVX4 U256 ( .A(n292), .Y(n254) );
  INVX4 U257 ( .A(n292), .Y(n255) );
  INVX4 U258 ( .A(n292), .Y(n256) );
  AND2X2 U259 ( .A(n309), .B(n314), .Y(n321) );
  INVX4 U260 ( .A(n258), .Y(n260) );
  NOR2X1 U261 ( .A(n257), .B(n258), .Y(shift_en) );
  INVX1 U262 ( .A(n259), .Y(n322) );
  AOI22X1 U263 ( .A(raddr[31]), .B(n260), .C(waddr[31]), .D(n255), .Y(n259) );
  INVX1 U264 ( .A(n261), .Y(n323) );
  AOI22X1 U265 ( .A(raddr[30]), .B(n260), .C(waddr[30]), .D(n256), .Y(n261) );
  INVX1 U266 ( .A(n262), .Y(n324) );
  AOI22X1 U267 ( .A(raddr[29]), .B(n260), .C(waddr[29]), .D(n255), .Y(n262) );
  INVX1 U268 ( .A(n263), .Y(n325) );
  AOI22X1 U269 ( .A(raddr[28]), .B(n260), .C(waddr[28]), .D(n256), .Y(n263) );
  INVX1 U270 ( .A(n264), .Y(n326) );
  AOI22X1 U271 ( .A(raddr[27]), .B(n260), .C(waddr[27]), .D(n255), .Y(n264) );
  INVX1 U272 ( .A(n265), .Y(n327) );
  AOI22X1 U273 ( .A(raddr[26]), .B(n260), .C(waddr[26]), .D(n256), .Y(n265) );
  INVX1 U274 ( .A(n266), .Y(n328) );
  AOI22X1 U275 ( .A(raddr[25]), .B(n260), .C(waddr[25]), .D(n255), .Y(n266) );
  INVX1 U276 ( .A(n267), .Y(n329) );
  AOI22X1 U277 ( .A(raddr[24]), .B(n260), .C(waddr[24]), .D(n256), .Y(n267) );
  INVX1 U278 ( .A(n268), .Y(n330) );
  AOI22X1 U279 ( .A(raddr[23]), .B(n260), .C(waddr[23]), .D(n255), .Y(n268) );
  INVX1 U280 ( .A(n269), .Y(n331) );
  AOI22X1 U281 ( .A(raddr[22]), .B(n260), .C(waddr[22]), .D(n256), .Y(n269) );
  INVX1 U282 ( .A(n270), .Y(n332) );
  AOI22X1 U283 ( .A(raddr[21]), .B(n260), .C(waddr[21]), .D(n255), .Y(n270) );
  INVX1 U284 ( .A(n271), .Y(n333) );
  AOI22X1 U285 ( .A(raddr[20]), .B(n260), .C(waddr[20]), .D(n256), .Y(n271) );
  INVX1 U286 ( .A(n272), .Y(n334) );
  AOI22X1 U287 ( .A(raddr[19]), .B(n260), .C(waddr[19]), .D(n255), .Y(n272) );
  INVX1 U288 ( .A(n273), .Y(n335) );
  AOI22X1 U289 ( .A(raddr[18]), .B(n260), .C(waddr[18]), .D(n256), .Y(n273) );
  INVX1 U290 ( .A(n274), .Y(n336) );
  AOI22X1 U291 ( .A(raddr[17]), .B(n260), .C(waddr[17]), .D(n255), .Y(n274) );
  INVX1 U292 ( .A(n275), .Y(n337) );
  AOI22X1 U293 ( .A(raddr[16]), .B(n260), .C(waddr[16]), .D(n256), .Y(n275) );
  INVX1 U294 ( .A(n276), .Y(n338) );
  AOI22X1 U295 ( .A(raddr[15]), .B(n260), .C(waddr[15]), .D(n255), .Y(n276) );
  INVX1 U296 ( .A(n277), .Y(n339) );
  AOI22X1 U297 ( .A(raddr[14]), .B(n260), .C(waddr[14]), .D(n256), .Y(n277) );
  INVX1 U298 ( .A(n278), .Y(n340) );
  AOI22X1 U299 ( .A(raddr[13]), .B(n260), .C(waddr[13]), .D(n255), .Y(n278) );
  INVX1 U300 ( .A(n279), .Y(n341) );
  AOI22X1 U301 ( .A(raddr[12]), .B(n260), .C(waddr[12]), .D(n256), .Y(n279) );
  INVX1 U302 ( .A(n280), .Y(n342) );
  AOI22X1 U303 ( .A(raddr[11]), .B(n260), .C(waddr[11]), .D(n255), .Y(n280) );
  INVX1 U304 ( .A(n281), .Y(n343) );
  AOI22X1 U305 ( .A(raddr[10]), .B(n260), .C(waddr[10]), .D(n256), .Y(n281) );
  INVX1 U306 ( .A(n282), .Y(n344) );
  AOI22X1 U307 ( .A(raddr[9]), .B(n260), .C(waddr[9]), .D(n255), .Y(n282) );
  INVX1 U308 ( .A(n283), .Y(n345) );
  AOI22X1 U309 ( .A(raddr[8]), .B(n260), .C(waddr[8]), .D(n256), .Y(n283) );
  INVX1 U310 ( .A(n284), .Y(n346) );
  AOI22X1 U311 ( .A(raddr[7]), .B(n260), .C(waddr[7]), .D(n255), .Y(n284) );
  INVX1 U312 ( .A(n285), .Y(n347) );
  AOI22X1 U313 ( .A(raddr[6]), .B(n260), .C(waddr[6]), .D(n256), .Y(n285) );
  INVX1 U314 ( .A(n286), .Y(n348) );
  AOI22X1 U315 ( .A(raddr[5]), .B(n260), .C(waddr[5]), .D(n255), .Y(n286) );
  INVX1 U316 ( .A(n287), .Y(n349) );
  AOI22X1 U317 ( .A(raddr[4]), .B(n260), .C(waddr[4]), .D(n256), .Y(n287) );
  INVX1 U318 ( .A(n288), .Y(n350) );
  AOI22X1 U319 ( .A(raddr[3]), .B(n260), .C(waddr[3]), .D(n255), .Y(n288) );
  INVX1 U320 ( .A(n289), .Y(n351) );
  AOI22X1 U321 ( .A(raddr[2]), .B(n260), .C(waddr[2]), .D(n256), .Y(n289) );
  INVX1 U322 ( .A(n290), .Y(n352) );
  AOI22X1 U323 ( .A(raddr[1]), .B(n260), .C(waddr[1]), .D(n255), .Y(n290) );
  INVX1 U324 ( .A(n291), .Y(n353) );
  AOI22X1 U325 ( .A(raddr[0]), .B(n260), .C(waddr[0]), .D(n256), .Y(n291) );
  NOR2X1 U326 ( .A(n293), .B(n294), .Y(n242) );
  AOI21X1 U327 ( .A(state[0]), .B(n295), .C(n296), .Y(n294) );
  INVX1 U328 ( .A(n297), .Y(n296) );
  AOI22X1 U329 ( .A(n298), .B(ahbMode), .C(n299), .D(n300), .Y(n297) );
  OAI21X1 U330 ( .A(n301), .B(n257), .C(n299), .Y(n295) );
  OAI21X1 U331 ( .A(n302), .B(n303), .C(n304), .Y(n241) );
  OAI21X1 U332 ( .A(n257), .B(n305), .C(state[2]), .Y(n304) );
  NAND2X1 U333 ( .A(n306), .B(n301), .Y(n305) );
  NAND2X1 U334 ( .A(state[1]), .B(hready), .Y(n303) );
  INVX1 U335 ( .A(hresp), .Y(n302) );
  AOI21X1 U336 ( .A(n307), .B(n308), .C(n293), .Y(n240) );
  AOI21X1 U337 ( .A(hready), .B(enable), .C(n307), .Y(n293) );
  OAI21X1 U338 ( .A(n309), .B(state[2]), .C(state[1]), .Y(n308) );
  MUX2X1 U339 ( .B(n310), .A(n311), .S(n312), .Y(n239) );
  NAND2X1 U340 ( .A(n313), .B(n314), .Y(n311) );
  INVX1 U341 ( .A(n315), .Y(n310) );
  MUX2X1 U342 ( .B(n316), .A(n317), .S(count[1]), .Y(n238) );
  AOI21X1 U343 ( .A(n314), .B(n312), .C(n315), .Y(n317) );
  OAI21X1 U344 ( .A(n298), .B(n314), .C(n313), .Y(n315) );
  INVX1 U345 ( .A(count[0]), .Y(n312) );
  NAND3X1 U346 ( .A(n313), .B(n314), .C(count[0]), .Y(n316) );
  OAI21X1 U347 ( .A(n300), .B(n314), .C(n257), .Y(n313) );
  OAI21X1 U348 ( .A(n318), .B(n319), .C(n320), .Y(hwrite) );
  INVX1 U349 ( .A(txshift_en), .Y(n320) );
  NOR2X1 U350 ( .A(n257), .B(n292), .Y(txshift_en) );
  INVX1 U351 ( .A(n309), .Y(n257) );
  NAND2X1 U352 ( .A(ahbMode), .B(n298), .Y(n319) );
  INVX1 U353 ( .A(n307), .Y(n298) );
  NAND3X1 U354 ( .A(n301), .B(n299), .C(n306), .Y(n307) );
  INVX1 U355 ( .A(state[1]), .Y(n301) );
  NAND2X1 U356 ( .A(enable), .B(hready), .Y(n318) );
  AND2X1 U357 ( .A(N75), .B(n321), .Y(haddr[9]) );
  AND2X1 U358 ( .A(N74), .B(n321), .Y(haddr[8]) );
  AND2X1 U359 ( .A(N73), .B(n321), .Y(haddr[7]) );
  AND2X1 U360 ( .A(N72), .B(n321), .Y(haddr[6]) );
  AND2X1 U361 ( .A(N71), .B(n321), .Y(haddr[5]) );
  AND2X1 U362 ( .A(N70), .B(n321), .Y(haddr[4]) );
  AND2X1 U363 ( .A(N69), .B(n321), .Y(haddr[3]) );
  AND2X1 U364 ( .A(N97), .B(n321), .Y(haddr[31]) );
  AND2X1 U365 ( .A(N96), .B(n321), .Y(haddr[30]) );
  AND2X1 U366 ( .A(N68), .B(n321), .Y(haddr[2]) );
  AND2X1 U367 ( .A(N95), .B(n321), .Y(haddr[29]) );
  AND2X1 U368 ( .A(N94), .B(n321), .Y(haddr[28]) );
  AND2X1 U369 ( .A(N93), .B(n321), .Y(haddr[27]) );
  AND2X1 U370 ( .A(N92), .B(n321), .Y(haddr[26]) );
  AND2X1 U371 ( .A(N91), .B(n321), .Y(haddr[25]) );
  AND2X1 U372 ( .A(N90), .B(n321), .Y(haddr[24]) );
  AND2X1 U373 ( .A(N89), .B(n321), .Y(haddr[23]) );
  AND2X1 U374 ( .A(N88), .B(n321), .Y(haddr[22]) );
  AND2X1 U375 ( .A(N87), .B(n321), .Y(haddr[21]) );
  AND2X1 U376 ( .A(N86), .B(n321), .Y(haddr[20]) );
  AND2X1 U377 ( .A(N67), .B(n321), .Y(haddr[1]) );
  AND2X1 U378 ( .A(N85), .B(n321), .Y(haddr[19]) );
  AND2X1 U379 ( .A(N84), .B(n321), .Y(haddr[18]) );
  AND2X1 U380 ( .A(N83), .B(n321), .Y(haddr[17]) );
  AND2X1 U381 ( .A(N82), .B(n321), .Y(haddr[16]) );
  AND2X1 U382 ( .A(N81), .B(n321), .Y(haddr[15]) );
  AND2X1 U383 ( .A(N80), .B(n321), .Y(haddr[14]) );
  AND2X1 U384 ( .A(N79), .B(n321), .Y(haddr[13]) );
  AND2X1 U385 ( .A(N78), .B(n321), .Y(haddr[12]) );
  AND2X1 U386 ( .A(N77), .B(n321), .Y(haddr[11]) );
  AND2X1 U387 ( .A(N76), .B(n321), .Y(haddr[10]) );
  AND2X1 U388 ( .A(N66), .B(n321), .Y(haddr[0]) );
  NAND2X1 U389 ( .A(n292), .B(n258), .Y(n314) );
  NAND3X1 U390 ( .A(n306), .B(n299), .C(state[1]), .Y(n258) );
  INVX1 U391 ( .A(state[0]), .Y(n306) );
  NAND3X1 U392 ( .A(state[0]), .B(n299), .C(state[1]), .Y(n292) );
  INVX1 U393 ( .A(state[2]), .Y(n299) );
  NOR2X1 U394 ( .A(n300), .B(hresp), .Y(n309) );
  INVX1 U395 ( .A(hready), .Y(n300) );
endmodule

