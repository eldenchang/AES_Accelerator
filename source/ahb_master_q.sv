// $Id: $
// File name:   ahb_master.sv
// Created:     4/13/2018
// Author:      Kevin Du
// Lab Section: 1
// Version:     1.0  Initial Design Entry
// Description: AHB master


module ahb_master_q
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
	input wire [31:0] waddr,
	input wire [31:0] hrdata,
	input wire restart_check,
	output reg [31:0] haddr,
	output reg [31:0] shiftout,
	output reg shift_en,
	output reg end_block,
	//output wire [2:0] hburst,
	//output wire hmastlock,
	//output wire [2:0] hsize,
	//output wire [1:0] htrans,
	output reg [31:0] hwdata,
	output reg hwrite,
	output reg txshift_en
);
	typedef enum logic [2:0] {IDLE, WAIT, READ, WRITE, ERR} statetype;
	statetype state , next, temp;
	//reg [31:0] n_out, n_hwdata, n_haddr;
	//reg [31:0] n_hwdata, n_haddr;
	//reg [31:0] n_haddr;
	reg [1:0] count;
	reg [2:0] n_count;
	reg [31:0] check, n_check;
	reg next_end;
	//reg n_shift;

	always_ff @( posedge hclk, negedge hrst)
	begin
		if (hrst == 0)
		begin
			state <= IDLE;
			//hrdata <= 0;
			//hwdata <= 0;
			count <= 0;
			//haddr <= 0;
			check <= 0;
			end_block <=0;
			//shift_en <= 0;
			//shiftout <= 0;
		end
		else
		begin
			state <= next;
			//hrdata <= n_hrdata;
			//shiftout <= n_out;
			//hwdata <= n_hwdata;
			count <= n_count;
			//haddr <= n_haddr;
			check <= n_check;
			end_block<=next_end;
			//shift_en <= n_shift;
		end
	end

	always_comb
	begin
		next = state;
		//n_hwdata = hwdata;
		hwdata = shiftin;
		//n_haddr = haddr;\
		haddr = 0;
		n_count = count;
		next_end = end_block;
		temp = IDLE;
		n_check = check;
		shiftout = hrdata;
		hwrite = 0;
		//n_shift = 0;
		//n_out = shiftout;
		shift_en = 0;
		txshift_en = 0;
		case(state)
			IDLE:
			begin
				if(hready == 1)
				begin
					n_count = 0;
					if(enable == 1 && ahbMode == 1)
					begin
						hwrite = 1;
						next = WRITE;
					end						
					if(enable == 1 && ahbMode == 0)
					begin
						hwrite = 0;
						next = READ;
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
						next = ERR;
					end
					else
					begin
						if(n_count < 4)
						begin
							next = READ;
							haddr = raddr + 4 * n_count + n_check * 16;
							//n_shift = 1;
							shift_en = 1;
							n_count = n_count + 1;
						end
						else
						begin
							//n_shift = 0;
							shift_en = 0;
							n_check = n_check + 1;
							if(n_check >= size + 1)
							begin
								next_end = 1;
							end
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
						next = ERR;
					end
					else
					begin
						if(n_count < 4)
						begin
							hwrite = 1;
							next = WRITE;
							txshift_en = 1;
							haddr = waddr + 4 * n_count + (n_check-2) * 16;
							n_count = n_count + 1;
						end
						else
						begin
							hwrite = 0;
							txshift_en = 0;
							next = IDLE;	
						end
					end
				end
			end
			ERR:
			begin
				if(hready == 1 && hresp == 0)
				begin
					next = IDLE;
				end
				else
				begin
					next = ERR;
				end
			end
		endcase
		if (restart_check==1'b1)
		begin
			next_end = 0;
			n_check = 0;
		end
	end
endmodule
