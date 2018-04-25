
`timescale 1ns / 10ps

module tb_ahb_slave ();

		
		
		localparam	CHECK_DELAY = 1;
		localparam	CLK_PERIOD = 2.5;
		reg  tb_hclk;
		reg  tb_hresetn;
		reg [31:0] tb_haddr;
		reg [31:0] tb_hwdata;
		reg tb_hready;
		reg  tb_hreadyout;
		reg tb_hwrite;
		reg [31:0] tb_hrdata;
		reg [31:0] tb_data_read_loc;
		reg [31:0] tb_data_write_loc;
		reg [127:0] tb_key;
		reg [1:0] tb_flag;
		reg [31:0] tb_size_data;
	int testcase;


	ahb_slave DUT( .hclk(tb_hclk), .hresetn(tb_hresetn), .haddr(tb_haddr), .hwdata(tb_hwdata), .hready(tb_hready), .hreadyout(tb_hreadyout), .hwrite(tb_hwrite), .hrdata(tb_hrdata), .data_read_loc(tb_data_read_loc), .data_write_loc(tb_data_write_loc), .key(tb_key), .flag(tb_flag), .size_data(tb_size_data)) ;

always
begin
	tb_hclk = 1'b0;
	#(CLK_PERIOD/2.0);
	tb_hclk = 1'b1;
	#(CLK_PERIOD/2.0);
end

initial 
begin
	tb_hresetn=1'b0;
	

	@(posedge tb_hclk)
	@(posedge tb_hclk)


//TESTCASE 1
	testcase=1;
	tb_hresetn=1'b1;
	tb_haddr=32'b00000000000000000000000000000000;
	tb_hwdata=32'b00000000000000000000000000000010;
	tb_hwrite=1'b1;
	@(posedge tb_hclk)
	tb_hready=1'b1;
	@(posedge tb_hclk)
	@(negedge tb_hclk)
	
	assert((tb_data_read_loc==32'b00000000000000000000000000000010) )
$info("PASSED");
else
$error("FAILED");
	

//RESET
	tb_hresetn=1'b0;	

	@(posedge tb_hclk)
	@(posedge tb_hclk)


//TESTCASE 2
	testcase=2;
	tb_hresetn=1'b1;
	tb_haddr=32'b00000000000000000000000000000100;
	tb_hwdata=32'b0000000000000000000000000000110;
	tb_hwrite=1'b1;
	@(posedge tb_hclk)
	tb_hready=1'b1;
	@(posedge tb_hclk)
	@(negedge tb_hclk)
	
	assert((tb_data_write_loc==32'b0000000000000000000000000000110) )
$info("PASSED");
else
$error("FAILED");



	tb_hresetn=1'b0;
	

	@(posedge tb_hclk)
	@(posedge tb_hclk)



//TESTCASE 3
	testcase=3;
	tb_hresetn=1'b1;
	tb_haddr=32'b00000000000000000000000000001000;
	tb_hwdata=32'b0000000000000000000000000000111;
	tb_hwrite=1'b1;
	@(posedge tb_hclk)
	tb_hready=1'b1;
	@(posedge tb_hclk)
	@(negedge tb_hclk)
	
	assert((tb_key[127:96]==32'b0000000000000000000000000000111) )
$info("PASSED");
else
$error("FAILED");


//RESET
	tb_hresetn=1'b0;
	

	@(posedge tb_hclk)
	@(posedge tb_hclk)


//TESTCASE 4
	testcase=4;
	tb_hresetn=1'b1;
	tb_haddr=32'b00000000000000000000000000001100;
	tb_hwdata=32'b0000000000000000000000000000111;
	tb_hwrite=1'b1;
	@(posedge tb_hclk)
	tb_hready=1'b1;
	@(posedge tb_hclk)
	@(negedge tb_hclk)
	
	assert((tb_key[95:64]==32'b0000000000000000000000000000111) )
$info("PASSED");
else
$error("FAILED");


//RESET
	tb_hresetn=1'b0;
	

	@(posedge tb_hclk)
	@(posedge tb_hclk)

//TESTCASE 5
	testcase=5;
	tb_hresetn=1'b1;
	tb_haddr=32'b00000000000000000000000000010000;
	tb_hwdata=32'b0000000000000000000000000000111;
	tb_hwrite=1'b1;
	@(posedge tb_hclk)
	tb_hready=1'b1;
	@(posedge tb_hclk)
	@(negedge tb_hclk)
	
	assert((tb_key[63:32]==32'b0000000000000000000000000000111) )
$info("PASSED");
else
$error("FAILED");

//RESET
	tb_hresetn=1'b0;
	

	@(posedge tb_hclk)
	@(posedge tb_hclk)

//TESTCASE 6
	testcase=6;
	tb_hresetn=1'b1;
	tb_haddr=32'b00000000000000000000000000010100;
	tb_hwdata=32'b0000000000000000000000000000111;
	tb_hwrite=1'b1;
	@(posedge tb_hclk)
	tb_hready=1'b1;
	@(posedge tb_hclk)
	@(negedge tb_hclk)
	
	assert((tb_key[31:0]==32'b0000000000000000000000000000111) )
$info("PASSED");
else
$error("FAILED");

//RESET
	tb_hresetn=1'b0;
	

	@(posedge tb_hclk)
	@(posedge tb_hclk)


//TESTCASE 7
	testcase=7;
	tb_hresetn=1'b1;
	tb_haddr=32'b00000000000000000000000000011000;
	tb_hwdata=32'b0000000000000000000000000000101;
	tb_hwrite=1'b1;
	@(posedge tb_hclk)
	tb_hready=1'b1;
	@(posedge tb_hclk)
	@(negedge tb_hclk)

	
	assert((tb_size_data==32'b0000000000000000000000000000101) )
$info("PASSED");
else
$error("FAILED");

//RESET
	tb_hresetn=1'b0;
	

	@(posedge tb_hclk)
	@(posedge tb_hclk)



//TESTCASE 8
	testcase=8;
	tb_hresetn=1'b1;
	tb_haddr=32'b00000000000000000000000000011100;
	tb_hwdata=32'b0000000000000000000000000000101;
	tb_hwrite=1'b1;
	@(posedge tb_hclk)
	tb_hready=1'b1;
	@(posedge tb_hclk)
	@(negedge tb_hclk)

	
	assert((tb_flag==2'b01) )
$info("PASSED");
else
$error("FAILED");
//RESET
	tb_hresetn=1'b0;
	

	@(posedge tb_hclk)
	@(posedge tb_hclk)

//TESTCASE 9
	testcase=9;
	tb_hresetn=1'b1;
	tb_haddr=32'b00000000000000000000000000011100;
	tb_hwdata=32'b0000000000000000000000000000100;
	tb_hwrite=1'b1;
	@(posedge tb_hclk)
	tb_hready=1'b1;
	@(posedge tb_hclk)
	@(negedge tb_hclk)

	
	assert((tb_flag==2'b00) )
$info("PASSED");
else
$error("FAILED");
//RESET
	tb_hresetn=1'b0;
	

	@(posedge tb_hclk)
	@(posedge tb_hclk)

//TESTCASE 10
	testcase=10;
	tb_hresetn=1'b1;
	tb_haddr=32'b00000000000000000000000000011100;
	tb_hwdata=32'b0000000000000000000000000000110;
	tb_hwrite=1'b1;
	@(posedge tb_hclk)
	tb_hready=1'b1;
	@(posedge tb_hclk)
	@(negedge tb_hclk)

	
	assert((tb_flag==2'b10) )
$info("PASSED");
else
$error("FAILED");
//RESET
	tb_hresetn=1'b0;
	

	@(posedge tb_hclk)
	@(posedge tb_hclk)

//TESTCASE 11
	testcase=11;
	tb_hresetn=1'b1;
	tb_haddr=32'b00000000000000000000000000011100;
	tb_hwdata=32'b0000000000000000000000000000111;
	tb_hwrite=1'b1;
	@(posedge tb_hclk)
	tb_hready=1'b1;
	@(posedge tb_hclk)
	@(negedge tb_hclk)

	
	assert((tb_flag==2'b11) )
$info("PASSED");
else
$error("FAILED");
end
endmodule
