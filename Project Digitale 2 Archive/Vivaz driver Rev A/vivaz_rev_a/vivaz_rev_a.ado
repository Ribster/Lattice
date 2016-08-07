setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "Z:/GITHUB/Lattice/Vivaz driver Rev A/vivaz_rev_a/vivaz_rev_a.adf"]} { 
	design create vivaz_rev_a "Z:/GITHUB/Lattice/Vivaz driver Rev A"
  set newDesign 1
}
design open "Z:/GITHUB/Lattice/Vivaz driver Rev A/vivaz_rev_a"
cd "Z:/GITHUB/Lattice/Vivaz driver Rev A"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "Z:/GITHUB/Lattice/Vivaz driver Rev A/impl1/vivaz_driver_reva_impl1_vho.vho"
addfile "Z:/GITHUB/Lattice/Vivaz driver Rev A/lcd_sender_tb.vhd"
addfile "Z:/GITHUB/Lattice/Vivaz driver Rev A/clk_div2_tb.vhd"
addfile -sdf "Z:/GITHUB/Lattice/Vivaz driver Rev A/impl1/vivaz_driver_reva_impl1_vho.sdf"
vlib "Z:/GITHUB/Lattice/Vivaz driver Rev A/vivaz_rev_a/work"
set worklib work
adel -all
vcom -dbg "Z:/GITHUB/Lattice/Vivaz driver Rev A/impl1/vivaz_driver_reva_impl1_vho.vho"
vcom -dbg -work work "Z:/GITHUB/Lattice/Vivaz driver Rev A/lcd_sender_tb.vhd"
vcom -dbg -work work "Z:/GITHUB/Lattice/Vivaz driver Rev A/clk_div2_tb.vhd"
entity testbench
designsdffile "Z:/GITHUB/Lattice/Vivaz driver Rev A/impl1/vivaz_driver_reva_impl1_vho.sdf" /testbench/ -sdfmax -load yes
designsimaddoptions +transport_path_delays +transport_int_delays
vsim  +access +r testbench -sdfmax /testbench/="Z:/GITHUB/Lattice/Vivaz driver Rev A/impl1/vivaz_driver_reva_impl1_vho.sdf"  -PL pmi_work -L ovi_machxo2  +transport_path_delays +transport_int_delays
add wave *
run 1000ns
