`timescale 1ns /100ps
module tb_ahb_slave_q();

localparam CLOCK_PERIOD = 10;

reg tb_clk;
reg tb_n_rst;
reg tb_key_load;
reg tb_done;
reg [31:0] tb_haddr_slave, tb_hwdata_slave, tb_hrdata_slave, tb_data_read_loc, tb_data_write_loc, tb_size_data;
reg [127:0] tb_key;
reg tb_hwrite_slave, tb_hready_slave, tb_hreadyout_slave; 
reg [127:0] tb_rx_key = 'h68656c6c6f3030303030303030303030;
reg [3:0] tb_cur_round;
reg [127:0] tb_cur_key, encrypted, decrypted, aes_data, Tx_SR_in, Rx_SR_out, expected_result,expected_result_2, expected_result21, expected_result22,expected_result31, expected_result32;
reg [31:0] Rx_SR_in, Tx_out;
reg [1:0] tb_flag;
reg aes_start, aes_done, last_round, TX_load_enable, tx_shift_enable, rx_shift_enable, start_from_ahb_to_controller, last_block_from_ahb_to_controller, ahb_mode, ahb_shift_en;
reg hready_master, hresp_master, hwrite_master;
reg [31:0] hrdata_master, haddr_master, hwdata_master;
wire encrypt,change_key_flag;
reg restart_check;
assign encrypt = tb_flag[1];
assign change_key_flag = tb_flag[0];
int i;

ahb_slave_q DUT0(.hclk(tb_clk), .hresetn(tb_n_rst),.haddr(tb_haddr_slave),.hwrite(tb_hwrite_slave),.hready(tb_hready_slave),.hwdata(tb_hwdata_slave),.hreadyout(tb_hreadyout_slave), .hrdata(tb_hrdata_slave), .data_read_loc(tb_data_read_loc), .data_write_loc(tb_data_write_loc), .key(tb_key), .flag(tb_flag), .size_data(tb_size_data), .signal(start_from_ahb_to_controller));
gen_keys DUT(.clk(tb_clk), .n_rst(tb_n_rst), .start_doing(tb_key_load), .rx_key(tb_rx_key), .cur_round(tb_cur_round), .cur_key(tb_cur_key), .done(tb_done));
AESctrl DUT2(.clk(tb_clk), .n_rst(tb_n_rst), .start(aes_start), .encrypt(encrypt), .Rx_SR(Rx_SR_out), .round_key(tb_cur_key), .encrypted(encrypted), .decrypted(decrypted), .done(aes_done), .last_round(last_round), .load_enable(TX_load_enable), .round(tb_cur_round), .data(aes_data), .Tx_SR(Tx_SR_in));
encrypt DUT3(.clk(tb_clk), .n_rst(tb_n_rst), .last_round(last_round), .round_key(tb_cur_key), .encrypted(encrypted), .data(aes_data));
decrypt DUT4(.clk(tb_clk), .n_rst(tb_n_rst), .last_round(last_round), .round_key(tb_cur_key), .decrypted(decrypted), .data(aes_data));
tx_sr DUT5(.clk(tb_clk), .n_rst(tb_n_rst), .data_in(Tx_SR_in), .shift_enable(tx_shift_enable), .load_enable(TX_load_enable), .data_out(Tx_out));
rx_sr DUT6(.clk(tb_clk), .n_rst(tb_n_rst), .data_in(Rx_SR_in), .shift_enable(rx_shift_enable), .data_out(Rx_SR_out) );
controller DUT7(.clk(tb_clk), .n_rst(tb_n_rst), .start(start_from_ahb_to_controller), .change_key(change_key_flag), .chg_key_done(tb_done), .enc_done(aes_done), .last_round(last_block_from_ahb_to_controller), .change_key_start(tb_key_load), .aes_enable(aes_start), .ahb_mode(ahb_mode), .ahb_shift_en(ahb_shift_en), .restart_check(restart_check));
ahb_master_q DUT8(.hclk(tb_clk), .hrst(tb_n_rst), .hready(hready_master), .hresp(hresp_master), .ahbMode(ahb_mode), .enable(ahb_shift_en), .hrdata(hrdata_master), .haddr(haddr_master), .hwdata(hwdata_master), .hwrite(hwrite_master), .size(tb_size_data),.shiftin(Tx_out), .raddr(tb_data_read_loc),.waddr(tb_data_write_loc),.shiftout(Rx_SR_in),.shift_en(rx_shift_enable),.end_block(last_block_from_ahb_to_controller),.txshift_en(tx_shift_enable), .restart_check(restart_check));

reg [127:0]	block_to_encrypt = 128'habcd52c2f9c6f303030f83031ab61040;
reg [127:0]	block_to_decrypt = 128'h123456789abcdef0ffff112233562468;

reg [127:0]	block_to_encrypt2 = 128'h3243f6a8885a308d313198a2e0370734;
reg [127:0]	block_to_decrypt2 = 128'h00112233445566778899aabbccddeeff;

reg [127:0]	block_to_encrypt3 = 128'h3243f6a8885a308d313198a2e0370734;
reg [127:0]	block_to_decrypt3 = 128'hab12af56aa5612db23621ab411543312;

reg [127:0]	encrypted_output = '0;
reg [127:0]	decrypted_output = '0;
reg [127:0]	encrypted_output2 = '0;
reg [127:0]	decrypted_output2 = '0;
reg [127:0]	encrypted_output3 = '0;
reg [127:0]	decrypted_output3 = '0;
always
begin: CLOCK_GEN
	tb_clk = 0;
	#(CLOCK_PERIOD / 2);
	tb_clk = 1;
	#(CLOCK_PERIOD / 2);
end

always
begin 


	if (haddr_master==32'd6 && hwrite_master==0)
		hrdata_master = block_to_encrypt[127:96];
	if (haddr_master==32'd10 && hwrite_master==0)
		hrdata_master = block_to_encrypt[95:64];
	if (haddr_master==32'd14 && hwrite_master==0)
		hrdata_master = block_to_encrypt[63:32];
	if (haddr_master==32'd18 && hwrite_master==0)
		hrdata_master = block_to_encrypt[31:0];

	if (haddr_master==32'd22 && hwrite_master==0)
		hrdata_master = block_to_decrypt[127:96];
	if (haddr_master==32'd26 && hwrite_master==0)
		hrdata_master = block_to_decrypt[95:64];
	if (haddr_master==32'd30 && hwrite_master==0)
		hrdata_master = block_to_decrypt[63:32];
	if (haddr_master==32'd34 && hwrite_master==0)
		hrdata_master = block_to_decrypt[31:0];


	if (haddr_master==32'd38 && hwrite_master==0)
		hrdata_master = block_to_encrypt2[127:96];
	if (haddr_master==32'd42 && hwrite_master==0)
		hrdata_master = block_to_encrypt2[95:64];
	if (haddr_master==32'd46 && hwrite_master==0)
		hrdata_master = block_to_encrypt2[63:32];
	if (haddr_master==32'd50 && hwrite_master==0)
		hrdata_master = block_to_encrypt2[31:0];

	if (haddr_master==32'd54 && hwrite_master==0)
		hrdata_master = block_to_decrypt2[127:96];
	if (haddr_master==32'd58 && hwrite_master==0)
		hrdata_master = block_to_decrypt2[95:64];
	if (haddr_master==32'd62 && hwrite_master==0)
		hrdata_master = block_to_decrypt2[63:32];
	if (haddr_master==32'd66 && hwrite_master==0)
		hrdata_master = block_to_decrypt2[31:0];

	if (haddr_master==32'd70 && hwrite_master==0)
		hrdata_master = block_to_encrypt3[127:96];
	if (haddr_master==32'd74 && hwrite_master==0)
		hrdata_master = block_to_encrypt3[95:64];
	if (haddr_master==32'd78 && hwrite_master==0)
		hrdata_master = block_to_encrypt3[63:32];
	if (haddr_master==32'd82 && hwrite_master==0)
		hrdata_master = block_to_encrypt3[31:0];

	if (haddr_master==32'd86 && hwrite_master==0)
		hrdata_master = block_to_decrypt3[127:96];
	if (haddr_master==32'd90 && hwrite_master==0)
		hrdata_master = block_to_decrypt3[95:64];
	if (haddr_master==32'd94 && hwrite_master==0)
		hrdata_master = block_to_decrypt3[63:32];
	if (haddr_master==32'd98 && hwrite_master==0)
		hrdata_master = block_to_decrypt3[31:0];





	if (haddr_master==32'd6000000 && hwrite_master==1)
		encrypted_output[127:96]=hwdata_master;
	if (haddr_master==32'd6000004 && hwrite_master==1)
		encrypted_output[95:64]=hwdata_master;
	if (haddr_master==32'd6000008 && hwrite_master==1)
		encrypted_output[63:32]=hwdata_master;
	if (haddr_master==32'd6000012 && hwrite_master==1)
		encrypted_output[31:0]=hwdata_master;

	if (haddr_master==32'd6000016 && hwrite_master==1)
		 decrypted_output[127:96]=hwdata_master;
	if (haddr_master==32'd6000020 && hwrite_master==1)
		 decrypted_output[95:64]=hwdata_master;
	if (haddr_master==32'd6000024 && hwrite_master==1)
		 decrypted_output[63:32]=hwdata_master;
	if (haddr_master==32'd6000028 && hwrite_master==1)
		 decrypted_output[31:0]=hwdata_master;



	if (haddr_master==32'd6000032 && hwrite_master==1)
		encrypted_output2[127:96]=hwdata_master;
	if (haddr_master==32'd6000036 && hwrite_master==1)
		encrypted_output2[95:64]=hwdata_master;
	if (haddr_master==32'd6000040 && hwrite_master==1)
		encrypted_output2[63:32]=hwdata_master;
	if (haddr_master==32'd6000044 && hwrite_master==1)
		encrypted_output2[31:0]=hwdata_master;

	if (haddr_master==32'd6000048 && hwrite_master==1)
		 decrypted_output2[127:96]=hwdata_master;
	if (haddr_master==32'd6000052 && hwrite_master==1)
		 decrypted_output2[95:64]=hwdata_master;
	if (haddr_master==32'd6000056 && hwrite_master==1)
		 decrypted_output2[63:32]=hwdata_master;
	if (haddr_master==32'd6000060 && hwrite_master==1)
		 decrypted_output2[31:0]=hwdata_master;



	if (haddr_master==32'd6000064 && hwrite_master==1)
		encrypted_output3[127:96]=hwdata_master;
	if (haddr_master==32'd6000068 && hwrite_master==1)
		encrypted_output3[95:64]=hwdata_master;
	if (haddr_master==32'd6000072 && hwrite_master==1)
		encrypted_output3[63:32]=hwdata_master;
	if (haddr_master==32'd6000076 && hwrite_master==1)
		encrypted_output3[31:0]=hwdata_master;

	if (haddr_master==32'd6000080 && hwrite_master==1)
		 decrypted_output3[127:96]=hwdata_master;
	if (haddr_master==32'd6000084 && hwrite_master==1)
		 decrypted_output3[95:64]=hwdata_master;
	if (haddr_master==32'd6000088 && hwrite_master==1)
		 decrypted_output3[63:32]=hwdata_master;
	if (haddr_master==32'd6000092 && hwrite_master==1)
		 decrypted_output3[31:0]=hwdata_master;


	#(CLOCK_PERIOD );

	
end



	task recieve_some_thing_from_cpu_to_slave;
	begin
		tb_hwrite_slave=1'b1;
		@(posedge tb_clk)
		tb_hready_slave=1'b1;
		@(posedge tb_clk)
		@(negedge tb_clk)
		@(posedge tb_clk)
		@(negedge tb_clk)
		tb_hready_slave=1'b0;
		tb_hwdata_slave=32'b0000000000000000000000000000000;
	end
	endtask

initial
begin
	//initialize data

	tb_n_rst = 0;
	//encrypt = 0;
	rx_shift_enable = 0;
	TX_load_enable = 0;
	tx_shift_enable = 0;
	//change_key_flag = 1;
	last_block_from_ahb_to_controller = 0;
	hready_master = '1;
	hresp_master = '0;
	
	tb_n_rst=1'b0;
	tb_haddr_slave=32'b00000000000000000000000000000000;
	tb_hwdata_slave=32'b00000000000000000000000000000000;
	tb_hwrite_slave=1'b0;
	tb_hready_slave=1'b0;
	tb_hrdata_slave=32'b00000000000000000000000000000000;
	tb_data_read_loc=32'b00000000000000000000000000000000;
	tb_data_write_loc=32'b00000000000000000000000000000000;
	tb_key=32'b00000000000000000000000000000000;
	// encrypt = 0;
	// change_key_flag = 0;
	tb_size_data=32'b00000000000000000000000000000000;

	@(posedge tb_clk);
	@(posedge tb_clk);

	
	tb_n_rst = 1;

	@(negedge tb_clk)

	tb_haddr_slave = 32'h0;
	tb_hwdata_slave = 32'd6;
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h4;
	tb_hwdata_slave = 32'd6000000;
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h8;
	tb_hwdata_slave = tb_rx_key[127:96];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'hc;
	tb_hwdata_slave = tb_rx_key[95:64];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h1;
	tb_hwdata_slave = tb_rx_key[63:32];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h14;
	tb_hwdata_slave = tb_rx_key[31:0];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h18;
	tb_hwdata_slave = 32'd1280;
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h1c;
	tb_hwdata_slave = 32'b0000000000000000000000000000011; //change kay
	recieve_some_thing_from_cpu_to_slave();

	expected_result = 128'hEC91CEF5476D5AAC828007DBB58A1B20;
	expected_result_2 = 128'h090d3aeddc0e4f4b1ae239d03162743a;
	expected_result21=128'hd72c906ac1a407974bbd236b911cf9ef;
	expected_result22=128'h9a204de16a42dac6e58bbc49620dcbd7;

	expected_result31=128'h3925841d02dc09fbdc118597196a0b32;
	expected_result32=128'h27fb142a53989b070dd4560c6240de2f;

	
	@(posedge tb_done);

	@(posedge tb_clk);
	tb_haddr_slave = 32'h0;
	tb_hwdata_slave = 32'd6;
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h4;
	tb_hwdata_slave = 32'd6000000;
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h8;
	tb_hwdata_slave = tb_rx_key[127:96];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'hc;
	tb_hwdata_slave = tb_rx_key[95:64];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h10;
	tb_hwdata_slave = tb_rx_key[63:32];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h14;
	tb_hwdata_slave = tb_rx_key[31:0];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h18;
	tb_hwdata_slave = 32'd1;
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h1c;
	tb_hwdata_slave = 32'b0000000000000000000000000000010; //encrypt
	recieve_some_thing_from_cpu_to_slave();
	
	@(posedge last_block_from_ahb_to_controller)
	@(negedge last_block_from_ahb_to_controller)
	




	tb_haddr_slave = 32'h0;
	tb_hwdata_slave = 32'd22;
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h4;
	tb_hwdata_slave = 32'd6000016;
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h8;
	tb_hwdata_slave = tb_rx_key[127:96];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'hc;
	tb_hwdata_slave = tb_rx_key[95:64];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h10;
	tb_hwdata_slave = tb_rx_key[63:32];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h14;
	tb_hwdata_slave = tb_rx_key[31:0];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h18;
	tb_hwdata_slave = 32'd1;
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h1c;
	tb_hwdata_slave = 32'b0000000000000000000000000000000; //decrypt
	recieve_some_thing_from_cpu_to_slave();
	

	
	@(posedge last_block_from_ahb_to_controller)
	@(negedge last_block_from_ahb_to_controller)
	assert (encrypted_output==expected_result)
	begin
		$info("Encryption1 Works!");
	end
	else
	begin
		$error("Encryption1 maybe didn't work");
	end

	assert (decrypted_output==expected_result_2)
	begin
		$info("Decryption1 Works!");
	end
	else
	begin
		$error("Decryption1 maybe didn't work");
	end








	tb_haddr_slave = 32'h0;
	tb_hwdata_slave = 32'd38;
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h4;
	tb_hwdata_slave = 32'd6000032;
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h8;
	tb_hwdata_slave = tb_rx_key[127:96];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'hc;
	tb_hwdata_slave = tb_rx_key[95:64];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h10;
	tb_hwdata_slave = tb_rx_key[63:32];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h14;
	tb_hwdata_slave = tb_rx_key[31:0];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h18;
	tb_hwdata_slave = 32'd1;
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h1c;
	tb_hwdata_slave = 32'b0000000000000000000000000000010; //encrypt
	recieve_some_thing_from_cpu_to_slave();
	
	@(posedge last_block_from_ahb_to_controller)
	@(negedge last_block_from_ahb_to_controller)
	




	tb_haddr_slave = 32'h0;
	tb_hwdata_slave = 32'd54;
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h4;
	tb_hwdata_slave = 32'd6000048;
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h8;
	tb_hwdata_slave = tb_rx_key[127:96];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'hc;
	tb_hwdata_slave = tb_rx_key[95:64];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h10;
	tb_hwdata_slave = tb_rx_key[63:32];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h14;
	tb_hwdata_slave = tb_rx_key[31:0];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h18;
	tb_hwdata_slave = 32'd1;
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h1c;
	tb_hwdata_slave = 32'b0000000000000000000000000000000; //decrypt
	recieve_some_thing_from_cpu_to_slave();
	

	
	@(posedge last_block_from_ahb_to_controller)
	@(negedge last_block_from_ahb_to_controller)
	assert (encrypted_output2==expected_result21)
	begin
		$info("Encryption2 Works!");
	end
	else
	begin
		$error("Encryption2 maybe didn't work");
	end

	assert (decrypted_output2==expected_result22)
	begin
		$info("Decryption2 Works!");
	end
	else
	begin
		$error("Decryption2 maybe didn't work");
	end


	//change key again
	tb_rx_key = 128'h2b7e151628aed2a6abf7158809cf4f3c;
	
	tb_haddr_slave = 32'h0;
	tb_hwdata_slave = 32'd6;
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h4;
	tb_hwdata_slave = 32'd6000000;
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h8;
	tb_hwdata_slave = tb_rx_key[127:96];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'hc;
	tb_hwdata_slave = tb_rx_key[95:64];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h1;
	tb_hwdata_slave = tb_rx_key[63:32];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h14;
	tb_hwdata_slave = tb_rx_key[31:0];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h18;
	tb_hwdata_slave = 32'd1280;
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h1c;
	tb_hwdata_slave = 32'b0000000000000000000000000000011; //change kay
	recieve_some_thing_from_cpu_to_slave();

	








	tb_haddr_slave = 32'h0;
	tb_hwdata_slave = 32'd70;
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h4;
	tb_hwdata_slave = 32'd6000064;
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h8;
	tb_hwdata_slave = tb_rx_key[127:96];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'hc;
	tb_hwdata_slave = tb_rx_key[95:64];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h10;
	tb_hwdata_slave = tb_rx_key[63:32];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h14;
	tb_hwdata_slave = tb_rx_key[31:0];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h18;
	tb_hwdata_slave = 32'd1;
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h1c;
	tb_hwdata_slave = 32'b0000000000000000000000000000010; //encrypt
	recieve_some_thing_from_cpu_to_slave();
	
	@(posedge last_block_from_ahb_to_controller)
	@(negedge last_block_from_ahb_to_controller)
	




	tb_haddr_slave = 32'h0;
	tb_hwdata_slave = 32'd86;
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h4;
	tb_hwdata_slave = 32'd6000080;
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h8;
	tb_hwdata_slave = tb_rx_key[127:96];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'hc;
	tb_hwdata_slave = tb_rx_key[95:64];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h10;
	tb_hwdata_slave = tb_rx_key[63:32];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h14;
	tb_hwdata_slave = tb_rx_key[31:0];
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h18;
	tb_hwdata_slave = 32'd1;
	recieve_some_thing_from_cpu_to_slave();

	tb_haddr_slave = 32'h1c;
	tb_hwdata_slave = 32'b0000000000000000000000000000000; //decrypt
	recieve_some_thing_from_cpu_to_slave();
	

	
	@(posedge last_block_from_ahb_to_controller)
	@(negedge last_block_from_ahb_to_controller)
	assert (encrypted_output3==expected_result31)
	begin
		$info("Encryption3 Works!");
	end
	else
	begin
		$error("Encryption3 maybe didn't work");
	end

	assert (decrypted_output3==expected_result32)
	begin
		$info("Decryption3 Works!");
	end
	else
	begin
		$error("Decryption3 maybe didn't work");
	end


end

endmodule