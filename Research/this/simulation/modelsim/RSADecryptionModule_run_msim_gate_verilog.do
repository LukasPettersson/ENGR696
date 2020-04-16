transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {RSADecryptionModule.vo}

vlog -vlog01compat -work work +incdir+C:/Users/Lukas/Documents/Research/this {C:/Users/Lukas/Documents/Research/this/multiTest.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc" multiTest

add wave *
view structure
view signals
run -all