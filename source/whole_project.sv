module whole_project(
	input wire hclk,
	input wire hrst,
	input wire hready_master,
	input wire hresp_master,
	input reg [31:0] hrdata_master,
	output reg [31:0] haddr_master,
	output reg [31:0] hwdata_master,
	output reg hwrite_master,
	input wire [31:0] haddr_slave,
	input wire hwrite_slave,
	input wire hready_slave,
	input wire [31:0] hwdata_slave,
	output reg hreadyout_slave,
	output reg [31:0] hrdata_slave
);
wire ahbMode,ahb_shift;

ahb_slave slave_interface(.hclk(hclk),.hresetn(hrst),.haddr(haddr_slave),.hwrite(hwrite_slave),.hready(hready_slave),.hwdata(hwdata_slave),.hreadyout(hreadyout_slave),hrdata(hrdata_slave));
ahb_master master_interface(.hclk(hclk), .hrst(hrst), .hready(hready_master), .hresp(hresp_master), .ahbMode(ahbMode), .enable(ahb_shift), .hrdata(hrdata_master), .haddr(haddr_master), .hwdata(hwdata_master), .hwrite(hwrite_master));





endmodule