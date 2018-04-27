module whole_project(
	input wire hclk,
	input wire hrst,
	input wire hready_master,
	input wire hresp_master,
	input reg [31:0] hrdata_master,
	output reg [31:0] haddr_master,
	output reg [31:0] hwdata_master,
	output reg hwrite_master,
	input wire [31:0] haddr_slave,
	input wire hwrite_slave,
	input wire hready_slave,
	input wire [31:0] hwdata_slave,
	output reg hreadyout_slave,
	output reg [31:0] hrdata_slave
);


wire key_load;
wire [127:0] rx_key = 'h68656c6c6f3030303030303030303030;
wire done;
wire [127:0] key;

wire [3:0] cur_round;
wire [127:0] cur_key, encrypted, decrypted, aes_data, Tx_SR_in, Rx_SR_out, expected_result;
wire [31:0] Rx_SR_in, Tx_out;
wire [1:0] flag;
wire aes_start, aes_done, last_round, TX_load_enable, tx_shift_enable, rx_shift_enable, start_from_ahb_to_controller, last_block_from_ahb_to_controller, ahb_mode, ahb_shift_en;
wire encrypt,change_key_flag;
wire restart_check;


ahb_slave_q DUT0(.hclk(hclk), .hresetn(hrst),.haddr(haddr_slave),.hwrite(hwrite_slave),.hready(hready_slave),.hwdata(hwdata_slave),.hreadyout(hreadyout_slave), .hrdata(hrdata_slave), .data_read_loc(data_read_loc), .data_write_loc(data_write_loc), .key(key), .flag(flag), .size_data(size_data), .signal(start_from_ahb_to_controller));

gen_keys DUT(.clk(hclk), .n_rst(hrst), .start_doing(key_load), .rx_key(rx_key), .cur_round(cur_round), .cur_key(cur_key), .done(done));
AESctrl DUT2(.clk(hclk), .n_rst(hrst), .start(aes_start), .encrypt(encrypt), .Rx_SR(Rx_SR_out), .round_key(cur_key), .encrypted(encrypted), .decrypted(decrypted), .done(aes_done), .last_round(last_round), .load_enable(TX_load_enable), .round(cur_round), .data(aes_data), .Tx_SR(Tx_SR_in));
encrypt DUT3(.clk(hclk), .n_rst(hrst), .last_round(last_round), .round_key(cur_key), .encrypted(encrypted), .data(aes_data));
decrypt DUT4(.clk(hclk), .n_rst(hrst), .last_round(last_round), .round_key(cur_key), .decrypted(decrypted), .data(aes_data));
tx_sr DUT5(.clk(hclk), .n_rst(hrst), .data_in(Tx_SR_in), .shift_enable(tx_shift_enable), .load_enable(TX_load_enable), .data_out(Tx_out));
rx_sr DUT6(.clk(hclk), .n_rst(hrst), .data_in(Rx_SR_in), .shift_enable(rx_shift_enable), .data_out(Rx_SR_out) );
controller DUT7(.clk(hclk), .n_rst(hrst), .start(start_from_ahb_to_controller), .change_key(change_key_flag), .chg_key_done(done), .enc_done(aes_done), .last_round(last_block_from_ahb_to_controller), .change_key_start(key_load), .aes_enable(aes_start), .ahb_mode(ahb_mode), .ahb_shift_en(ahb_shift_en), .restart_check(restart_check));
ahb_master_q DUT8(.hclk(hclk), .hrst(hrst), .hready(hready_master), .hresp(hresp_master), .ahbMode(ahb_mode), .enable(ahb_shift_en), .hrdata(hrdata_master), .haddr(haddr_master), .hwdata(hwdata_master), .hwrite(hwrite_master), .size(size_data),.shiftin(Tx_out), .raddr(data_read_loc),.waddr(data_write_loc),.shiftout(Rx_SR_in),.shift_en(rx_shift_enable),.end_block(last_block_from_ahb_to_controller),.txshift_en(tx_shift_enable), .restart_check(restart_check));


endmodule
