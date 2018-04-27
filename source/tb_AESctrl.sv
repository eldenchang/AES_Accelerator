`timescale 1ns /100ps
module tb_AESctrl();

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
reg [127:0] tb_cur_key, encrypted, decrypted, aes_data, Tx_SR_in, Rx_SR_out, block_to_encrypt, expected_result;
reg [31:0] Rx_SR_in;
reg [1:0] tb_flag;
//reg [127:0] key_1 = 'h6d616868025158583261686802515858;
//reg [127:0] key_2 = 'hbe0b021fbc5a5a478e3b322f8c6a6a77;
//reg [127:0] key_3 = 'hb809f77b0453ad3c8a689f130602f564;
//reg [127:0] key_4 = 'hc7efb414c3bc192849d4863b4fd6735f;
//reg [127:0] key_5 = 'h21607b90e2dc62b8ab08e483e4de97dc;
//reg [127:0] key_6 = 'h1ce8fdf9fe349f41553c7bc2b1e2ec1e;
//reg [127:0] key_7 = 'hc4268f313a1210706f2e6bb2decc87ac;
//reg [127:0] key_8 = 'h0f311e2c35230e5c5a0d65ee84c1e242;
//reg [127:0] key_9 = 'h6ca93273598a3c2f038759c18746bb83;
//reg [127:0] key_10 = 'h0043de6459c9e24b5a4ebb8add080009;
reg aes_start, encrypt, aes_done, last_round, TX_load_enable, tx_shift_enable, rx_shift_enable, start_from_ahb_to_controller, change_key_flag, last_block_from_ahb_to_controller, ahb_mode, ahb_shift_en;
assign tb_flag = {encrypt, change_key_flag};

ahb_slave DUT0(.hclk(.hclk(tb_clk), .hresetn(tb_n_rst),.haddr(tb_haddr_slave),.hwrite(tb_hwrite_slave),.hready(tb_hready_slave),.hwdata(tb_hwdata_slave),.hreadyout(tb_hreadyout_slave), .hrdata(tb_hrdata_slave), .data_read_loc(tb_data_read_loc), .data_write_loc(tb_data_write_loc), .key(tb_key), .flag(tb_flag), .size_data(tb_size_data), .signal(start_from_ahb_to_controller));
gen_keys DUT(.clk(tb_clk), .n_rst(tb_n_rst), .start_doing(tb_key_load), .rx_key(tb_rx_key), .cur_round(tb_cur_round), .cur_key(tb_cur_key), .done(tb_done));
AESctrl DUT2(.clk(tb_clk), .n_rst(tb_n_rst), .start(aes_start), .encrypt(encrypt), .Rx_SR(Rx_SR_out), .round_key(tb_cur_key), .encrypted(encrypted), .decrypted(decrypted), .done(aes_done), .last_round(last_round), .load_enable(TX_load_enable), .round(tb_cur_round), .data(aes_data), .Tx_SR(Tx_SR_in));
encrypt DUT3(.clk(tb_clk), .n_rst(tb_n_rst), .last_round(last_round), .round_key(tb_cur_key), .encrypted(encrypted), .data(aes_data));
decrypt DUT4(.clk(tb_clk), .n_rst(tb_n_rst), .last_round(last_round), .round_key(tb_cur_key), .decrypted(decrypted), .data(aes_data));
tx_sr DUT5(.clk(tb_clk), .n_rst(tb_n_rst), .data_in(Tx_SR_in), .shift_enable(tx_shift_enable), .load_enable(TX_load_enable));
rx_sr DUT6(.clk(tb_clk), .n_rst(tb_n_rst), .data_in(Rx_SR_in), .shift_enable(rx_shift_enable), .data_out(Rx_SR_out) );
controller DUT7(.clk(tb_clk), .n_rst(tb_n_rst), .start(start_from_ahb_to_controller), .change_key(change_key_flag), .chg_key_done(tb_done), .enc_done(aes_done), .last_round(last_block_from_ahb_to_controller), .change_key_start(tb_key_load), .aes_enable(aes_start), .ahb_mode(ahb_mode), .ahb_shift_en(ahb_shift_en));
always
begin: CLOCK_GEN
	tb_clk = 0;
	#(CLOCK_PERIOD / 2);
	tb_clk = 1;
	#(CLOCK_PERIOD / 2);
end

	task shift_block_to_rx_sr;
	begin
		Rx_SR_in=block_to_encrypt[127:96];
		rx_shift_enable =1;
		@(posedge tb_clk);
		Rx_SR_in=block_to_encrypt[95:64];
		@(posedge tb_clk);
		Rx_SR_in=block_to_encrypt[63:32];
		@(posedge tb_clk);
		Rx_SR_in=block_to_encrypt[31:0];
		@(posedge tb_clk);
		rx_shift_enable =0;
	end
	endtask

initial
begin
	//initialize data
	tb_n_rst = 0;
	start_from_ahb_to_controller = 0;
	encrypt = 0;
	rx_shift_enable = 0;
	TX_load_enable = 0;
	tx_shift_enable = 0;
	change_key_flag = 1;
	last_block_from_ahb_to_controller = 0;
	
	@(posedge tb_clk);

	
	tb_n_rst = 1;
	start_from_ahb_to_controller = 1;
	block_to_encrypt = 128'habcd52c2f9c6f303030f83031ab61040;
	expected_result = 128'hEC91CEF5476D5AAC828007DBB58A1B20;
	shift_block_to_rx_sr();
	
	@(posedge tb_done);

	change_key_flag = 0;
	@(posedge tb_clk);

	start_from_ahb_to_controller = 1;

	@(posedge aes_done);
	assert (encrypted == expected_result)
		$info("correctly encrypted");
	else
		$error("123");
	
	
	
end

endmodule