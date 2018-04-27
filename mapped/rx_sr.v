/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Thu Apr 26 21:28:47 2018
/////////////////////////////////////////////////////////////


module flexbyte_stp_sr_NUM_BYTES_IN4_NUM_BYTES_OUT16 ( clk, n_rst, 
        shift_enable, data_in, data_out );
  input [31:0] data_in;
  output [127:0] data_out;
  input clk, n_rst, shift_enable;
  wire   n163, n165, n167, n169, n171, n173, n175, n177, n179, n181, n183,
         n185, n187, n189, n191, n193, n195, n197, n199, n201, n203, n205,
         n207, n209, n211, n213, n215, n217, n219, n221, n223, n225, n227,
         n229, n231, n233, n235, n237, n239, n241, n243, n245, n247, n249,
         n251, n253, n255, n257, n259, n261, n263, n265, n267, n269, n271,
         n273, n275, n277, n279, n281, n283, n285, n287, n289, n291, n293,
         n295, n297, n299, n301, n303, n305, n307, n309, n311, n313, n315,
         n317, n319, n321, n323, n325, n327, n329, n331, n333, n335, n337,
         n339, n341, n343, n345, n347, n349, n351, n353, n355, n357, n359,
         n361, n363, n365, n367, n369, n371, n373, n375, n377, n379, n381,
         n383, n385, n387, n389, n391, n393, n395, n397, n399, n401, n403,
         n405, n407, n409, n411, n413, n415, n417, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128;

  DFFSR \ff_q_reg[31]  ( .D(n417), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[31]) );
  DFFSR \ff_q_reg[63]  ( .D(n415), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[63]) );
  DFFSR \ff_q_reg[95]  ( .D(n413), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[95]) );
  DFFSR \ff_q_reg[127]  ( .D(n411), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[127]) );
  DFFSR \ff_q_reg[30]  ( .D(n409), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[30]) );
  DFFSR \ff_q_reg[62]  ( .D(n407), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[62]) );
  DFFSR \ff_q_reg[94]  ( .D(n405), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[94]) );
  DFFSR \ff_q_reg[126]  ( .D(n403), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[126]) );
  DFFSR \ff_q_reg[29]  ( .D(n401), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[29]) );
  DFFSR \ff_q_reg[61]  ( .D(n399), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[61]) );
  DFFSR \ff_q_reg[93]  ( .D(n397), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[93]) );
  DFFSR \ff_q_reg[125]  ( .D(n395), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[125]) );
  DFFSR \ff_q_reg[28]  ( .D(n393), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[28]) );
  DFFSR \ff_q_reg[60]  ( .D(n391), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[60]) );
  DFFSR \ff_q_reg[92]  ( .D(n389), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[92]) );
  DFFSR \ff_q_reg[124]  ( .D(n387), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[124]) );
  DFFSR \ff_q_reg[27]  ( .D(n385), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[27]) );
  DFFSR \ff_q_reg[59]  ( .D(n383), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[59]) );
  DFFSR \ff_q_reg[91]  ( .D(n381), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[91]) );
  DFFSR \ff_q_reg[123]  ( .D(n379), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[123]) );
  DFFSR \ff_q_reg[26]  ( .D(n377), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[26]) );
  DFFSR \ff_q_reg[58]  ( .D(n375), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[58]) );
  DFFSR \ff_q_reg[90]  ( .D(n373), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[90]) );
  DFFSR \ff_q_reg[122]  ( .D(n371), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[122]) );
  DFFSR \ff_q_reg[25]  ( .D(n369), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[25]) );
  DFFSR \ff_q_reg[57]  ( .D(n367), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[57]) );
  DFFSR \ff_q_reg[89]  ( .D(n365), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[89]) );
  DFFSR \ff_q_reg[121]  ( .D(n363), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[121]) );
  DFFSR \ff_q_reg[24]  ( .D(n361), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[24]) );
  DFFSR \ff_q_reg[56]  ( .D(n359), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[56]) );
  DFFSR \ff_q_reg[88]  ( .D(n357), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[88]) );
  DFFSR \ff_q_reg[120]  ( .D(n355), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[120]) );
  DFFSR \ff_q_reg[23]  ( .D(n353), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[23]) );
  DFFSR \ff_q_reg[55]  ( .D(n351), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[55]) );
  DFFSR \ff_q_reg[87]  ( .D(n349), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[87]) );
  DFFSR \ff_q_reg[119]  ( .D(n347), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[119]) );
  DFFSR \ff_q_reg[22]  ( .D(n345), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[22]) );
  DFFSR \ff_q_reg[54]  ( .D(n343), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[54]) );
  DFFSR \ff_q_reg[86]  ( .D(n341), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[86]) );
  DFFSR \ff_q_reg[118]  ( .D(n339), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[118]) );
  DFFSR \ff_q_reg[21]  ( .D(n337), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[21]) );
  DFFSR \ff_q_reg[53]  ( .D(n335), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[53]) );
  DFFSR \ff_q_reg[85]  ( .D(n333), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[85]) );
  DFFSR \ff_q_reg[117]  ( .D(n331), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[117]) );
  DFFSR \ff_q_reg[20]  ( .D(n329), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[20]) );
  DFFSR \ff_q_reg[52]  ( .D(n327), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[52]) );
  DFFSR \ff_q_reg[84]  ( .D(n325), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[84]) );
  DFFSR \ff_q_reg[116]  ( .D(n323), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[116]) );
  DFFSR \ff_q_reg[19]  ( .D(n321), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[19]) );
  DFFSR \ff_q_reg[51]  ( .D(n319), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[51]) );
  DFFSR \ff_q_reg[83]  ( .D(n317), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[83]) );
  DFFSR \ff_q_reg[115]  ( .D(n315), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[115]) );
  DFFSR \ff_q_reg[18]  ( .D(n313), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[18]) );
  DFFSR \ff_q_reg[50]  ( .D(n311), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[50]) );
  DFFSR \ff_q_reg[82]  ( .D(n309), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[82]) );
  DFFSR \ff_q_reg[114]  ( .D(n307), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[114]) );
  DFFSR \ff_q_reg[17]  ( .D(n305), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[17]) );
  DFFSR \ff_q_reg[49]  ( .D(n303), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[49]) );
  DFFSR \ff_q_reg[81]  ( .D(n301), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[81]) );
  DFFSR \ff_q_reg[113]  ( .D(n299), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[113]) );
  DFFSR \ff_q_reg[16]  ( .D(n297), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[16]) );
  DFFSR \ff_q_reg[48]  ( .D(n295), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[48]) );
  DFFSR \ff_q_reg[80]  ( .D(n293), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[80]) );
  DFFSR \ff_q_reg[112]  ( .D(n291), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[112]) );
  DFFSR \ff_q_reg[15]  ( .D(n289), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[15]) );
  DFFSR \ff_q_reg[47]  ( .D(n287), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[47]) );
  DFFSR \ff_q_reg[79]  ( .D(n285), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[79]) );
  DFFSR \ff_q_reg[111]  ( .D(n283), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[111]) );
  DFFSR \ff_q_reg[14]  ( .D(n281), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[14]) );
  DFFSR \ff_q_reg[46]  ( .D(n279), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[46]) );
  DFFSR \ff_q_reg[78]  ( .D(n277), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[78]) );
  DFFSR \ff_q_reg[110]  ( .D(n275), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[110]) );
  DFFSR \ff_q_reg[13]  ( .D(n273), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[13]) );
  DFFSR \ff_q_reg[45]  ( .D(n271), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[45]) );
  DFFSR \ff_q_reg[77]  ( .D(n269), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[77]) );
  DFFSR \ff_q_reg[109]  ( .D(n267), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[109]) );
  DFFSR \ff_q_reg[12]  ( .D(n265), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[12]) );
  DFFSR \ff_q_reg[44]  ( .D(n263), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[44]) );
  DFFSR \ff_q_reg[76]  ( .D(n261), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[76]) );
  DFFSR \ff_q_reg[108]  ( .D(n259), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[108]) );
  DFFSR \ff_q_reg[11]  ( .D(n257), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[11]) );
  DFFSR \ff_q_reg[43]  ( .D(n255), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[43]) );
  DFFSR \ff_q_reg[75]  ( .D(n253), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[75]) );
  DFFSR \ff_q_reg[107]  ( .D(n251), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[107]) );
  DFFSR \ff_q_reg[10]  ( .D(n249), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[10]) );
  DFFSR \ff_q_reg[42]  ( .D(n247), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[42]) );
  DFFSR \ff_q_reg[74]  ( .D(n245), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[74]) );
  DFFSR \ff_q_reg[106]  ( .D(n243), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[106]) );
  DFFSR \ff_q_reg[9]  ( .D(n241), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[9]) );
  DFFSR \ff_q_reg[41]  ( .D(n239), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[41]) );
  DFFSR \ff_q_reg[73]  ( .D(n237), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[73]) );
  DFFSR \ff_q_reg[105]  ( .D(n235), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[105]) );
  DFFSR \ff_q_reg[8]  ( .D(n233), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[8]) );
  DFFSR \ff_q_reg[40]  ( .D(n231), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[40]) );
  DFFSR \ff_q_reg[72]  ( .D(n229), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[72]) );
  DFFSR \ff_q_reg[104]  ( .D(n227), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[104]) );
  DFFSR \ff_q_reg[7]  ( .D(n225), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[7]) );
  DFFSR \ff_q_reg[39]  ( .D(n223), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[39]) );
  DFFSR \ff_q_reg[71]  ( .D(n221), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[71]) );
  DFFSR \ff_q_reg[103]  ( .D(n219), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[103]) );
  DFFSR \ff_q_reg[6]  ( .D(n217), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[6]) );
  DFFSR \ff_q_reg[38]  ( .D(n215), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[38]) );
  DFFSR \ff_q_reg[70]  ( .D(n213), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[70]) );
  DFFSR \ff_q_reg[102]  ( .D(n211), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[102]) );
  DFFSR \ff_q_reg[5]  ( .D(n209), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[5]) );
  DFFSR \ff_q_reg[37]  ( .D(n207), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[37]) );
  DFFSR \ff_q_reg[69]  ( .D(n205), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[69]) );
  DFFSR \ff_q_reg[101]  ( .D(n203), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[101]) );
  DFFSR \ff_q_reg[4]  ( .D(n201), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[4]) );
  DFFSR \ff_q_reg[36]  ( .D(n199), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[36]) );
  DFFSR \ff_q_reg[68]  ( .D(n197), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[68]) );
  DFFSR \ff_q_reg[100]  ( .D(n195), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[100]) );
  DFFSR \ff_q_reg[3]  ( .D(n193), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[3]) );
  DFFSR \ff_q_reg[35]  ( .D(n191), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[35]) );
  DFFSR \ff_q_reg[67]  ( .D(n189), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[67]) );
  DFFSR \ff_q_reg[99]  ( .D(n187), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[99]) );
  DFFSR \ff_q_reg[2]  ( .D(n185), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[2]) );
  DFFSR \ff_q_reg[34]  ( .D(n183), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[34]) );
  DFFSR \ff_q_reg[66]  ( .D(n181), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[66]) );
  DFFSR \ff_q_reg[98]  ( .D(n179), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[98]) );
  DFFSR \ff_q_reg[1]  ( .D(n177), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[1]) );
  DFFSR \ff_q_reg[33]  ( .D(n175), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[33]) );
  DFFSR \ff_q_reg[65]  ( .D(n173), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[65]) );
  DFFSR \ff_q_reg[97]  ( .D(n171), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[97]) );
  DFFSR \ff_q_reg[0]  ( .D(n169), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[0]) );
  DFFSR \ff_q_reg[32]  ( .D(n167), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[32]) );
  DFFSR \ff_q_reg[64]  ( .D(n165), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[64]) );
  DFFSR \ff_q_reg[96]  ( .D(n163), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[96]) );
  INVX1 U2 ( .A(n1), .Y(n417) );
  MUX2X1 U3 ( .B(data_out[31]), .A(data_in[31]), .S(shift_enable), .Y(n1) );
  INVX1 U4 ( .A(n2), .Y(n415) );
  MUX2X1 U5 ( .B(data_out[63]), .A(data_out[31]), .S(shift_enable), .Y(n2) );
  INVX1 U6 ( .A(n3), .Y(n413) );
  MUX2X1 U7 ( .B(data_out[95]), .A(data_out[63]), .S(shift_enable), .Y(n3) );
  INVX1 U8 ( .A(n4), .Y(n411) );
  MUX2X1 U9 ( .B(data_out[127]), .A(data_out[95]), .S(shift_enable), .Y(n4) );
  INVX1 U10 ( .A(n5), .Y(n409) );
  MUX2X1 U11 ( .B(data_out[30]), .A(data_in[30]), .S(shift_enable), .Y(n5) );
  INVX1 U12 ( .A(n6), .Y(n407) );
  MUX2X1 U13 ( .B(data_out[62]), .A(data_out[30]), .S(shift_enable), .Y(n6) );
  INVX1 U14 ( .A(n7), .Y(n405) );
  MUX2X1 U15 ( .B(data_out[94]), .A(data_out[62]), .S(shift_enable), .Y(n7) );
  INVX1 U16 ( .A(n8), .Y(n403) );
  MUX2X1 U17 ( .B(data_out[126]), .A(data_out[94]), .S(shift_enable), .Y(n8)
         );
  INVX1 U18 ( .A(n9), .Y(n401) );
  MUX2X1 U19 ( .B(data_out[29]), .A(data_in[29]), .S(shift_enable), .Y(n9) );
  INVX1 U20 ( .A(n10), .Y(n399) );
  MUX2X1 U21 ( .B(data_out[61]), .A(data_out[29]), .S(shift_enable), .Y(n10)
         );
  INVX1 U22 ( .A(n11), .Y(n397) );
  MUX2X1 U23 ( .B(data_out[93]), .A(data_out[61]), .S(shift_enable), .Y(n11)
         );
  INVX1 U24 ( .A(n12), .Y(n395) );
  MUX2X1 U25 ( .B(data_out[125]), .A(data_out[93]), .S(shift_enable), .Y(n12)
         );
  INVX1 U26 ( .A(n13), .Y(n393) );
  MUX2X1 U27 ( .B(data_out[28]), .A(data_in[28]), .S(shift_enable), .Y(n13) );
  INVX1 U28 ( .A(n14), .Y(n391) );
  MUX2X1 U29 ( .B(data_out[60]), .A(data_out[28]), .S(shift_enable), .Y(n14)
         );
  INVX1 U30 ( .A(n15), .Y(n389) );
  MUX2X1 U31 ( .B(data_out[92]), .A(data_out[60]), .S(shift_enable), .Y(n15)
         );
  INVX1 U32 ( .A(n16), .Y(n387) );
  MUX2X1 U33 ( .B(data_out[124]), .A(data_out[92]), .S(shift_enable), .Y(n16)
         );
  INVX1 U34 ( .A(n17), .Y(n385) );
  MUX2X1 U35 ( .B(data_out[27]), .A(data_in[27]), .S(shift_enable), .Y(n17) );
  INVX1 U36 ( .A(n18), .Y(n383) );
  MUX2X1 U37 ( .B(data_out[59]), .A(data_out[27]), .S(shift_enable), .Y(n18)
         );
  INVX1 U38 ( .A(n19), .Y(n381) );
  MUX2X1 U39 ( .B(data_out[91]), .A(data_out[59]), .S(shift_enable), .Y(n19)
         );
  INVX1 U40 ( .A(n20), .Y(n379) );
  MUX2X1 U41 ( .B(data_out[123]), .A(data_out[91]), .S(shift_enable), .Y(n20)
         );
  INVX1 U42 ( .A(n21), .Y(n377) );
  MUX2X1 U43 ( .B(data_out[26]), .A(data_in[26]), .S(shift_enable), .Y(n21) );
  INVX1 U44 ( .A(n22), .Y(n375) );
  MUX2X1 U45 ( .B(data_out[58]), .A(data_out[26]), .S(shift_enable), .Y(n22)
         );
  INVX1 U46 ( .A(n23), .Y(n373) );
  MUX2X1 U47 ( .B(data_out[90]), .A(data_out[58]), .S(shift_enable), .Y(n23)
         );
  INVX1 U48 ( .A(n24), .Y(n371) );
  MUX2X1 U49 ( .B(data_out[122]), .A(data_out[90]), .S(shift_enable), .Y(n24)
         );
  INVX1 U50 ( .A(n25), .Y(n369) );
  MUX2X1 U51 ( .B(data_out[25]), .A(data_in[25]), .S(shift_enable), .Y(n25) );
  INVX1 U52 ( .A(n26), .Y(n367) );
  MUX2X1 U53 ( .B(data_out[57]), .A(data_out[25]), .S(shift_enable), .Y(n26)
         );
  INVX1 U54 ( .A(n27), .Y(n365) );
  MUX2X1 U55 ( .B(data_out[89]), .A(data_out[57]), .S(shift_enable), .Y(n27)
         );
  INVX1 U56 ( .A(n28), .Y(n363) );
  MUX2X1 U57 ( .B(data_out[121]), .A(data_out[89]), .S(shift_enable), .Y(n28)
         );
  INVX1 U58 ( .A(n29), .Y(n361) );
  MUX2X1 U59 ( .B(data_out[24]), .A(data_in[24]), .S(shift_enable), .Y(n29) );
  INVX1 U60 ( .A(n30), .Y(n359) );
  MUX2X1 U61 ( .B(data_out[56]), .A(data_out[24]), .S(shift_enable), .Y(n30)
         );
  INVX1 U62 ( .A(n31), .Y(n357) );
  MUX2X1 U63 ( .B(data_out[88]), .A(data_out[56]), .S(shift_enable), .Y(n31)
         );
  INVX1 U64 ( .A(n32), .Y(n355) );
  MUX2X1 U65 ( .B(data_out[120]), .A(data_out[88]), .S(shift_enable), .Y(n32)
         );
  INVX1 U66 ( .A(n33), .Y(n353) );
  MUX2X1 U67 ( .B(data_out[23]), .A(data_in[23]), .S(shift_enable), .Y(n33) );
  INVX1 U68 ( .A(n34), .Y(n351) );
  MUX2X1 U69 ( .B(data_out[55]), .A(data_out[23]), .S(shift_enable), .Y(n34)
         );
  INVX1 U70 ( .A(n35), .Y(n349) );
  MUX2X1 U71 ( .B(data_out[87]), .A(data_out[55]), .S(shift_enable), .Y(n35)
         );
  INVX1 U72 ( .A(n36), .Y(n347) );
  MUX2X1 U73 ( .B(data_out[119]), .A(data_out[87]), .S(shift_enable), .Y(n36)
         );
  INVX1 U74 ( .A(n37), .Y(n345) );
  MUX2X1 U75 ( .B(data_out[22]), .A(data_in[22]), .S(shift_enable), .Y(n37) );
  INVX1 U76 ( .A(n38), .Y(n343) );
  MUX2X1 U77 ( .B(data_out[54]), .A(data_out[22]), .S(shift_enable), .Y(n38)
         );
  INVX1 U78 ( .A(n39), .Y(n341) );
  MUX2X1 U79 ( .B(data_out[86]), .A(data_out[54]), .S(shift_enable), .Y(n39)
         );
  INVX1 U80 ( .A(n40), .Y(n339) );
  MUX2X1 U81 ( .B(data_out[118]), .A(data_out[86]), .S(shift_enable), .Y(n40)
         );
  INVX1 U82 ( .A(n41), .Y(n337) );
  MUX2X1 U83 ( .B(data_out[21]), .A(data_in[21]), .S(shift_enable), .Y(n41) );
  INVX1 U84 ( .A(n42), .Y(n335) );
  MUX2X1 U85 ( .B(data_out[53]), .A(data_out[21]), .S(shift_enable), .Y(n42)
         );
  INVX1 U86 ( .A(n43), .Y(n333) );
  MUX2X1 U87 ( .B(data_out[85]), .A(data_out[53]), .S(shift_enable), .Y(n43)
         );
  INVX1 U88 ( .A(n44), .Y(n331) );
  MUX2X1 U89 ( .B(data_out[117]), .A(data_out[85]), .S(shift_enable), .Y(n44)
         );
  INVX1 U90 ( .A(n45), .Y(n329) );
  MUX2X1 U91 ( .B(data_out[20]), .A(data_in[20]), .S(shift_enable), .Y(n45) );
  INVX1 U92 ( .A(n46), .Y(n327) );
  MUX2X1 U93 ( .B(data_out[52]), .A(data_out[20]), .S(shift_enable), .Y(n46)
         );
  INVX1 U94 ( .A(n47), .Y(n325) );
  MUX2X1 U95 ( .B(data_out[84]), .A(data_out[52]), .S(shift_enable), .Y(n47)
         );
  INVX1 U96 ( .A(n48), .Y(n323) );
  MUX2X1 U97 ( .B(data_out[116]), .A(data_out[84]), .S(shift_enable), .Y(n48)
         );
  INVX1 U98 ( .A(n49), .Y(n321) );
  MUX2X1 U99 ( .B(data_out[19]), .A(data_in[19]), .S(shift_enable), .Y(n49) );
  INVX1 U100 ( .A(n50), .Y(n319) );
  MUX2X1 U101 ( .B(data_out[51]), .A(data_out[19]), .S(shift_enable), .Y(n50)
         );
  INVX1 U102 ( .A(n51), .Y(n317) );
  MUX2X1 U103 ( .B(data_out[83]), .A(data_out[51]), .S(shift_enable), .Y(n51)
         );
  INVX1 U104 ( .A(n52), .Y(n315) );
  MUX2X1 U105 ( .B(data_out[115]), .A(data_out[83]), .S(shift_enable), .Y(n52)
         );
  INVX1 U106 ( .A(n53), .Y(n313) );
  MUX2X1 U107 ( .B(data_out[18]), .A(data_in[18]), .S(shift_enable), .Y(n53)
         );
  INVX1 U108 ( .A(n54), .Y(n311) );
  MUX2X1 U109 ( .B(data_out[50]), .A(data_out[18]), .S(shift_enable), .Y(n54)
         );
  INVX1 U110 ( .A(n55), .Y(n309) );
  MUX2X1 U111 ( .B(data_out[82]), .A(data_out[50]), .S(shift_enable), .Y(n55)
         );
  INVX1 U112 ( .A(n56), .Y(n307) );
  MUX2X1 U113 ( .B(data_out[114]), .A(data_out[82]), .S(shift_enable), .Y(n56)
         );
  INVX1 U114 ( .A(n57), .Y(n305) );
  MUX2X1 U115 ( .B(data_out[17]), .A(data_in[17]), .S(shift_enable), .Y(n57)
         );
  INVX1 U116 ( .A(n58), .Y(n303) );
  MUX2X1 U117 ( .B(data_out[49]), .A(data_out[17]), .S(shift_enable), .Y(n58)
         );
  INVX1 U118 ( .A(n59), .Y(n301) );
  MUX2X1 U119 ( .B(data_out[81]), .A(data_out[49]), .S(shift_enable), .Y(n59)
         );
  INVX1 U120 ( .A(n60), .Y(n299) );
  MUX2X1 U121 ( .B(data_out[113]), .A(data_out[81]), .S(shift_enable), .Y(n60)
         );
  INVX1 U122 ( .A(n61), .Y(n297) );
  MUX2X1 U123 ( .B(data_out[16]), .A(data_in[16]), .S(shift_enable), .Y(n61)
         );
  INVX1 U124 ( .A(n62), .Y(n295) );
  MUX2X1 U125 ( .B(data_out[48]), .A(data_out[16]), .S(shift_enable), .Y(n62)
         );
  INVX1 U126 ( .A(n63), .Y(n293) );
  MUX2X1 U127 ( .B(data_out[80]), .A(data_out[48]), .S(shift_enable), .Y(n63)
         );
  INVX1 U128 ( .A(n64), .Y(n291) );
  MUX2X1 U129 ( .B(data_out[112]), .A(data_out[80]), .S(shift_enable), .Y(n64)
         );
  INVX1 U130 ( .A(n65), .Y(n289) );
  MUX2X1 U131 ( .B(data_out[15]), .A(data_in[15]), .S(shift_enable), .Y(n65)
         );
  INVX1 U132 ( .A(n66), .Y(n287) );
  MUX2X1 U133 ( .B(data_out[47]), .A(data_out[15]), .S(shift_enable), .Y(n66)
         );
  INVX1 U134 ( .A(n67), .Y(n285) );
  MUX2X1 U135 ( .B(data_out[79]), .A(data_out[47]), .S(shift_enable), .Y(n67)
         );
  INVX1 U136 ( .A(n68), .Y(n283) );
  MUX2X1 U137 ( .B(data_out[111]), .A(data_out[79]), .S(shift_enable), .Y(n68)
         );
  INVX1 U138 ( .A(n69), .Y(n281) );
  MUX2X1 U139 ( .B(data_out[14]), .A(data_in[14]), .S(shift_enable), .Y(n69)
         );
  INVX1 U140 ( .A(n70), .Y(n279) );
  MUX2X1 U141 ( .B(data_out[46]), .A(data_out[14]), .S(shift_enable), .Y(n70)
         );
  INVX1 U142 ( .A(n71), .Y(n277) );
  MUX2X1 U143 ( .B(data_out[78]), .A(data_out[46]), .S(shift_enable), .Y(n71)
         );
  INVX1 U144 ( .A(n72), .Y(n275) );
  MUX2X1 U145 ( .B(data_out[110]), .A(data_out[78]), .S(shift_enable), .Y(n72)
         );
  INVX1 U146 ( .A(n73), .Y(n273) );
  MUX2X1 U147 ( .B(data_out[13]), .A(data_in[13]), .S(shift_enable), .Y(n73)
         );
  INVX1 U148 ( .A(n74), .Y(n271) );
  MUX2X1 U149 ( .B(data_out[45]), .A(data_out[13]), .S(shift_enable), .Y(n74)
         );
  INVX1 U150 ( .A(n75), .Y(n269) );
  MUX2X1 U151 ( .B(data_out[77]), .A(data_out[45]), .S(shift_enable), .Y(n75)
         );
  INVX1 U152 ( .A(n76), .Y(n267) );
  MUX2X1 U153 ( .B(data_out[109]), .A(data_out[77]), .S(shift_enable), .Y(n76)
         );
  INVX1 U154 ( .A(n77), .Y(n265) );
  MUX2X1 U155 ( .B(data_out[12]), .A(data_in[12]), .S(shift_enable), .Y(n77)
         );
  INVX1 U156 ( .A(n78), .Y(n263) );
  MUX2X1 U157 ( .B(data_out[44]), .A(data_out[12]), .S(shift_enable), .Y(n78)
         );
  INVX1 U158 ( .A(n79), .Y(n261) );
  MUX2X1 U159 ( .B(data_out[76]), .A(data_out[44]), .S(shift_enable), .Y(n79)
         );
  INVX1 U160 ( .A(n80), .Y(n259) );
  MUX2X1 U161 ( .B(data_out[108]), .A(data_out[76]), .S(shift_enable), .Y(n80)
         );
  INVX1 U162 ( .A(n81), .Y(n257) );
  MUX2X1 U163 ( .B(data_out[11]), .A(data_in[11]), .S(shift_enable), .Y(n81)
         );
  INVX1 U164 ( .A(n82), .Y(n255) );
  MUX2X1 U165 ( .B(data_out[43]), .A(data_out[11]), .S(shift_enable), .Y(n82)
         );
  INVX1 U166 ( .A(n83), .Y(n253) );
  MUX2X1 U167 ( .B(data_out[75]), .A(data_out[43]), .S(shift_enable), .Y(n83)
         );
  INVX1 U168 ( .A(n84), .Y(n251) );
  MUX2X1 U169 ( .B(data_out[107]), .A(data_out[75]), .S(shift_enable), .Y(n84)
         );
  INVX1 U170 ( .A(n85), .Y(n249) );
  MUX2X1 U171 ( .B(data_out[10]), .A(data_in[10]), .S(shift_enable), .Y(n85)
         );
  INVX1 U172 ( .A(n86), .Y(n247) );
  MUX2X1 U173 ( .B(data_out[42]), .A(data_out[10]), .S(shift_enable), .Y(n86)
         );
  INVX1 U174 ( .A(n87), .Y(n245) );
  MUX2X1 U175 ( .B(data_out[74]), .A(data_out[42]), .S(shift_enable), .Y(n87)
         );
  INVX1 U176 ( .A(n88), .Y(n243) );
  MUX2X1 U177 ( .B(data_out[106]), .A(data_out[74]), .S(shift_enable), .Y(n88)
         );
  INVX1 U178 ( .A(n89), .Y(n241) );
  MUX2X1 U179 ( .B(data_out[9]), .A(data_in[9]), .S(shift_enable), .Y(n89) );
  INVX1 U180 ( .A(n90), .Y(n239) );
  MUX2X1 U181 ( .B(data_out[41]), .A(data_out[9]), .S(shift_enable), .Y(n90)
         );
  INVX1 U182 ( .A(n91), .Y(n237) );
  MUX2X1 U183 ( .B(data_out[73]), .A(data_out[41]), .S(shift_enable), .Y(n91)
         );
  INVX1 U184 ( .A(n92), .Y(n235) );
  MUX2X1 U185 ( .B(data_out[105]), .A(data_out[73]), .S(shift_enable), .Y(n92)
         );
  INVX1 U186 ( .A(n93), .Y(n233) );
  MUX2X1 U187 ( .B(data_out[8]), .A(data_in[8]), .S(shift_enable), .Y(n93) );
  INVX1 U188 ( .A(n94), .Y(n231) );
  MUX2X1 U189 ( .B(data_out[40]), .A(data_out[8]), .S(shift_enable), .Y(n94)
         );
  INVX1 U190 ( .A(n95), .Y(n229) );
  MUX2X1 U191 ( .B(data_out[72]), .A(data_out[40]), .S(shift_enable), .Y(n95)
         );
  INVX1 U192 ( .A(n96), .Y(n227) );
  MUX2X1 U193 ( .B(data_out[104]), .A(data_out[72]), .S(shift_enable), .Y(n96)
         );
  INVX1 U194 ( .A(n97), .Y(n225) );
  MUX2X1 U195 ( .B(data_out[7]), .A(data_in[7]), .S(shift_enable), .Y(n97) );
  INVX1 U196 ( .A(n98), .Y(n223) );
  MUX2X1 U197 ( .B(data_out[39]), .A(data_out[7]), .S(shift_enable), .Y(n98)
         );
  INVX1 U198 ( .A(n99), .Y(n221) );
  MUX2X1 U199 ( .B(data_out[71]), .A(data_out[39]), .S(shift_enable), .Y(n99)
         );
  INVX1 U200 ( .A(n100), .Y(n219) );
  MUX2X1 U201 ( .B(data_out[103]), .A(data_out[71]), .S(shift_enable), .Y(n100) );
  INVX1 U202 ( .A(n101), .Y(n217) );
  MUX2X1 U203 ( .B(data_out[6]), .A(data_in[6]), .S(shift_enable), .Y(n101) );
  INVX1 U204 ( .A(n102), .Y(n215) );
  MUX2X1 U205 ( .B(data_out[38]), .A(data_out[6]), .S(shift_enable), .Y(n102)
         );
  INVX1 U206 ( .A(n103), .Y(n213) );
  MUX2X1 U207 ( .B(data_out[70]), .A(data_out[38]), .S(shift_enable), .Y(n103)
         );
  INVX1 U208 ( .A(n104), .Y(n211) );
  MUX2X1 U209 ( .B(data_out[102]), .A(data_out[70]), .S(shift_enable), .Y(n104) );
  INVX1 U210 ( .A(n105), .Y(n209) );
  MUX2X1 U211 ( .B(data_out[5]), .A(data_in[5]), .S(shift_enable), .Y(n105) );
  INVX1 U212 ( .A(n106), .Y(n207) );
  MUX2X1 U213 ( .B(data_out[37]), .A(data_out[5]), .S(shift_enable), .Y(n106)
         );
  INVX1 U214 ( .A(n107), .Y(n205) );
  MUX2X1 U215 ( .B(data_out[69]), .A(data_out[37]), .S(shift_enable), .Y(n107)
         );
  INVX1 U216 ( .A(n108), .Y(n203) );
  MUX2X1 U217 ( .B(data_out[101]), .A(data_out[69]), .S(shift_enable), .Y(n108) );
  INVX1 U218 ( .A(n109), .Y(n201) );
  MUX2X1 U219 ( .B(data_out[4]), .A(data_in[4]), .S(shift_enable), .Y(n109) );
  INVX1 U220 ( .A(n110), .Y(n199) );
  MUX2X1 U221 ( .B(data_out[36]), .A(data_out[4]), .S(shift_enable), .Y(n110)
         );
  INVX1 U222 ( .A(n111), .Y(n197) );
  MUX2X1 U223 ( .B(data_out[68]), .A(data_out[36]), .S(shift_enable), .Y(n111)
         );
  INVX1 U224 ( .A(n112), .Y(n195) );
  MUX2X1 U225 ( .B(data_out[100]), .A(data_out[68]), .S(shift_enable), .Y(n112) );
  INVX1 U226 ( .A(n113), .Y(n193) );
  MUX2X1 U227 ( .B(data_out[3]), .A(data_in[3]), .S(shift_enable), .Y(n113) );
  INVX1 U228 ( .A(n114), .Y(n191) );
  MUX2X1 U229 ( .B(data_out[35]), .A(data_out[3]), .S(shift_enable), .Y(n114)
         );
  INVX1 U230 ( .A(n115), .Y(n189) );
  MUX2X1 U231 ( .B(data_out[67]), .A(data_out[35]), .S(shift_enable), .Y(n115)
         );
  INVX1 U232 ( .A(n116), .Y(n187) );
  MUX2X1 U233 ( .B(data_out[99]), .A(data_out[67]), .S(shift_enable), .Y(n116)
         );
  INVX1 U234 ( .A(n117), .Y(n185) );
  MUX2X1 U235 ( .B(data_out[2]), .A(data_in[2]), .S(shift_enable), .Y(n117) );
  INVX1 U236 ( .A(n118), .Y(n183) );
  MUX2X1 U237 ( .B(data_out[34]), .A(data_out[2]), .S(shift_enable), .Y(n118)
         );
  INVX1 U238 ( .A(n119), .Y(n181) );
  MUX2X1 U239 ( .B(data_out[66]), .A(data_out[34]), .S(shift_enable), .Y(n119)
         );
  INVX1 U240 ( .A(n120), .Y(n179) );
  MUX2X1 U241 ( .B(data_out[98]), .A(data_out[66]), .S(shift_enable), .Y(n120)
         );
  INVX1 U242 ( .A(n121), .Y(n177) );
  MUX2X1 U243 ( .B(data_out[1]), .A(data_in[1]), .S(shift_enable), .Y(n121) );
  INVX1 U244 ( .A(n122), .Y(n175) );
  MUX2X1 U245 ( .B(data_out[33]), .A(data_out[1]), .S(shift_enable), .Y(n122)
         );
  INVX1 U246 ( .A(n123), .Y(n173) );
  MUX2X1 U247 ( .B(data_out[65]), .A(data_out[33]), .S(shift_enable), .Y(n123)
         );
  INVX1 U248 ( .A(n124), .Y(n171) );
  MUX2X1 U249 ( .B(data_out[97]), .A(data_out[65]), .S(shift_enable), .Y(n124)
         );
  INVX1 U250 ( .A(n125), .Y(n169) );
  MUX2X1 U251 ( .B(data_out[0]), .A(data_in[0]), .S(shift_enable), .Y(n125) );
  INVX1 U252 ( .A(n126), .Y(n167) );
  MUX2X1 U253 ( .B(data_out[32]), .A(data_out[0]), .S(shift_enable), .Y(n126)
         );
  INVX1 U254 ( .A(n127), .Y(n165) );
  MUX2X1 U255 ( .B(data_out[64]), .A(data_out[32]), .S(shift_enable), .Y(n127)
         );
  INVX1 U256 ( .A(n128), .Y(n163) );
  MUX2X1 U257 ( .B(data_out[96]), .A(data_out[64]), .S(shift_enable), .Y(n128)
         );
endmodule


module rx_sr ( clk, n_rst, data_in, shift_enable, data_out );
  input [31:0] data_in;
  output [127:0] data_out;
  input clk, n_rst, shift_enable;


  flexbyte_stp_sr_NUM_BYTES_IN4_NUM_BYTES_OUT16 stp ( .clk(clk), .n_rst(n_rst), 
        .shift_enable(shift_enable), .data_in(data_in), .data_out(data_out) );
endmodule

