module PreAddKey
(
	input wire clk,
	input wire n_rst,
	input wire enable,
	input wire [127:0] data_in,
	input wire [127:0] orig_key,
	output wire [127:0] data_out
);


reg [127:0] ff_d, ff_q; //output FF

assign data_out = ff_q;

always_ff @(posedge clk, negedge n_rst)
begin: OUTPUT_FF
	if (n_rst == 0)
	begin
		ff_q <= '0;
	end
	else
	begin
		ff_q <= ff_d;
	end
end

always_comb
begin: OUTPUT_LOGIC
	if (enable == 1)
	begin
		ff_d[127:0] = orig_key ^ data_in[127:0];
	end
	else
	begin
		ff_d = ff_q;
	end
end
endmodule