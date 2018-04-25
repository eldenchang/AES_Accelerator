module ahb_slave

(
input wire hclk,
input wire hresetn,
input wire [31:0] haddr,
input wire hwrite,
input wire hready,
input wire [31:0] hwdata,
output wire hreadyout,
output reg [31:0] hrdata,
output reg [31:0] data_read_loc,
output reg [31:0] data_write_loc,
output reg [127:0] key,
output reg [1:0] flag,
output reg [31:0] size_data

);

assign hreadyout=1;
wire [21:0] localaddr=22'b0000000000000000000000;
reg [31:0] next_data_read_loc;
reg [31:0] next_data_write_loc;
reg [127:0] next_key;
reg [1:0] next_flag;
reg [31:0] next_size_data;
reg [31:0] next_hrdata;

typedef enum logic [2:0] {IDLE,WRITE,READ} state_type;
state_type state,nextstate;



always_comb 
begin :Next_state
nextstate=state;
case (state)
IDLE:
begin
if (hready==1)
begin
	if (hwrite==1)
		nextstate = WRITE;
	else
		 nextstate = READ;
end
	else
		nextstate =IDLE;
end
WRITE:
begin
if ( hready==0)
	nextstate=IDLE;
else 
begin
	if (hwrite==1)
	nextstate=WRITE;
	else
	nextstate=READ;
end
end
READ:
begin
if (hready==0)
	nextstate=IDLE;
else 
begin
	if (hwrite==0)
	nextstate=READ;
	else
	nextstate=WRITE;
end
end
endcase
end

always_comb
begin
next_data_read_loc='0;
next_data_write_loc='0;
next_key='0;
next_flag='0;
next_size_data='0;
next_hrdata='0;
case (state)

WRITE:
begin
if (haddr[31:9]==localaddr)
begin
if (haddr[8:0] == 8'h00)
next_data_read_loc=hwdata;
else if (haddr[8:0] == 8'h04)
next_data_write_loc=hwdata;
else if (haddr[8:0] == 8'h08)
next_key[127:96]=hwdata;
else if (haddr[8:0] == 8'h0C)
next_key[95:64]=hwdata;
else if (haddr[8:0] == 8'h10)
next_key[63:32]=hwdata;
else if (haddr[8:0] == 8'h14)
next_key[31:0]=hwdata;
else if (haddr[8:0] == 8'h18)
next_size_data=hwdata;
else if (haddr[8:0] == 8'h1C)
next_flag=hwdata[1:0];
end
end
READ:
begin
if (haddr[8:0] == 8'h1C )
next_hrdata=hwdata;
end

IDLE:
begin
next_data_read_loc='0;
next_data_write_loc='0;
next_key='0;
next_flag='0;
next_size_data='0;
next_hrdata='0;
end
endcase
end

assign data_read_loc=next_data_read_loc;
assign data_write_loc=next_data_write_loc;
assign key=next_key;
assign size_data=next_size_data;
assign flag=next_flag;
assign hrdata=next_hrdata;


always_ff @(posedge hclk, negedge hresetn)
begin
if (hresetn==1'b0)
state<=IDLE;
else
state<=nextstate;
end

endmodule



