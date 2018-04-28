module InvMixColumns
(
	input wire clk,
	input wire n_rst,
	input wire enable,
	input wire [127:0] data_in,
	output wire [127:0] data_out
);

reg [127:0] ff_d, ff_q; 
reg [3:0] i, j, m, n;
genvar k, l;
reg [3:0] [3:0] [7:0] array;
reg [3:0] [3:0] [7:0] out_array; 

reg [3:0] [3:0] [7:0] mult1, mult2, mult3, mult4;
reg [3:0] [3:0] [7:0] add1, add2;

assign data_out = ff_q;

reg [3:0] [3:0] [7:0] matrix; 

always_comb
begin: CREATE_ARRAY
	matrix = '{
	{8'he, 8'h9, 8'hd, 8'hb},
   	{8'hb, 8'he, 8'h9, 8'hd},
 	{8'hd, 8'hb, 8'he, 8'h9},
 	{8'h9, 8'hd, 8'hb, 8'he}
	};

		for (i = 0; i <= 3; i++)
		begin
			for (j = 0; j <= 3; j++)
			begin
				array[j][i] = data_in[i * 32 + j * 8 +: 8]; //assign data vertically in the array. +: notation is a workaround for a compiler error.
			end
		end
	
end

always_ff @(posedge clk, negedge n_rst)
begin: OUTPUT_FF
	if (n_rst == 0)
	begin
		ff_q <= '0;
	end
	else
	begin
		if (enable)
			ff_q <= ff_d;
		else
			ff_q <= data_in;
	end
end

generate
	for (k = 0; k <= 3; k++)
	begin
		for (l = 0; l <= 3; l++)
		begin
			//matrix multiplication, with finite fields
			ff_mult_8bit MULT1(.mult1(matrix[3-l][3]), .mult2(array[0][k]), .result(mult1[l][k]));
			ff_mult_8bit MULT2(.mult1(matrix[3-l][2]), .mult2(array[1][k]), .result(mult2[l][k]));
			ff_mult_8bit MULT3(.mult1(matrix[3-l][1]), .mult2(array[2][k]), .result(mult3[l][k]));
			ff_mult_8bit MULT4(.mult1(matrix[3-l][0]), .mult2(array[3][k]), .result(mult4[l][k]));
			
			ff_add_8bit ADD1(.add1(mult1[l][k]), .add2(mult2[l][k]), .result(add1[l][k]));
			ff_add_8bit ADD2(.add1(add1[l][k]), .add2(mult3[l][k]), .result(add2[l][k]));
			ff_add_8bit ADD3(.add1(add2[l][k]), .add2(mult4[l][k]), .result(out_array[l][k]));
			
		end
	end
endgenerate


always_comb
begin: OUTPUT_LOGIC
	
	if (enable)
	begin	
		for (m = 0; m <= 3; m++)
		begin
			for (n = 0; n <= 3; n++)
			begin
				ff_d[120 - m * 32 - n * 8 +: 8] = out_array[3-n][3-m]; //convert array form back into parallel form
			end
		end

	end
	else
	begin
		ff_d = data_in;
	end
end

endmodule 

// module InvMixColumns
// (
// 	input wire clk,
// 	input wire n_rst,
// 	input wire enable,
// 	input wire [131:0] data_in,
// 	output wire [131:0] data_out
// );

// reg [131:0] ff_d, ff_q; 
// reg [3:0] i, j, m, n;
// genvar k, l;
// reg [3:0] [3:0] [7:0] array;
// reg [3:0] [3:0] [7:0] out_array; 

// reg [3:0] [3:0] [7:0] mult1, mult2, mult3, mult4;
// reg [3:0] [3:0] [7:0] add1, add2;
// reg [3:0] header;

// assign header = data_in[131:128];
// assign data_out = (ff_q[131:128] == 0) ? '0 : ff_q;

// reg [3:0] [3:0] [7:0] matrix; 

// always_comb
// begin: CREATE_ARRAY
// 	matrix = '{
// 	{8'he, 8'h9, 8'hd, 8'hb},
// 	{8'hb, 8'he, 8'h9, 8'hd},
// 	{8'hd, 8'hb, 8'he, 8'h9},
// 	{8'h9, 8'hd, 8'hb, 8'he}
// 	};
// 	if (enable)
// 	begin
// 		for (i = 0; i <= 3; i++)
// 		begin
// 			for (j = 0; j <= 3; j++)
// 			begin
// 				array[j][i] = data_in[i * 32 + j * 8 +: 8]; //assign data vertically in the array. +: notation is a workaround for a compiler error.
// 			end
// 		end
// 	end
// 	else
// 	begin
// 		array = array;
// 	end
// end

// always_ff @(posedge clk, negedge n_rst)
// begin: OUTPUT_FF
// 	if (n_rst == 0)
// 	begin
// 		ff_q <= '0;
// 	end
// 	else
// 	begin
// 		ff_q <= ff_d;
// 	end
// end

// generate
// 	for (k = 0; k <= 3; k++)
// 	begin
// 		for (l = 0; l <= 3; l++)
// 		begin
// 			//matrix multiplication, with finite fields
// 			ff_mult_8bit MULT1(.mult1(matrix[3-l][3]), .mult2(array[0][k]), .result(mult1[l][k]));
// 			ff_mult_8bit MULT2(.mult1(matrix[3-l][2]), .mult2(array[1][k]), .result(mult2[l][k]));
// 			ff_mult_8bit MULT3(.mult1(matrix[3-l][1]), .mult2(array[2][k]), .result(mult3[l][k]));
// 			ff_mult_8bit MULT4(.mult1(matrix[3-l][0]), .mult2(array[3][k]), .result(mult4[l][k]));
			
// 			ff_add_8bit ADD1(.add1(mult1[l][k]), .add2(mult2[l][k]), .result(add1[l][k]));
// 			ff_add_8bit ADD2(.add1(add1[l][k]), .add2(mult3[l][k]), .result(add2[l][k]));
// 			ff_add_8bit ADD3(.add1(add2[l][k]), .add2(mult4[l][k]), .result(out_array[l][k]));
			
// 		end
// 	end
// endgenerate


// always_comb
// begin: OUTPUT_LOGIC
	
// 	if (header != 10)
// 	begin	
// 		for (m = 0; m <= 3; m++)
// 		begin
// 			for (n = 0; n <= 3; n++)
// 			begin
// 				ff_d[120 - m * 32 - n * 8 +: 8] = out_array[3-n][3-m]; //convert array form back into parallel form
// 			end
// 		end

// 		if (enable)
// 		begin
// 			ff_d[131:128] = header; //add the header back onto the data
// 		end
// 		else
// 		begin
// 			ff_d[131:128] = ff_q[131:128];
// 		end
// 	end
// 	else
// 	begin
// 		ff_d = data_in;
// 	end
// end

// endmodule 
