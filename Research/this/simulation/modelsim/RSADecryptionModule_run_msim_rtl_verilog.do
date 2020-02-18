transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Lukas/Documents/Research/this {C:/Users/Lukas/Documents/Research/this/testMultiplication.v}

vlog -vlog01compat -work work +incdir+C:/Users/Lukas/Documents/Research/this {C:/Users/Lukas/Documents/Research/this/multiTest.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc" multiTest

add wave *
view structure
view signals
run -all
