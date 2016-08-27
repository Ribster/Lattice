setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "D:/Github/Lattice/Vivaz MachXO2/tb/tb.adf"]} { 
	design create tb "D:/Github/Lattice/Vivaz MachXO2"
  set newDesign 1
}
design open "D:/Github/Lattice/Vivaz MachXO2/tb"
cd "D:/Github/Lattice/Vivaz MachXO2"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "D:/Github/Lattice/Vivaz MachXO2/impl1/Vivaz_MachXO2_impl1_vho.vho"
addfile "D:/Github/Lattice/Vivaz MachXO2/Vivaz_MachXO2_tb.vhd"
addfile -sdf "D:/Github/Lattice/Vivaz MachXO2/impl1/Vivaz_MachXO2_impl1_vho.sdf"
vlib "D:/Github/Lattice/Vivaz MachXO2/tb/work"
set worklib work
adel -all
vcom -dbg "D:/Github/Lattice/Vivaz MachXO2/impl1/Vivaz_MachXO2_impl1_vho.vho"
vcom -dbg -work work "D:/Github/Lattice/Vivaz MachXO2/Vivaz_MachXO2_tb.vhd"
entity testbench
designsdffile "D:/Github/Lattice/Vivaz MachXO2/impl1/Vivaz_MachXO2_impl1_vho.sdf" /testbench/uut -sdfmax -load yes
designsimaddoptions +transport_path_delays +transport_int_delays
vsim  +access +r testbench -sdfmax /testbench/uut="D:/Github/Lattice/Vivaz MachXO2/impl1/Vivaz_MachXO2_impl1_vho.sdf"  -PL pmi_work -L ovi_machxo2  +transport_path_delays +transport_int_delays
add wave *
run 1000ns
