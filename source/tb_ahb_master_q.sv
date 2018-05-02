// $Id: $
// File name:   tb_usb_receiver.sv
// Created:     2/27/2018
// Author:      Kevin Du
// Lab Section: 1
// Version:     1.0  Initial Design Entry
// Description: usb receiver test bench

`timescale 1ns / 100ps

module tb_ahb_master_q();

    // Define local parameters used by the test bench
    localparam CLK_PERIOD = 10;
    localparam DELAY = 1;
   
    // Declare DUT portmap signals
	reg tb_clk;
	reg tb_nrst;
	reg tb_hready;
	reg tb_hresp;
	reg tb_ahbMode;
	reg tb_enable;
	reg [31:0] tb_hrdata;
	reg [31:0] tb_haddr;
	reg [31:0] tb_hwdata;
	reg tb_hwrite;
	reg [31:0] tb_size;
	reg [31:0] tb_shiftin;
	reg [31:0] tb_raddr;
	reg [31:0] tb_waddr;
	reg [31:0] tb_shiftout;
	reg tb_shift_en;
	reg tb_end_block;

	reg [127:0]	block_to_encrypt = 128'habcd52c2f9c6f303030f83031ab61040;
	reg [127:0]	block_to_decrypt = 128'h123456789abcdef0ffff112233562468;

	reg [127:0]	block_to_encrypt2 = 128'h3243f6a8885a308d313198a2e0370734;
	reg [127:0]	block_to_decrypt2 = 128'h00112233445566778899aabbccddeeff;

	reg [127:0]	block_to_encrypt3 = 128'h3243f6a8885a308d313198a2e0370734;
	reg [127:0]	block_to_decrypt3 = 128'hab12af56aa5612db23621ab411543312;

	reg [127:0]	encrypted_output = '0;
	reg [127:0]	decrypted_output = '0;
	reg [127:0]	encrypted_output2 = '0;
	reg [127:0]	decrypted_output2 = '0;
	reg [127:0]	encrypted_output3 = '0;
	reg [127:0]	decrypted_output3 = '0;
   
    // Clock generation block
    always
    begin
        tb_clk = 1'b0;
        #(CLK_PERIOD/2.0);
        tb_clk = 1'b1;
        #(CLK_PERIOD/2.0);
    end
   
    // DUT Port map
    ahb_master_q DUT(.hclk(tb_clk), .hrst(tb_nrst), .hready(tb_hready), .hresp(tb_hresp), .ahbMode(tb_ahbMode), .enable(tb_enable), .hrdata(tb_hrdata), .haddr(tb_haddr), .hwdata(tb_hwdata), .hwrite(tb_hwrite), .shiftin(tb_shiftin), .size(tb_size), .raddr(tb_raddr), .waddr(tb_waddr), .shiftout(tb_shiftout), .shift_en(tb_shift_en), .end_block(tb_end_block));
   
always
begin 
	if (tb_haddr==32'd6 && tb_hwrite==0)
		tb_hrdata = block_to_encrypt[127:96];
	if (tb_haddr==32'd10 && tb_hwrite==0)
		tb_hrdata = block_to_encrypt[95:64];
	if (tb_haddr==32'd14 && tb_hwrite==0)
		tb_hrdata = block_to_encrypt[63:32];
	if (tb_haddr==32'd18 && tb_hwrite==0)
		tb_hrdata = block_to_encrypt[31:0];

	if (tb_haddr==32'd22 && tb_hwrite==0)
		tb_hrdata = block_to_decrypt[127:96];
	if (tb_haddr==32'd26 && tb_hwrite==0)
		tb_hrdata = block_to_decrypt[95:64];
	if (tb_haddr==32'd30 && tb_hwrite==0)
		tb_hrdata = block_to_decrypt[63:32];
	if (tb_haddr==32'd34 && tb_hwrite==0)
		tb_hrdata = block_to_decrypt[31:0];


	if (tb_haddr==32'd38 && tb_hwrite==0)
		tb_hrdata = block_to_encrypt2[127:96];
	if (tb_haddr==32'd42 && tb_hwrite==0)
		tb_hrdata = block_to_encrypt2[95:64];
	if (tb_haddr==32'd46 && tb_hwrite==0)
		tb_hrdata = block_to_encrypt2[63:32];
	if (tb_haddr==32'd50 && tb_hwrite==0)
		tb_hrdata = block_to_encrypt2[31:0];

	if (tb_haddr==32'd54 && tb_hwrite==0)
		tb_hrdata = block_to_decrypt2[127:96];
	if (tb_haddr==32'd58 && tb_hwrite==0)
		tb_hrdata = block_to_decrypt2[95:64];
	if (tb_haddr==32'd62 && tb_hwrite==0)
		tb_hrdata = block_to_decrypt2[63:32];
	if (tb_haddr==32'd66 && tb_hwrite==0)
		tb_hrdata = block_to_decrypt2[31:0];

	if (tb_haddr==32'd70 && tb_hwrite==0)
		tb_hrdata = block_to_encrypt3[127:96];
	if (tb_haddr==32'd74 && tb_hwrite==0)
		tb_hrdata = block_to_encrypt3[95:64];
	if (tb_haddr==32'd78 && tb_hwrite==0)
		tb_hrdata = block_to_encrypt3[63:32];
	if (tb_haddr==32'd82 && tb_hwrite==0)
		tb_hrdata = block_to_encrypt3[31:0];

	if (tb_haddr==32'd86 && tb_hwrite==0)
		tb_hrdata = block_to_decrypt3[127:96];
	if (tb_haddr==32'd90 && tb_hwrite==0)
		tb_hrdata = block_to_decrypt3[95:64];
	if (tb_haddr==32'd94 && tb_hwrite==0)
		tb_hrdata = block_to_decrypt3[63:32];
	if (tb_haddr==32'd98 && tb_hwrite==0)
		tb_hrdata = block_to_decrypt3[31:0];





	if (tb_haddr==32'd6000000 && tb_hwrite==1)
		encrypted_output[127:96]=tb_hwdata;
	if (tb_haddr==32'd6000004 && tb_hwrite==1)
		encrypted_output[95:64]=tb_hwdata;
	if (tb_haddr==32'd6000008 && tb_hwrite==1)
		encrypted_output[63:32]=tb_hwdata;
	if (tb_haddr==32'd6000012 && tb_hwrite==1)
		encrypted_output[31:0]=tb_hwdata;

	if (tb_haddr==32'd6000016 && tb_hwrite==1)
		 decrypted_output[127:96]=tb_hwdata;
	if (tb_haddr==32'd6000020 && tb_hwrite==1)
		 decrypted_output[95:64]=tb_hwdata;
	if (tb_haddr==32'd6000024 && tb_hwrite==1)
		 decrypted_output[63:32]=tb_hwdata;
	if (tb_haddr==32'd6000028 && tb_hwrite==1)
		 decrypted_output[31:0]=tb_hwdata;



	if (tb_haddr==32'd6000032 && tb_hwrite==1)
		encrypted_output2[127:96]=tb_hwdata;
	if (tb_haddr==32'd6000036 && tb_hwrite==1)
		encrypted_output2[95:64]=tb_hwdata;
	if (tb_haddr==32'd6000040 && tb_hwrite==1)
		encrypted_output2[63:32]=tb_hwdata;
	if (tb_haddr==32'd6000044 && tb_hwrite==1)
		encrypted_output2[31:0]=tb_hwdata;

	if (tb_haddr==32'd6000048 && tb_hwrite==1)
		 decrypted_output2[127:96]=tb_hwdata;
	if (tb_haddr==32'd6000052 && tb_hwrite==1)
		 decrypted_output2[95:64]=tb_hwdata;
	if (tb_haddr==32'd6000056 && tb_hwrite==1)
		 decrypted_output2[63:32]=tb_hwdata;
	if (tb_haddr==32'd6000060 && tb_hwrite==1)
		 decrypted_output2[31:0]=tb_hwdata;



	if (tb_haddr==32'd6000064 && tb_hwrite==1)
		encrypted_output3[127:96]=tb_hwdata;
	if (tb_haddr==32'd6000068 && tb_hwrite==1)
		encrypted_output3[95:64]=tb_hwdata;
	if (tb_haddr==32'd6000072 && tb_hwrite==1)
		encrypted_output3[63:32]=tb_hwdata;
	if (tb_haddr==32'd6000076 && tb_hwrite==1)
		encrypted_output3[31:0]=tb_hwdata;

	if (tb_haddr==32'd6000080 && tb_hwrite==1)
		 decrypted_output3[127:96]=tb_hwdata;
	if (tb_haddr==32'd6000084 && tb_hwrite==1)
		 decrypted_output3[95:64]=tb_hwdata;
	if (tb_haddr==32'd6000088 && tb_hwrite==1)
		 decrypted_output3[63:32]=tb_hwdata;
	if (tb_haddr==32'd6000092 && tb_hwrite==1)
		 decrypted_output3[31:0]=tb_hwdata;

	#(CLK_PERIOD);
end

	task delay;
	begin
		tb_enable = 1;
		@(posedge tb_clk)
		tb_enable = 0;
		@(posedge tb_clk)
		@(negedge tb_clk)
		@(posedge tb_clk)
		@(negedge tb_clk)
	end
	endtask

    // Test bench main process
	initial
	begin
		tb_nrst = 0;
		tb_hready = 1;
		tb_hresp = 0;
		tb_enable = 0;
		tb_ahbMode = 0;
		tb_hrdata = 0;
		tb_haddr = 0;
		tb_hwdata = 0;
		tb_hwrite = 0;
		tb_size = 0;
		tb_shiftin = 0;
		tb_raddr = 0;
		tb_waddr = 0;
		tb_shiftout = 0;
		tb_shift_en = 0;
		tb_end_block = 0;

		#(CLK_PERIOD);
		@(posedge tb_clk);
		
		@(negedge tb_clk)

		tb_raddr = 32'h0;
		tb_ahbMode = 0;
		delay();

		tb_raddr = 32'h4;
		delay();

		tb_raddr = 32'h8;
		delay();

		tb_raddr = 32'hc;
		delay();

		tb_raddr = 32'h1;
		delay();

		tb_raddr = 32'h14;
		delay();

		tb_raddr = 32'h18;
		delay();

		tb_raddr = 32'h1c;
		delay();
	
	end

endmodule
