// $Id: $
// File name:   ahb_master.sv
// Created:     4/13/2018
// Author:      Kevin Du
// Lab Section: 1
// Version:     1.0  Initial Design Entry
// Description: AHB master


module ahb_master
(
	input wire hclk,
	input wire hrst,
	input wire hready,
	input wire hresp,
	input wire ahbMode, //if 0 fetch, if 1 write
	input wire enable,  //if 0 wait, if 1 resume
	input reg [31:0] hrdata,
	output reg [31:0] haddr,
	//output wire [2:0] hburst,
	//output wire hmastlock,
	//output wire [2:0] hsize,
	//output wire [1:0] htrans,
	output reg [31:0] hwdata,
	output reg hwrite
);
	typedef enum logic [1:0] {WAIT, READ, WRITE, ERROR} statetype;
	statetype state , next, temp;
	reg [31:0] n_hrdata, n_hwdata;

	always_ff @( posedge clk, negedge n_rst)
	begin
		if (n_rst == 0)
		begin
			state <= WAIT;
			hrdata <= 0;
			hwdata <= 0;
		end
		else
		begin
			state <= next;
			hrdata <= n_hrdata;
			hwdata <= n_hwdata;
		end
	end

	always_comb
	begin
		next = state;
		n_hrdata = hrdata;
		n_hwdata = hwdata;
		case(state)
			WAIT:
			begin
				if(hready == 1)
					next = temp;
				if(hready == 0)
					next = WAIT;
				if(enable = 1 && ahbMode == 1)
					next = WRITE;
				if(enable = 1 && ahbMode == 0)
					next = READ;
			end
			READ:
			begin
				if(hready == 0)
					temp = READ;
					next = WAIT;
				if(hresp == 1)
					next = ERROR;
				else
					n_haddr = n_hrdata;
			end
			WRITE:
			begin
				if(hready == 0)
					temp = WRITE;
					next = WAIT;
					hwrite = 1;
				if(hresp == 1)
					next = ERROR;
				else
					n_hwdata = n_hrdata;
			end
			ERROR:
			begin
				if(hready == 1)
					next = WAIT;
			end
		endcase
	end
endmodule
