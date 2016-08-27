setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "Z:/GITHUB/Lattice/Vivaz driver Rev A/simulation_reva/simulation_reva.adf"]} { 
	design create simulation_reva "Z:/GITHUB/Lattice/Vivaz driver Rev A"
  set newDesign 1
}
design open "Z:/GITHUB/Lattice/Vivaz driver Rev A/simulation_reva"
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
addfile "Z:/GITHUB/Lattice/Vivaz driver Rev A/lcd_sender.vhd"
addfile "Z:/GITHUB/Lattice/Vivaz driver Rev A/clk_div2.vhd"
addfile "Z:/GITHUB/Lattice/Vivaz driver Rev A/main.vhd"
addfile "Z:/GITHUB/Lattice/Vivaz driver Rev A/lcd_sender_tb.vhd"
addfile "Z:/GITHUB/Lattice/Vivaz driver Rev A/clk_div2_tb.vhd"
vlib "Z:/GITHUB/Lattice/Vivaz driver Rev A/simulation_reva/work"
set worklib work
adel -all
vcom -dbg -work work "Z:/GITHUB/Lattice/Vivaz driver Rev A/lcd_sender.vhd"
vcom -dbg -work work "Z:/GITHUB/Lattice/Vivaz driver Rev A/clk_div2.vhd"
vcom -dbg -work work "Z:/GITHUB/Lattice/Vivaz driver Rev A/main.vhd"
vcom -dbg -work work "Z:/GITHUB/Lattice/Vivaz driver Rev A/lcd_sender_tb.vhd"
vcom -dbg -work work "Z:/GITHUB/Lattice/Vivaz driver Rev A/clk_div2_tb.vhd"
entity testbench
vsim  +access +r testbench   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
