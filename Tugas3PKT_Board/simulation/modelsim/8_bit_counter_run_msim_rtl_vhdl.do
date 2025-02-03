transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Habsyi/Documents/ELKA/PKT/Tugas3PKT_Board/seven_segment.vhd}
vcom -93 -work work {C:/Users/Habsyi/Documents/ELKA/PKT/Tugas3PKT_Board/eight_bit.vhd}
vcom -93 -work work {C:/Users/Habsyi/Documents/ELKA/PKT/Tugas3PKT_Board/counter.vhd}
vcom -93 -work work {C:/Users/Habsyi/Documents/ELKA/PKT/Tugas3PKT_Board/clk_divider.vhd}

vcom -93 -work work {C:/Users/Habsyi/Documents/ELKA/PKT/Tugas3PKT_Board/eight_bit_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  eight_bit_tb

add wave *
view structure
view signals
run 1000 ns
