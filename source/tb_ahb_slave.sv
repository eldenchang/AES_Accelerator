
`timescale 1ns / 10ps

module tb_ahb_slave ();

		
		
		localparam	CHECK_DELAY = 1;
		localparam	CLK_PERIOD = 2.5;
		localparam 	local=28;
		reg  tb_hclk;
		reg  tb_hresetn;
		reg [31:0] tb_haddr;
		reg [31:0] tb_hwdata;
		reg tb_ready;
		reg  tb_readyout;
		reg tb_hwrite;
		reg [31:0] tb_hrdata;
		reg [31:0] tb_expected_output;
		
		

	ahb_slave DUT( .hclk(tb_hclk), .hresetn(tb_hresetn), .haddr(tb_haddr), .hwdata(tb_hwdata), .ready(tb_ready), .readyout(tb_readyout), .hwrite(tb_hwrite), .hrdata(tb_hrdata) );

always
begin
	tb_clk = 1'b0;
	#(CLK_PERIOD/2.0);
	tb_clk = 1'b1;
	#(CLK_PERIOD/2.0);
end

initial 
begin
	tb_hresetn=1'b0;
	

	@(posedge tb_clk)
	@(posedge tb_clk)

//TESTCASE 1

	tb_hresetn=1'b1;
	tb_haddr=32'b00000000000000000000000000000000;
	tb_hw_data=32'b00000000000000000000000000000010;
	tb_hwrite=1'b1;
	@(posedge tb_hclk)
	tb_hready=1'b1;
	@(posedge tb_clk)
	@(negedge tb_clk)
	tb_expected_output=32'b00000000000000000000000000000010;
	
	assert((tb_data_read_loc==tb_expected_output) )
$info("PASSED");
else
$error("FAILED");













