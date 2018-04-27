/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Fri Apr 27 02:06:58 2018
/////////////////////////////////////////////////////////////


module ahb_slave ( hclk, hresetn, haddr, hwrite, hready, hwdata, hreadyout, 
        hrdata, data_read_loc, data_write_loc, key, flag, size_data );
  input [31:0] haddr;
  input [31:0] hwdata;
  output [31:0] hrdata;
  output [31:0] data_read_loc;
  output [31:0] data_write_loc;
  output [127:0] key;
  output [1:0] flag;
  output [31:0] size_data;
  input hclk, hresetn, hwrite, hready;
  output hreadyout;
  wire   N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91,
         N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104,
         N105, N106, N107, N108, N109, N118, N119, N120, N121, N122, N123,
         N124, N125, N126, N127, N128, N129, N130, N131, N132, N133, N134,
         N135, N136, N137, N138, N139, N140, N141, N142, N143, N144, N145,
         N146, N147, N148, N149, N150, N151, N152, N153, N154, N155, N156,
         N157, N158, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189;
  wire   [2:0] state;
  assign hreadyout = 1'b1;

  DFFSR \state_reg[0]  ( .D(n97), .CLK(hclk), .R(hresetn), .S(1'b1), .Q(
        state[0]) );
  DFFSR \state_reg[1]  ( .D(n96), .CLK(hclk), .R(hresetn), .S(1'b1), .Q(
        state[1]) );
  LATCH \next_data_write_loc_reg[0]  ( .CLK(n98), .D(N78), .Q(
        data_write_loc[0]) );
  LATCH \next_data_write_loc_reg[1]  ( .CLK(n98), .D(N79), .Q(
        data_write_loc[1]) );
  LATCH \next_data_write_loc_reg[2]  ( .CLK(n98), .D(N80), .Q(
        data_write_loc[2]) );
  LATCH \next_data_write_loc_reg[3]  ( .CLK(n98), .D(N81), .Q(
        data_write_loc[3]) );
  LATCH \next_data_write_loc_reg[4]  ( .CLK(n98), .D(N82), .Q(
        data_write_loc[4]) );
  LATCH \next_data_write_loc_reg[5]  ( .CLK(n98), .D(N83), .Q(
        data_write_loc[5]) );
  LATCH \next_data_write_loc_reg[6]  ( .CLK(n98), .D(N84), .Q(
        data_write_loc[6]) );
  LATCH \next_data_write_loc_reg[7]  ( .CLK(n98), .D(N85), .Q(
        data_write_loc[7]) );
  LATCH \next_data_write_loc_reg[8]  ( .CLK(n98), .D(N86), .Q(
        data_write_loc[8]) );
  LATCH \next_data_write_loc_reg[9]  ( .CLK(n98), .D(N87), .Q(
        data_write_loc[9]) );
  LATCH \next_data_write_loc_reg[10]  ( .CLK(n98), .D(N88), .Q(
        data_write_loc[10]) );
  LATCH \next_data_write_loc_reg[11]  ( .CLK(n98), .D(N89), .Q(
        data_write_loc[11]) );
  LATCH \next_data_write_loc_reg[12]  ( .CLK(n98), .D(N90), .Q(
        data_write_loc[12]) );
  LATCH \next_data_write_loc_reg[13]  ( .CLK(n98), .D(N91), .Q(
        data_write_loc[13]) );
  LATCH \next_data_write_loc_reg[14]  ( .CLK(n98), .D(N92), .Q(
        data_write_loc[14]) );
  LATCH \next_data_write_loc_reg[15]  ( .CLK(n98), .D(N93), .Q(
        data_write_loc[15]) );
  LATCH \next_data_write_loc_reg[16]  ( .CLK(n98), .D(N94), .Q(
        data_write_loc[16]) );
  LATCH \next_data_write_loc_reg[17]  ( .CLK(n98), .D(N95), .Q(
        data_write_loc[17]) );
  LATCH \next_data_write_loc_reg[18]  ( .CLK(n98), .D(N96), .Q(
        data_write_loc[18]) );
  LATCH \next_data_write_loc_reg[19]  ( .CLK(n98), .D(N97), .Q(
        data_write_loc[19]) );
  LATCH \next_data_write_loc_reg[20]  ( .CLK(n98), .D(N98), .Q(
        data_write_loc[20]) );
  LATCH \next_data_write_loc_reg[21]  ( .CLK(n98), .D(N99), .Q(
        data_write_loc[21]) );
  LATCH \next_data_write_loc_reg[22]  ( .CLK(n98), .D(N100), .Q(
        data_write_loc[22]) );
  LATCH \next_data_write_loc_reg[23]  ( .CLK(n98), .D(N101), .Q(
        data_write_loc[23]) );
  LATCH \next_data_write_loc_reg[24]  ( .CLK(n98), .D(N102), .Q(
        data_write_loc[24]) );
  LATCH \next_data_write_loc_reg[25]  ( .CLK(n98), .D(N103), .Q(
        data_write_loc[25]) );
  LATCH \next_data_write_loc_reg[26]  ( .CLK(n98), .D(N104), .Q(
        data_write_loc[26]) );
  LATCH \next_data_write_loc_reg[27]  ( .CLK(n98), .D(N105), .Q(
        data_write_loc[27]) );
  LATCH \next_data_write_loc_reg[28]  ( .CLK(n98), .D(N106), .Q(
        data_write_loc[28]) );
  LATCH \next_data_write_loc_reg[29]  ( .CLK(n98), .D(N107), .Q(
        data_write_loc[29]) );
  LATCH \next_data_write_loc_reg[30]  ( .CLK(n98), .D(N108), .Q(
        data_write_loc[30]) );
  LATCH \next_data_write_loc_reg[31]  ( .CLK(n98), .D(N109), .Q(
        data_write_loc[31]) );
  LATCH \next_data_read_loc_reg[0]  ( .CLK(n99), .D(N78), .Q(data_read_loc[0])
         );
  LATCH \next_data_read_loc_reg[1]  ( .CLK(n99), .D(N79), .Q(data_read_loc[1])
         );
  LATCH \next_data_read_loc_reg[2]  ( .CLK(n99), .D(N80), .Q(data_read_loc[2])
         );
  LATCH \next_data_read_loc_reg[3]  ( .CLK(n99), .D(N81), .Q(data_read_loc[3])
         );
  LATCH \next_data_read_loc_reg[4]  ( .CLK(n99), .D(N82), .Q(data_read_loc[4])
         );
  LATCH \next_data_read_loc_reg[5]  ( .CLK(n99), .D(N83), .Q(data_read_loc[5])
         );
  LATCH \next_data_read_loc_reg[6]  ( .CLK(n99), .D(N84), .Q(data_read_loc[6])
         );
  LATCH \next_data_read_loc_reg[7]  ( .CLK(n99), .D(N85), .Q(data_read_loc[7])
         );
  LATCH \next_data_read_loc_reg[8]  ( .CLK(n99), .D(N86), .Q(data_read_loc[8])
         );
  LATCH \next_data_read_loc_reg[9]  ( .CLK(n99), .D(N87), .Q(data_read_loc[9])
         );
  LATCH \next_data_read_loc_reg[10]  ( .CLK(n99), .D(N88), .Q(
        data_read_loc[10]) );
  LATCH \next_data_read_loc_reg[11]  ( .CLK(n99), .D(N89), .Q(
        data_read_loc[11]) );
  LATCH \next_data_read_loc_reg[12]  ( .CLK(n99), .D(N90), .Q(
        data_read_loc[12]) );
  LATCH \next_data_read_loc_reg[13]  ( .CLK(n99), .D(N91), .Q(
        data_read_loc[13]) );
  LATCH \next_data_read_loc_reg[14]  ( .CLK(n99), .D(N92), .Q(
        data_read_loc[14]) );
  LATCH \next_data_read_loc_reg[15]  ( .CLK(n99), .D(N93), .Q(
        data_read_loc[15]) );
  LATCH \next_data_read_loc_reg[16]  ( .CLK(n99), .D(N94), .Q(
        data_read_loc[16]) );
  LATCH \next_data_read_loc_reg[17]  ( .CLK(n99), .D(N95), .Q(
        data_read_loc[17]) );
  LATCH \next_data_read_loc_reg[18]  ( .CLK(n99), .D(N96), .Q(
        data_read_loc[18]) );
  LATCH \next_data_read_loc_reg[19]  ( .CLK(n99), .D(N97), .Q(
        data_read_loc[19]) );
  LATCH \next_data_read_loc_reg[20]  ( .CLK(n99), .D(N98), .Q(
        data_read_loc[20]) );
  LATCH \next_data_read_loc_reg[21]  ( .CLK(n99), .D(N99), .Q(
        data_read_loc[21]) );
  LATCH \next_data_read_loc_reg[22]  ( .CLK(n99), .D(N100), .Q(
        data_read_loc[22]) );
  LATCH \next_data_read_loc_reg[23]  ( .CLK(n99), .D(N101), .Q(
        data_read_loc[23]) );
  LATCH \next_data_read_loc_reg[24]  ( .CLK(n99), .D(N102), .Q(
        data_read_loc[24]) );
  LATCH \next_data_read_loc_reg[25]  ( .CLK(n99), .D(N103), .Q(
        data_read_loc[25]) );
  LATCH \next_data_read_loc_reg[26]  ( .CLK(n99), .D(N104), .Q(
        data_read_loc[26]) );
  LATCH \next_data_read_loc_reg[27]  ( .CLK(n99), .D(N105), .Q(
        data_read_loc[27]) );
  LATCH \next_data_read_loc_reg[28]  ( .CLK(n99), .D(N106), .Q(
        data_read_loc[28]) );
  LATCH \next_data_read_loc_reg[29]  ( .CLK(n99), .D(N107), .Q(
        data_read_loc[29]) );
  LATCH \next_data_read_loc_reg[30]  ( .CLK(n99), .D(N108), .Q(
        data_read_loc[30]) );
  LATCH \next_data_read_loc_reg[31]  ( .CLK(n99), .D(N109), .Q(
        data_read_loc[31]) );
  LATCH \next_flag_reg[0]  ( .CLK(N156), .D(N78), .Q(flag[0]) );
  LATCH \next_flag_reg[1]  ( .CLK(N156), .D(N79), .Q(flag[1]) );
  LATCH \next_size_data_reg[0]  ( .CLK(n100), .D(N78), .Q(size_data[0]) );
  LATCH \next_size_data_reg[1]  ( .CLK(n100), .D(N79), .Q(size_data[1]) );
  LATCH \next_size_data_reg[2]  ( .CLK(n100), .D(N80), .Q(size_data[2]) );
  LATCH \next_size_data_reg[3]  ( .CLK(n100), .D(N81), .Q(size_data[3]) );
  LATCH \next_size_data_reg[4]  ( .CLK(n100), .D(N82), .Q(size_data[4]) );
  LATCH \next_size_data_reg[5]  ( .CLK(n100), .D(N83), .Q(size_data[5]) );
  LATCH \next_size_data_reg[6]  ( .CLK(n100), .D(N84), .Q(size_data[6]) );
  LATCH \next_size_data_reg[7]  ( .CLK(n100), .D(N85), .Q(size_data[7]) );
  LATCH \next_size_data_reg[8]  ( .CLK(n100), .D(N86), .Q(size_data[8]) );
  LATCH \next_size_data_reg[9]  ( .CLK(n100), .D(N87), .Q(size_data[9]) );
  LATCH \next_size_data_reg[10]  ( .CLK(n100), .D(N88), .Q(size_data[10]) );
  LATCH \next_size_data_reg[11]  ( .CLK(n100), .D(N89), .Q(size_data[11]) );
  LATCH \next_size_data_reg[12]  ( .CLK(n100), .D(N90), .Q(size_data[12]) );
  LATCH \next_size_data_reg[13]  ( .CLK(n100), .D(N91), .Q(size_data[13]) );
  LATCH \next_size_data_reg[14]  ( .CLK(n100), .D(N92), .Q(size_data[14]) );
  LATCH \next_size_data_reg[15]  ( .CLK(n100), .D(N93), .Q(size_data[15]) );
  LATCH \next_size_data_reg[16]  ( .CLK(n100), .D(N94), .Q(size_data[16]) );
  LATCH \next_size_data_reg[17]  ( .CLK(n100), .D(N95), .Q(size_data[17]) );
  LATCH \next_size_data_reg[18]  ( .CLK(n100), .D(N96), .Q(size_data[18]) );
  LATCH \next_size_data_reg[19]  ( .CLK(n100), .D(N97), .Q(size_data[19]) );
  LATCH \next_size_data_reg[20]  ( .CLK(n100), .D(N98), .Q(size_data[20]) );
  LATCH \next_size_data_reg[21]  ( .CLK(n100), .D(N99), .Q(size_data[21]) );
  LATCH \next_size_data_reg[22]  ( .CLK(n100), .D(N100), .Q(size_data[22]) );
  LATCH \next_size_data_reg[23]  ( .CLK(n100), .D(N101), .Q(size_data[23]) );
  LATCH \next_size_data_reg[24]  ( .CLK(n100), .D(N102), .Q(size_data[24]) );
  LATCH \next_size_data_reg[25]  ( .CLK(n100), .D(N103), .Q(size_data[25]) );
  LATCH \next_size_data_reg[26]  ( .CLK(n100), .D(N104), .Q(size_data[26]) );
  LATCH \next_size_data_reg[27]  ( .CLK(n100), .D(N105), .Q(size_data[27]) );
  LATCH \next_size_data_reg[28]  ( .CLK(n100), .D(N106), .Q(size_data[28]) );
  LATCH \next_size_data_reg[29]  ( .CLK(n100), .D(N107), .Q(size_data[29]) );
  LATCH \next_size_data_reg[30]  ( .CLK(n100), .D(N108), .Q(size_data[30]) );
  LATCH \next_size_data_reg[31]  ( .CLK(n100), .D(N109), .Q(size_data[31]) );
  LATCH \next_hrdata_reg[0]  ( .CLK(n101), .D(N118), .Q(hrdata[0]) );
  LATCH \next_hrdata_reg[31]  ( .CLK(n101), .D(N149), .Q(hrdata[31]) );
  LATCH \next_hrdata_reg[30]  ( .CLK(n101), .D(N148), .Q(hrdata[30]) );
  LATCH \next_hrdata_reg[29]  ( .CLK(n101), .D(N147), .Q(hrdata[29]) );
  LATCH \next_hrdata_reg[28]  ( .CLK(n101), .D(N146), .Q(hrdata[28]) );
  LATCH \next_hrdata_reg[27]  ( .CLK(n101), .D(N145), .Q(hrdata[27]) );
  LATCH \next_hrdata_reg[26]  ( .CLK(n101), .D(N144), .Q(hrdata[26]) );
  LATCH \next_hrdata_reg[25]  ( .CLK(n101), .D(N143), .Q(hrdata[25]) );
  LATCH \next_hrdata_reg[24]  ( .CLK(n101), .D(N142), .Q(hrdata[24]) );
  LATCH \next_hrdata_reg[23]  ( .CLK(n101), .D(N141), .Q(hrdata[23]) );
  LATCH \next_hrdata_reg[22]  ( .CLK(n101), .D(N140), .Q(hrdata[22]) );
  LATCH \next_hrdata_reg[21]  ( .CLK(n101), .D(N139), .Q(hrdata[21]) );
  LATCH \next_hrdata_reg[20]  ( .CLK(n101), .D(N138), .Q(hrdata[20]) );
  LATCH \next_hrdata_reg[19]  ( .CLK(n101), .D(N137), .Q(hrdata[19]) );
  LATCH \next_hrdata_reg[18]  ( .CLK(n101), .D(N136), .Q(hrdata[18]) );
  LATCH \next_hrdata_reg[17]  ( .CLK(n101), .D(N135), .Q(hrdata[17]) );
  LATCH \next_hrdata_reg[16]  ( .CLK(n101), .D(N134), .Q(hrdata[16]) );
  LATCH \next_hrdata_reg[15]  ( .CLK(n101), .D(N133), .Q(hrdata[15]) );
  LATCH \next_hrdata_reg[14]  ( .CLK(n101), .D(N132), .Q(hrdata[14]) );
  LATCH \next_hrdata_reg[13]  ( .CLK(n101), .D(N131), .Q(hrdata[13]) );
  LATCH \next_hrdata_reg[12]  ( .CLK(n101), .D(N130), .Q(hrdata[12]) );
  LATCH \next_hrdata_reg[11]  ( .CLK(n101), .D(N129), .Q(hrdata[11]) );
  LATCH \next_hrdata_reg[10]  ( .CLK(n101), .D(N128), .Q(hrdata[10]) );
  LATCH \next_hrdata_reg[9]  ( .CLK(n101), .D(N127), .Q(hrdata[9]) );
  LATCH \next_hrdata_reg[8]  ( .CLK(n101), .D(N126), .Q(hrdata[8]) );
  LATCH \next_hrdata_reg[7]  ( .CLK(n101), .D(N125), .Q(hrdata[7]) );
  LATCH \next_hrdata_reg[6]  ( .CLK(n101), .D(N124), .Q(hrdata[6]) );
  LATCH \next_hrdata_reg[5]  ( .CLK(n101), .D(N123), .Q(hrdata[5]) );
  LATCH \next_hrdata_reg[4]  ( .CLK(n101), .D(N122), .Q(hrdata[4]) );
  LATCH \next_hrdata_reg[3]  ( .CLK(n101), .D(N121), .Q(hrdata[3]) );
  LATCH \next_hrdata_reg[2]  ( .CLK(n101), .D(N120), .Q(hrdata[2]) );
  LATCH \next_hrdata_reg[1]  ( .CLK(n101), .D(N119), .Q(hrdata[1]) );
  LATCH \next_key_reg[96]  ( .CLK(n102), .D(N78), .Q(key[96]) );
  LATCH \next_key_reg[97]  ( .CLK(n102), .D(N79), .Q(key[97]) );
  LATCH \next_key_reg[98]  ( .CLK(n102), .D(N80), .Q(key[98]) );
  LATCH \next_key_reg[99]  ( .CLK(n102), .D(N81), .Q(key[99]) );
  LATCH \next_key_reg[100]  ( .CLK(n102), .D(N82), .Q(key[100]) );
  LATCH \next_key_reg[101]  ( .CLK(n102), .D(N83), .Q(key[101]) );
  LATCH \next_key_reg[102]  ( .CLK(n102), .D(N84), .Q(key[102]) );
  LATCH \next_key_reg[103]  ( .CLK(n102), .D(N85), .Q(key[103]) );
  LATCH \next_key_reg[104]  ( .CLK(n102), .D(N86), .Q(key[104]) );
  LATCH \next_key_reg[105]  ( .CLK(n102), .D(N87), .Q(key[105]) );
  LATCH \next_key_reg[106]  ( .CLK(n102), .D(N88), .Q(key[106]) );
  LATCH \next_key_reg[107]  ( .CLK(n102), .D(N89), .Q(key[107]) );
  LATCH \next_key_reg[108]  ( .CLK(n102), .D(N90), .Q(key[108]) );
  LATCH \next_key_reg[109]  ( .CLK(n102), .D(N91), .Q(key[109]) );
  LATCH \next_key_reg[110]  ( .CLK(n102), .D(N92), .Q(key[110]) );
  LATCH \next_key_reg[111]  ( .CLK(n102), .D(N93), .Q(key[111]) );
  LATCH \next_key_reg[112]  ( .CLK(n102), .D(N94), .Q(key[112]) );
  LATCH \next_key_reg[113]  ( .CLK(n102), .D(N95), .Q(key[113]) );
  LATCH \next_key_reg[114]  ( .CLK(n102), .D(N96), .Q(key[114]) );
  LATCH \next_key_reg[115]  ( .CLK(n102), .D(N97), .Q(key[115]) );
  LATCH \next_key_reg[116]  ( .CLK(n102), .D(N98), .Q(key[116]) );
  LATCH \next_key_reg[117]  ( .CLK(n102), .D(N99), .Q(key[117]) );
  LATCH \next_key_reg[118]  ( .CLK(n102), .D(N100), .Q(key[118]) );
  LATCH \next_key_reg[119]  ( .CLK(n102), .D(N101), .Q(key[119]) );
  LATCH \next_key_reg[120]  ( .CLK(n102), .D(N102), .Q(key[120]) );
  LATCH \next_key_reg[121]  ( .CLK(n102), .D(N103), .Q(key[121]) );
  LATCH \next_key_reg[122]  ( .CLK(n102), .D(N104), .Q(key[122]) );
  LATCH \next_key_reg[123]  ( .CLK(n102), .D(N105), .Q(key[123]) );
  LATCH \next_key_reg[124]  ( .CLK(n102), .D(N106), .Q(key[124]) );
  LATCH \next_key_reg[125]  ( .CLK(n102), .D(N107), .Q(key[125]) );
  LATCH \next_key_reg[126]  ( .CLK(n102), .D(N108), .Q(key[126]) );
  LATCH \next_key_reg[127]  ( .CLK(n102), .D(N109), .Q(key[127]) );
  LATCH \next_key_reg[64]  ( .CLK(n103), .D(N78), .Q(key[64]) );
  LATCH \next_key_reg[65]  ( .CLK(n103), .D(N79), .Q(key[65]) );
  LATCH \next_key_reg[66]  ( .CLK(n103), .D(N80), .Q(key[66]) );
  LATCH \next_key_reg[67]  ( .CLK(n103), .D(N81), .Q(key[67]) );
  LATCH \next_key_reg[68]  ( .CLK(n103), .D(N82), .Q(key[68]) );
  LATCH \next_key_reg[69]  ( .CLK(n103), .D(N83), .Q(key[69]) );
  LATCH \next_key_reg[70]  ( .CLK(n103), .D(N84), .Q(key[70]) );
  LATCH \next_key_reg[71]  ( .CLK(n103), .D(N85), .Q(key[71]) );
  LATCH \next_key_reg[72]  ( .CLK(n103), .D(N86), .Q(key[72]) );
  LATCH \next_key_reg[73]  ( .CLK(n103), .D(N87), .Q(key[73]) );
  LATCH \next_key_reg[74]  ( .CLK(n103), .D(N88), .Q(key[74]) );
  LATCH \next_key_reg[75]  ( .CLK(n103), .D(N89), .Q(key[75]) );
  LATCH \next_key_reg[76]  ( .CLK(n103), .D(N90), .Q(key[76]) );
  LATCH \next_key_reg[77]  ( .CLK(n103), .D(N91), .Q(key[77]) );
  LATCH \next_key_reg[78]  ( .CLK(n103), .D(N92), .Q(key[78]) );
  LATCH \next_key_reg[79]  ( .CLK(n103), .D(N93), .Q(key[79]) );
  LATCH \next_key_reg[80]  ( .CLK(n103), .D(N94), .Q(key[80]) );
  LATCH \next_key_reg[81]  ( .CLK(n103), .D(N95), .Q(key[81]) );
  LATCH \next_key_reg[82]  ( .CLK(n103), .D(N96), .Q(key[82]) );
  LATCH \next_key_reg[83]  ( .CLK(n103), .D(N97), .Q(key[83]) );
  LATCH \next_key_reg[84]  ( .CLK(n103), .D(N98), .Q(key[84]) );
  LATCH \next_key_reg[85]  ( .CLK(n103), .D(N99), .Q(key[85]) );
  LATCH \next_key_reg[86]  ( .CLK(n103), .D(N100), .Q(key[86]) );
  LATCH \next_key_reg[87]  ( .CLK(n103), .D(N101), .Q(key[87]) );
  LATCH \next_key_reg[88]  ( .CLK(n103), .D(N102), .Q(key[88]) );
  LATCH \next_key_reg[89]  ( .CLK(n103), .D(N103), .Q(key[89]) );
  LATCH \next_key_reg[90]  ( .CLK(n103), .D(N104), .Q(key[90]) );
  LATCH \next_key_reg[91]  ( .CLK(n103), .D(N105), .Q(key[91]) );
  LATCH \next_key_reg[92]  ( .CLK(n103), .D(N106), .Q(key[92]) );
  LATCH \next_key_reg[93]  ( .CLK(n103), .D(N107), .Q(key[93]) );
  LATCH \next_key_reg[94]  ( .CLK(n103), .D(N108), .Q(key[94]) );
  LATCH \next_key_reg[95]  ( .CLK(n103), .D(N109), .Q(key[95]) );
  LATCH \next_key_reg[32]  ( .CLK(n104), .D(N78), .Q(key[32]) );
  LATCH \next_key_reg[33]  ( .CLK(n104), .D(N79), .Q(key[33]) );
  LATCH \next_key_reg[34]  ( .CLK(n104), .D(N80), .Q(key[34]) );
  LATCH \next_key_reg[35]  ( .CLK(n104), .D(N81), .Q(key[35]) );
  LATCH \next_key_reg[36]  ( .CLK(n104), .D(N82), .Q(key[36]) );
  LATCH \next_key_reg[37]  ( .CLK(n104), .D(N83), .Q(key[37]) );
  LATCH \next_key_reg[38]  ( .CLK(n104), .D(N84), .Q(key[38]) );
  LATCH \next_key_reg[39]  ( .CLK(n104), .D(N85), .Q(key[39]) );
  LATCH \next_key_reg[40]  ( .CLK(n104), .D(N86), .Q(key[40]) );
  LATCH \next_key_reg[41]  ( .CLK(n104), .D(N87), .Q(key[41]) );
  LATCH \next_key_reg[42]  ( .CLK(n104), .D(N88), .Q(key[42]) );
  LATCH \next_key_reg[43]  ( .CLK(n104), .D(N89), .Q(key[43]) );
  LATCH \next_key_reg[44]  ( .CLK(n104), .D(N90), .Q(key[44]) );
  LATCH \next_key_reg[45]  ( .CLK(n104), .D(N91), .Q(key[45]) );
  LATCH \next_key_reg[46]  ( .CLK(n104), .D(N92), .Q(key[46]) );
  LATCH \next_key_reg[47]  ( .CLK(n104), .D(N93), .Q(key[47]) );
  LATCH \next_key_reg[48]  ( .CLK(n104), .D(N94), .Q(key[48]) );
  LATCH \next_key_reg[49]  ( .CLK(n104), .D(N95), .Q(key[49]) );
  LATCH \next_key_reg[50]  ( .CLK(n104), .D(N96), .Q(key[50]) );
  LATCH \next_key_reg[51]  ( .CLK(n104), .D(N97), .Q(key[51]) );
  LATCH \next_key_reg[52]  ( .CLK(n104), .D(N98), .Q(key[52]) );
  LATCH \next_key_reg[53]  ( .CLK(n104), .D(N99), .Q(key[53]) );
  LATCH \next_key_reg[54]  ( .CLK(n104), .D(N100), .Q(key[54]) );
  LATCH \next_key_reg[55]  ( .CLK(n104), .D(N101), .Q(key[55]) );
  LATCH \next_key_reg[56]  ( .CLK(n104), .D(N102), .Q(key[56]) );
  LATCH \next_key_reg[57]  ( .CLK(n104), .D(N103), .Q(key[57]) );
  LATCH \next_key_reg[58]  ( .CLK(n104), .D(N104), .Q(key[58]) );
  LATCH \next_key_reg[59]  ( .CLK(n104), .D(N105), .Q(key[59]) );
  LATCH \next_key_reg[60]  ( .CLK(n104), .D(N106), .Q(key[60]) );
  LATCH \next_key_reg[61]  ( .CLK(n104), .D(N107), .Q(key[61]) );
  LATCH \next_key_reg[62]  ( .CLK(n104), .D(N108), .Q(key[62]) );
  LATCH \next_key_reg[63]  ( .CLK(n104), .D(N109), .Q(key[63]) );
  LATCH \next_key_reg[0]  ( .CLK(n106), .D(N78), .Q(key[0]) );
  LATCH \next_key_reg[1]  ( .CLK(n106), .D(N79), .Q(key[1]) );
  LATCH \next_key_reg[2]  ( .CLK(n106), .D(N80), .Q(key[2]) );
  LATCH \next_key_reg[3]  ( .CLK(n106), .D(N81), .Q(key[3]) );
  LATCH \next_key_reg[4]  ( .CLK(n106), .D(N82), .Q(key[4]) );
  LATCH \next_key_reg[5]  ( .CLK(n106), .D(N83), .Q(key[5]) );
  LATCH \next_key_reg[6]  ( .CLK(n106), .D(N84), .Q(key[6]) );
  LATCH \next_key_reg[7]  ( .CLK(n106), .D(N85), .Q(key[7]) );
  LATCH \next_key_reg[8]  ( .CLK(n106), .D(N86), .Q(key[8]) );
  LATCH \next_key_reg[9]  ( .CLK(n106), .D(N87), .Q(key[9]) );
  LATCH \next_key_reg[10]  ( .CLK(n106), .D(N88), .Q(key[10]) );
  LATCH \next_key_reg[11]  ( .CLK(n106), .D(N89), .Q(key[11]) );
  LATCH \next_key_reg[12]  ( .CLK(n106), .D(N90), .Q(key[12]) );
  LATCH \next_key_reg[13]  ( .CLK(n106), .D(N91), .Q(key[13]) );
  LATCH \next_key_reg[14]  ( .CLK(n106), .D(N92), .Q(key[14]) );
  LATCH \next_key_reg[15]  ( .CLK(n106), .D(N93), .Q(key[15]) );
  LATCH \next_key_reg[16]  ( .CLK(n106), .D(N94), .Q(key[16]) );
  LATCH \next_key_reg[17]  ( .CLK(n106), .D(N95), .Q(key[17]) );
  LATCH \next_key_reg[18]  ( .CLK(n106), .D(N96), .Q(key[18]) );
  LATCH \next_key_reg[19]  ( .CLK(n106), .D(N97), .Q(key[19]) );
  LATCH \next_key_reg[20]  ( .CLK(n106), .D(N98), .Q(key[20]) );
  LATCH \next_key_reg[21]  ( .CLK(n106), .D(N99), .Q(key[21]) );
  LATCH \next_key_reg[22]  ( .CLK(n106), .D(N100), .Q(key[22]) );
  LATCH \next_key_reg[23]  ( .CLK(n106), .D(N101), .Q(key[23]) );
  LATCH \next_key_reg[24]  ( .CLK(n106), .D(N102), .Q(key[24]) );
  LATCH \next_key_reg[25]  ( .CLK(n106), .D(N103), .Q(key[25]) );
  LATCH \next_key_reg[26]  ( .CLK(n106), .D(N104), .Q(key[26]) );
  LATCH \next_key_reg[27]  ( .CLK(n106), .D(N105), .Q(key[27]) );
  LATCH \next_key_reg[28]  ( .CLK(n106), .D(N106), .Q(key[28]) );
  LATCH \next_key_reg[29]  ( .CLK(n106), .D(N107), .Q(key[29]) );
  LATCH \next_key_reg[30]  ( .CLK(n106), .D(N108), .Q(key[30]) );
  LATCH \next_key_reg[31]  ( .CLK(n106), .D(N109), .Q(key[31]) );
  BUFX4 U175 ( .A(N158), .Y(n98) );
  BUFX4 U176 ( .A(N157), .Y(n99) );
  BUFX4 U177 ( .A(N155), .Y(n100) );
  BUFX4 U178 ( .A(N154), .Y(n101) );
  BUFX4 U179 ( .A(N153), .Y(n102) );
  BUFX4 U180 ( .A(N152), .Y(n103) );
  BUFX4 U181 ( .A(N151), .Y(n104) );
  INVX2 U182 ( .A(n172), .Y(n110) );
  BUFX2 U183 ( .A(n144), .Y(n105) );
  BUFX4 U184 ( .A(N150), .Y(n106) );
  OAI21X1 U185 ( .A(n107), .B(n108), .C(n109), .Y(n97) );
  INVX1 U186 ( .A(hwrite), .Y(n108) );
  OAI21X1 U187 ( .A(hwrite), .B(n107), .C(n109), .Y(n96) );
  NAND2X1 U188 ( .A(state[1]), .B(state[0]), .Y(n109) );
  INVX1 U189 ( .A(hready), .Y(n107) );
  NOR2X1 U190 ( .A(n110), .B(n111), .Y(N99) );
  NOR2X1 U191 ( .A(n110), .B(n112), .Y(N98) );
  NOR2X1 U192 ( .A(n110), .B(n113), .Y(N97) );
  NOR2X1 U193 ( .A(n110), .B(n114), .Y(N96) );
  NOR2X1 U194 ( .A(n110), .B(n115), .Y(N95) );
  NOR2X1 U195 ( .A(n110), .B(n116), .Y(N94) );
  NOR2X1 U196 ( .A(n110), .B(n117), .Y(N93) );
  NOR2X1 U197 ( .A(n110), .B(n118), .Y(N92) );
  NOR2X1 U198 ( .A(n110), .B(n119), .Y(N91) );
  NOR2X1 U199 ( .A(n110), .B(n120), .Y(N90) );
  NOR2X1 U200 ( .A(n110), .B(n121), .Y(N89) );
  NOR2X1 U201 ( .A(n110), .B(n122), .Y(N88) );
  NOR2X1 U202 ( .A(n110), .B(n123), .Y(N87) );
  NOR2X1 U203 ( .A(n110), .B(n124), .Y(N86) );
  NOR2X1 U204 ( .A(n110), .B(n125), .Y(N85) );
  NOR2X1 U205 ( .A(n110), .B(n126), .Y(N84) );
  NOR2X1 U206 ( .A(n110), .B(n127), .Y(N83) );
  NOR2X1 U207 ( .A(n110), .B(n128), .Y(N82) );
  NOR2X1 U208 ( .A(n110), .B(n129), .Y(N81) );
  NOR2X1 U209 ( .A(n110), .B(n130), .Y(N80) );
  NOR2X1 U210 ( .A(n110), .B(n131), .Y(N79) );
  NOR2X1 U211 ( .A(n110), .B(n132), .Y(N78) );
  OAI21X1 U212 ( .A(n133), .B(n134), .C(n135), .Y(N158) );
  NAND2X1 U213 ( .A(n136), .B(n137), .Y(n134) );
  OAI21X1 U214 ( .A(n138), .B(n139), .C(n135), .Y(N157) );
  OAI21X1 U215 ( .A(n140), .B(n141), .C(n135), .Y(N156) );
  OAI21X1 U216 ( .A(n142), .B(n143), .C(n135), .Y(N155) );
  NAND2X1 U217 ( .A(haddr[3]), .B(n133), .Y(n143) );
  OAI21X1 U218 ( .A(n141), .B(n105), .C(n135), .Y(N154) );
  NAND3X1 U219 ( .A(haddr[2]), .B(n145), .C(n146), .Y(n141) );
  NOR2X1 U220 ( .A(n137), .B(n147), .Y(n146) );
  INVX1 U221 ( .A(n148), .Y(n145) );
  OAI21X1 U222 ( .A(n137), .B(n149), .C(n135), .Y(N153) );
  NAND2X1 U223 ( .A(n136), .B(n133), .Y(n149) );
  OAI21X1 U224 ( .A(n137), .B(n150), .C(n135), .Y(N152) );
  NAND2X1 U225 ( .A(haddr[2]), .B(n136), .Y(n150) );
  INVX1 U226 ( .A(n138), .Y(n136) );
  NAND2X1 U227 ( .A(n151), .B(n147), .Y(n138) );
  INVX1 U228 ( .A(haddr[4]), .Y(n147) );
  OAI21X1 U229 ( .A(n142), .B(n139), .C(n135), .Y(N151) );
  NAND2X1 U230 ( .A(n133), .B(n137), .Y(n139) );
  INVX1 U231 ( .A(haddr[2]), .Y(n133) );
  OAI21X1 U232 ( .A(n142), .B(n152), .C(n135), .Y(N150) );
  OR2X1 U233 ( .A(state[1]), .B(state[0]), .Y(n135) );
  NAND2X1 U234 ( .A(haddr[2]), .B(n137), .Y(n152) );
  INVX1 U235 ( .A(haddr[3]), .Y(n137) );
  NAND2X1 U236 ( .A(haddr[4]), .B(n151), .Y(n142) );
  NOR2X1 U237 ( .A(n140), .B(n148), .Y(n151) );
  NAND3X1 U238 ( .A(n153), .B(n154), .C(n155), .Y(n148) );
  NOR2X1 U239 ( .A(haddr[6]), .B(n156), .Y(n155) );
  OR2X1 U240 ( .A(haddr[8]), .B(haddr[7]), .Y(n156) );
  INVX1 U241 ( .A(haddr[0]), .Y(n154) );
  NOR2X1 U242 ( .A(haddr[5]), .B(haddr[1]), .Y(n153) );
  NAND2X1 U243 ( .A(n157), .B(n158), .Y(n140) );
  NOR2X1 U244 ( .A(n159), .B(n160), .Y(n158) );
  NAND3X1 U245 ( .A(n161), .B(n162), .C(n163), .Y(n160) );
  NOR2X1 U246 ( .A(haddr[24]), .B(n164), .Y(n163) );
  OR2X1 U247 ( .A(haddr[26]), .B(haddr[25]), .Y(n164) );
  INVX1 U248 ( .A(haddr[21]), .Y(n162) );
  NOR2X1 U249 ( .A(haddr[23]), .B(haddr[22]), .Y(n161) );
  NAND3X1 U250 ( .A(n165), .B(n166), .C(n167), .Y(n159) );
  NOR2X1 U251 ( .A(haddr[30]), .B(n168), .Y(n167) );
  OR2X1 U252 ( .A(haddr[9]), .B(haddr[31]), .Y(n168) );
  INVX1 U253 ( .A(haddr[27]), .Y(n166) );
  NOR2X1 U254 ( .A(haddr[29]), .B(haddr[28]), .Y(n165) );
  NOR2X1 U255 ( .A(n169), .B(n170), .Y(n157) );
  NAND3X1 U256 ( .A(n171), .B(n172), .C(n173), .Y(n170) );
  NOR2X1 U257 ( .A(haddr[12]), .B(n174), .Y(n173) );
  OR2X1 U258 ( .A(haddr[14]), .B(haddr[13]), .Y(n174) );
  NOR2X1 U259 ( .A(haddr[11]), .B(haddr[10]), .Y(n171) );
  NAND3X1 U260 ( .A(n175), .B(n176), .C(n177), .Y(n169) );
  NOR2X1 U261 ( .A(haddr[18]), .B(n178), .Y(n177) );
  OR2X1 U262 ( .A(haddr[20]), .B(haddr[19]), .Y(n178) );
  INVX1 U263 ( .A(haddr[15]), .Y(n176) );
  NOR2X1 U264 ( .A(haddr[17]), .B(haddr[16]), .Y(n175) );
  NOR2X1 U265 ( .A(n105), .B(n179), .Y(N149) );
  NOR2X1 U266 ( .A(n105), .B(n180), .Y(N148) );
  NOR2X1 U267 ( .A(n105), .B(n181), .Y(N147) );
  NOR2X1 U268 ( .A(n105), .B(n182), .Y(N146) );
  NOR2X1 U269 ( .A(n105), .B(n183), .Y(N145) );
  NOR2X1 U270 ( .A(n105), .B(n184), .Y(N144) );
  NOR2X1 U271 ( .A(n105), .B(n185), .Y(N143) );
  NOR2X1 U272 ( .A(n105), .B(n186), .Y(N142) );
  NOR2X1 U273 ( .A(n105), .B(n187), .Y(N141) );
  NOR2X1 U274 ( .A(n105), .B(n188), .Y(N140) );
  NOR2X1 U275 ( .A(n111), .B(n105), .Y(N139) );
  INVX1 U276 ( .A(hwdata[21]), .Y(n111) );
  NOR2X1 U277 ( .A(n112), .B(n105), .Y(N138) );
  INVX1 U278 ( .A(hwdata[20]), .Y(n112) );
  NOR2X1 U279 ( .A(n113), .B(n105), .Y(N137) );
  INVX1 U280 ( .A(hwdata[19]), .Y(n113) );
  NOR2X1 U281 ( .A(n114), .B(n105), .Y(N136) );
  INVX1 U282 ( .A(hwdata[18]), .Y(n114) );
  NOR2X1 U283 ( .A(n115), .B(n105), .Y(N135) );
  INVX1 U284 ( .A(hwdata[17]), .Y(n115) );
  NOR2X1 U285 ( .A(n116), .B(n105), .Y(N134) );
  INVX1 U286 ( .A(hwdata[16]), .Y(n116) );
  NOR2X1 U287 ( .A(n117), .B(n105), .Y(N133) );
  INVX1 U288 ( .A(hwdata[15]), .Y(n117) );
  NOR2X1 U289 ( .A(n118), .B(n105), .Y(N132) );
  INVX1 U290 ( .A(hwdata[14]), .Y(n118) );
  NOR2X1 U291 ( .A(n119), .B(n105), .Y(N131) );
  INVX1 U292 ( .A(hwdata[13]), .Y(n119) );
  NOR2X1 U293 ( .A(n120), .B(n105), .Y(N130) );
  INVX1 U294 ( .A(hwdata[12]), .Y(n120) );
  NOR2X1 U295 ( .A(n121), .B(n105), .Y(N129) );
  INVX1 U296 ( .A(hwdata[11]), .Y(n121) );
  NOR2X1 U297 ( .A(n122), .B(n105), .Y(N128) );
  INVX1 U298 ( .A(hwdata[10]), .Y(n122) );
  NOR2X1 U299 ( .A(n123), .B(n105), .Y(N127) );
  INVX1 U300 ( .A(hwdata[9]), .Y(n123) );
  NOR2X1 U301 ( .A(n124), .B(n105), .Y(N126) );
  INVX1 U302 ( .A(hwdata[8]), .Y(n124) );
  NOR2X1 U303 ( .A(n125), .B(n105), .Y(N125) );
  INVX1 U304 ( .A(hwdata[7]), .Y(n125) );
  NOR2X1 U305 ( .A(n126), .B(n105), .Y(N124) );
  INVX1 U306 ( .A(hwdata[6]), .Y(n126) );
  NOR2X1 U307 ( .A(n127), .B(n105), .Y(N123) );
  INVX1 U308 ( .A(hwdata[5]), .Y(n127) );
  NOR2X1 U309 ( .A(n128), .B(n105), .Y(N122) );
  INVX1 U310 ( .A(hwdata[4]), .Y(n128) );
  NOR2X1 U311 ( .A(n129), .B(n105), .Y(N121) );
  INVX1 U312 ( .A(hwdata[3]), .Y(n129) );
  NOR2X1 U313 ( .A(n130), .B(n105), .Y(N120) );
  INVX1 U314 ( .A(hwdata[2]), .Y(n130) );
  NOR2X1 U315 ( .A(n131), .B(n105), .Y(N119) );
  INVX1 U316 ( .A(hwdata[1]), .Y(n131) );
  NOR2X1 U317 ( .A(n132), .B(n105), .Y(N118) );
  NAND2X1 U318 ( .A(state[1]), .B(n189), .Y(n144) );
  INVX1 U319 ( .A(hwdata[0]), .Y(n132) );
  NOR2X1 U320 ( .A(n110), .B(n179), .Y(N109) );
  INVX1 U321 ( .A(hwdata[31]), .Y(n179) );
  NOR2X1 U322 ( .A(n110), .B(n180), .Y(N108) );
  INVX1 U323 ( .A(hwdata[30]), .Y(n180) );
  NOR2X1 U324 ( .A(n110), .B(n181), .Y(N107) );
  INVX1 U325 ( .A(hwdata[29]), .Y(n181) );
  NOR2X1 U326 ( .A(n110), .B(n182), .Y(N106) );
  INVX1 U327 ( .A(hwdata[28]), .Y(n182) );
  NOR2X1 U328 ( .A(n110), .B(n183), .Y(N105) );
  INVX1 U329 ( .A(hwdata[27]), .Y(n183) );
  NOR2X1 U330 ( .A(n110), .B(n184), .Y(N104) );
  INVX1 U331 ( .A(hwdata[26]), .Y(n184) );
  NOR2X1 U332 ( .A(n110), .B(n185), .Y(N103) );
  INVX1 U333 ( .A(hwdata[25]), .Y(n185) );
  NOR2X1 U334 ( .A(n110), .B(n186), .Y(N102) );
  INVX1 U335 ( .A(hwdata[24]), .Y(n186) );
  NOR2X1 U336 ( .A(n110), .B(n187), .Y(N101) );
  INVX1 U337 ( .A(hwdata[23]), .Y(n187) );
  NOR2X1 U338 ( .A(n110), .B(n188), .Y(N100) );
  INVX1 U339 ( .A(hwdata[22]), .Y(n188) );
  NOR2X1 U340 ( .A(n189), .B(state[1]), .Y(n172) );
  INVX1 U341 ( .A(state[0]), .Y(n189) );
endmodule

