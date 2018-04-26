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
	input wire [31:0] size,
	input wire [31:0] shiftin,
	input wire [31:0] raddr,
	input wire [31:] waddr,
	input wire [31:0] hrdata,
	output reg [31:0] haddr,
	output reg [31:0] shiftout,
	output reg shift_en,
	output reg end_block,
	//output wire [2:0] hburst,
	//output wire hmastlock,
	//output wire [2:0] hsize,
	//output wire [1:0] htrans,
	output reg [31:0] hwdata,
	output reg hwrite
);
	typedef enum logic [1:0] {IDLE, WAIT, READ, WRITE, ERROR} statetype;
	statetype state , next, temp;
	reg [31:0] n_hrdata, n_hwdata, n_haddr;
	reg [3:0] count, n_count;
	reg [31:0] check;

	always_ff @( posedge clk, negedge n_rst)
	begin
		if (n_rst == 0)
		begin
			state <= WAIT;
			hrdata <= 0;
			hwdata <= 0;
			count <= 0;
			haddr <= 0;
			check <= 0;
		end
		else
		begin
			state <= next;
			hrdata <= n_hrdata;
			hwdata <= n_hwdata;
			count <= n_count;
			haddr = n_haddr;
		end
	end

	always_comb
	begin
		next = state;
		n_hrdata = hrdata;
		n_hwdata = hwdata;
		n_haddr = haddr;
		n_count = count;
		end_block = 0;
		case(state)
			IDLE:
			begin
				if(hready == 1)
				begin
					n_count = 0;
					if(enable = 1 && ahbMode == 1)
					begin
						hwrite = 1;
						next = WRITE;
					end						
					if(enable = 1 && ahbMode == 0)
					begin
						hwrite = 0;
						next = READ;
						check = check + 1;
						if(check == size)
						begin
							enblock = 1;
						end
					end
						
				end
			end
			WAIT:
			begin
				if(hready == 0)
				begin
					next = WAIT;
				end
				else
				begin
					next = temp;
				end
			end
			READ:
			begin
				if(hready == 0)
				begin
					temp = READ;
					next = WAIT;
				end
				else
				begin
					if(hresp == 1)
					begin
						next = ERROR;
					end
					else
					begin
						if(count <= 4)
						begin
							n_count = n_count + 1;
							next = READ;
							n_haddr = raddr;
							shiftout = n_hrdata
						end
						else
						begin
							next = IDLE;
						end
					end		
				end
			end
			WRITE:
			begin
				if(hready == 0)
				begin
					temp = WRITE;
					next = WAIT;
				end
				else
				begin
					if(hresp == 1)
					begin
						next = ERROR;
					end
					else
					begin
						if(count <= 4)
						begin
							n_count = n_count + 1;
							next = WRITE;
							n_hwdata = shiftin;
							n_haddr = waddr;
						end
						else
						begin
							next = IDLE;	
						end
					end
				end
			end
			ERROR:
			begin
				if(hready == 1)
				begin
					next = IDLE;
				end
			end
		endcase
	end
endmodule
