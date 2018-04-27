onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT8/size
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT8/shiftin
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT8/raddr
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT8/waddr
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT8/hrdata
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT8/haddr
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT8/shiftout
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT8/hwdata
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT8/hclk
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT8/hrst
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT8/hready
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT8/hresp
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT8/ahbMode
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT8/enable
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT8/shift_en
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT8/end_block
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT8/hwrite
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT8/txshift_en
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT8/state
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT8/count
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT6/data_in
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT6/data_out
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT6/clk
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT6/n_rst
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT6/shift_enable
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT5/data_in
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT5/data_out
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT5/clk
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT5/n_rst
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT5/shift_enable
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT5/load_enable
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT7/clk
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT7/n_rst
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT7/start
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT7/change_key
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT7/chg_key_done
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT7/enc_done
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT7/last_round
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT7/change_key_start
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT7/aes_enable
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT7/ahb_mode
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT7/ahb_shift_en
add wave -noupdate -radix hexadecimal {/tb_ahb_slave_q/DUT7/\roll_over_val[3] }
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT7/roll_over_val_0
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT7/rst_switch_state
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT7/roll_over
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT7/state
add wave -noupdate -radix hexadecimal /tb_ahb_slave_q/DUT7/n_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3854509 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 234
configure wave -valuecolwidth 246
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {4200 ns}
