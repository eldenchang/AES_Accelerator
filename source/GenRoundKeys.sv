module GenRoundKeys
	(
		input wire clk,
		input wire n_rst,
		input wire chg_key,       //from controller, load new key
		input wire [127:0] rx_key,   //from rx_SR module
		input wire [3:0] cur_round,  //from mixColumns module
		output wire [127:0] cur_key, //output to addRoundKey module
		output wire [127:0] orig_key, //output to preAddKey module
		output wire change_key_done   //is the key finished changing?
	);
	
	reg [127:0] cur_ff_d, cur_ff_q, orig_ff_d, orig_ff_q; //define input/output of FF's
	reg [1279:0] KeySchedule; //the key schedule
	reg [3:0] round_ct;
	bit [127:0] n_roundKey; 
	reg [3:0] round_d, round_q; //maintain cur_key's corresponding round
	reg update, reset; //flag indicating to update key rounds, or reset FF's to original key
	
	reg [7:0] input1, input2, input3, input4; //inputs to SBox
	reg [7:0] output1, output2, output3, output4; //outputs to SBox
	reg change_key;
	
	//assign cur_key = cur_ff_q;
	assign orig_key = orig_ff_q;
	assign change_key_done = change_key;
	assign cur_key = KeySchedule[(127 * cur_round - 127) +: 128];
	
	SBox SBOX1(.data_in(input1), .data_out(output1));
	SBox SBOX2(.data_in(input2), .data_out(output2));
	SBox SBOX3(.data_in(input3), .data_out(output3));
	SBox SBOX4(.data_in(input4), .data_out(output4));
	
	reg [1:10] [7:0] rcon;
	
	always_comb begin
	 rcon = {8'd1, 8'd2, 8'd4, 8'd8, 8'd16, 8'd32, 8'd64, 8'd128, 8'd27, 8'd54};
	end

	// always_comb begin
	// 	if(cur_round == 0) begin
	// 		//orig_ff_q = orig_ff_q;
	// 	end
	// 	else begin
	// 		cur_key = KeySchedule[(127 * cur_round - 127) +: 128];
	// 	end
	// end

	
	always_ff @(posedge clk or negedge n_rst) begin
			if(n_rst == 0) begin
				round_ct <= chg_key;
			end else begin
				round_ct <= round_ct + 1;
			end
		end
	
	always_ff @(posedge clk, negedge n_rst)
	begin: FF_LOADING
		if (n_rst == 0)
		begin
			orig_ff_q <= '0;
			KeySchedule<= '0;
			//round_q <= '0;
		end
		else
		begin
			orig_ff_q <= orig_ff_d;
			KeySchedule[(128 * round_ct - 128) +: 127] <= cur_ff_d;
			cur_ff_q <= cur_ff_d;
			//round_q <= round_d;
		end
	end
	
	
	always_comb
	begin: ORIG_NEXT_STATE
		if (chg_key == 1)
		begin
			orig_ff_d = rx_key;
		end
		else
		begin
			orig_ff_d = orig_ff_q;
		end
	end
	
	
	always_comb
	begin: CUR_NEXT_STATE
	change_key = 0;
		if (round_ct >= 1 && chg_key == 1 && round_ct <= 10) //if round is invalid, wait until a valid one arrives. keep old key round until then.
		begin
			input1 = cur_ff_q[23:16];
			input2 = cur_ff_q[15:8];
			input3 = cur_ff_q[7:0];
			input4 = cur_ff_q[31:24];
	
			//update the current round key
			cur_ff_d[127:96] = cur_ff_q[127:96] ^ {output1, output2, output3, output4} ^ {rcon[round_ct], 24'd0};
			cur_ff_d[95:64] = cur_ff_d[127:96] ^ cur_ff_q[95:64];
			cur_ff_d[63:32] = cur_ff_d[95:64] ^ cur_ff_q[63:32];
			cur_ff_d[31:0] = cur_ff_d[63:32] ^ cur_ff_q[31:0];
	
		end
		else if (round_ct == 0)
		begin
			input1 = cur_ff_q[23:16];
			input2 = cur_ff_q[15:8];
			input3 = cur_ff_q[7:0];
			input4 = cur_ff_q[31:24];
			cur_ff_d = orig_key;
		end
		else
		begin
			input1 = cur_ff_q[23:16];
			input2 = cur_ff_q[15:8];
			input3 = cur_ff_q[7:0];
			input4 = cur_ff_q[31:24];
			cur_ff_d = cur_ff_q;
			change_key = 1;
		end
	end
	
	endmodule