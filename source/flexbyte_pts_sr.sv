module flexbyte_pts_sr
#(
	parameter MSB = 1, //boolean, is MSB shifted out first?
	parameter NUM_BYTES_IN = 16, //number of bytes passed to shift register
	parameter NUM_BYTES_OUT = 4 //number of bytes shifted out of shift register
)
(
	input wire clk,
	input wire n_rst,
	input wire shift_enable,
	input wire load_enable,
	input wire [127:0] data_in,
	output reg [31:0] data_out
);

initial
begin
	assert(NUM_BYTES_IN > NUM_BYTES_OUT) //input size must be larger than output
	else
		$fatal("Input bytes must be larger than output bytes.");
	
	assert(NUM_BYTES_IN % NUM_BYTES_OUT == 0) //this shouldn't break SR, but is likely a mistake by the user
	else
		$warning("Number of output bytes is not a multiple of input bytes. Is this a mistake?");
	
end

reg [127:0] curr_data, next_data;

always_ff @(posedge clk, negedge n_rst) begin
	if(!n_rst) begin
		curr_data <= '0;

	end
	else begin
		curr_data <= next_data;
	end
end

always_comb begin
	if(load_enable)
		next_data = data_in;
	else if(MSB && shift_enable) 
		next_data = {curr_data[95:0], 32'b0};
	else if(shift_enable && !MSB)
		next_data = {32'b0, curr_data[127:32]};
	else
		next_data = curr_data;
end

assign data_out = (!n_rst) ? 32'b0 : (MSB ? curr_data[127:96] : curr_data[31:0]);

endmodule