setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "Z:/GITHUB/Lattice/Sony Vivaz LCD driver/simulation/simulation.adf"]} { 
	design create simulation "Z:/GITHUB/Lattice/Sony Vivaz LCD driver"
  set newDesign 1
}
design open "Z:/GITHUB/Lattice/Sony Vivaz LCD driver/simulation"
cd "Z:/GITHUB/Lattice/Sony Vivaz LCD driver"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "Z:/GITHUB/Lattice/Sony Vivaz LCD driver/impl1/SonyVivazLCDDriver_impl1_vho.vho"
addfile "Z:/GITHUB/Lattice/Sony Vivaz LCD driver/main_tb.vhd"
addfile -sdf "Z:/GITHUB/Lattice/Sony Vivaz LCD driver/impl1/SonyVivazLCDDriver_impl1_vho.sdf"
vlib "Z:/GITHUB/Lattice/Sony Vivaz LCD driver/simulation/work"
set worklib work
adel -all
vcom -dbg "Z:/GITHUB/Lattice/Sony Vivaz LCD driver/impl1/SonyVivazLCDDriver_impl1_vho.vho"
vcom -dbg -work work "Z:/GITHUB/Lattice/Sony Vivaz LCD driver/main_tb.vhd"
entity testbench
designsdffile "Z:/GITHUB/Lattice/Sony Vivaz LCD driver/impl1/SonyVivazLCDDriver_impl1_vho.sdf" /testbench/uut -sdfmax -load yes
designsimaddoptions +transport_path_delays +transport_int_delays
vsim  +access +r testbench -sdfmax /testbench/uut="Z:/GITHUB/Lattice/Sony Vivaz LCD driver/impl1/SonyVivazLCDDriver_impl1_vho.sdf"  -PL pmi_work -L ovi_machxo2  +transport_path_delays +transport_int_delays
add wave *
run 1000ns
