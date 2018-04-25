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
wire ahbMode,ahb_shift, start_from_ahb_slave_to_controller,change_key_bit_from_status_register,chg_key_done, AES_done,last_block_signal, change_key_start,AES_start, encrypt_decrypt_from_slave_to_AES,last_round_AES,TX_SR_load_enable,TX_SR_shift_enable,RX_SR_shift_enable;
wire [127:0] Rx_SR_output;
wire [31:0] Rx_SR_input;
wire [127:0] Tx_SR_input;
wire [31:0] Tx_SR_output;
wire [127:0] round_key;
wire [127:0] encrypted;
wire [127:0] decrypted;
wire [3:0] AES_round;
wire [127:0] AES_data;
wire [31:0] data_read_loc;
wire [31:0] data_write_loc;
wire [127:0] original_key;
wire [1:0] flag;
wire [31:0] size_data; //number of blocks to proccess.

ahb_slave slave_interface(.hclk(hclk), .hresetn(hrst),.haddr(haddr_slave),.hwrite(hwrite_slave),.hready(hready_slave),.hwdata(hwdata_slave),.hreadyout(hreadyout_slave),hrdata(hrdata_slave), .data_read_loc(data_read_loc), .data_write_loc(data_write_loc), .key(original_key), .flag(flag), .size_data(size_data)  );
ahb_master master_interface(.hclk(hclk), .hrst(hrst), .hready(hready_master), .hresp(hresp_master), .ahbMode(ahbMode), .enable(ahb_shift), .hrdata(hrdata_master), .haddr(haddr_master), .hwdata(hwdata_master), .hwrite(hwrite_master));
controller the_controller(.clk(hclk), .n_rst(hrst), .start(start_from_ahb_slave_to_controller), .change_key(change_key_bit_from_status_register), .chg_key_done(chg_key_done), .enc_done(AES_done), .last_round(last_block_signal), .change_key_start(change_key_start), .aes_enable(AES_start), .ahb_mode(ahbMode), .ahb_shift_en(ahb_shift))
AESctrl aesctrl(.clk(hclk), .n_rst(hrst), .start(AES_start), .encrypt(encrypt_decrypt_from_slave_to_AES), .Rx_SR(Rx_SR_output), .round_key(round_key), .encrypted(encrypted), .decrypted(decrypted), .done(AES_done), .last_round(last_round_AES), .load_enable(TX_SR_load_enable), .round(AES_round), .data(AES_data), .Tx_SR(Tx_SR_input) );
tx_sr the_tx_sr(.clk(hclk), .n_rst(hrst), .data_in(Tx_SR_input), .shift_enable(TX_SR_shift_enable), .load_enable(TX_SR_load_enable), data_out(Tx_SR_output));
rx_sr the_rx_sr(.clk(hclk), .n_rst(hrst), .data_in(Rx_SR_input), .shift_enable(RX_SR_shift_enable), .data_out(Rx_SR_output));
encrypt encrypt_block(.clk(hclk), .n_rst(hrst), .data(AES_data), .round_key(round_key), .last_round(last_round_AES), .encrypted(encrypted));
decrypt decrypt_block(.clk(hclk), .n_rst(hrst), .data(AES_data), .round_key(round_key), .last_round(last_round_AES), .decrypted(decrypted));




endmodule