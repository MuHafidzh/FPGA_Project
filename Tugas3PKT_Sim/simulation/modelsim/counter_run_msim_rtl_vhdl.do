transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Habsyi/Documents/ELKA/PKT/Nyoba/counter.vhd}

vcom -93 -work work {C:/Users/Habsyi/Documents/ELKA/PKT/Nyoba/counter_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  counter_tb

add wave *
view structure
view signals
run 10000 ns
