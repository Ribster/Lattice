setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "Z:/GITHUB/Lattice/vhdl-lcd_sender/simulator_lcd_sender/simulator_lcd_sender.adf"]} { 
	design create simulator_lcd_sender "Z:/GITHUB/Lattice/vhdl-lcd_sender"
  set newDesign 1
}
design open "Z:/GITHUB/Lattice/vhdl-lcd_sender/simulator_lcd_sender"
cd "Z:/GITHUB/Lattice/vhdl-lcd_sender"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "Z:/GITHUB/Lattice/vhdl-lcd_sender/impl1/VHDL_lcd_sender_impl1_vho.vho"
addfile "Z:/GITHUB/Lattice/vhdl-lcd_sender/lcd_sender_tb.vhd"
addfile -sdf "Z:/GITHUB/Lattice/vhdl-lcd_sender/impl1/VHDL_lcd_sender_impl1_vho.sdf"
vlib "Z:/GITHUB/Lattice/vhdl-lcd_sender/simulator_lcd_sender/work"
set worklib work
adel -all
vcom -dbg "Z:/GITHUB/Lattice/vhdl-lcd_sender/impl1/VHDL_lcd_sender_impl1_vho.vho"
vcom -dbg -work work "Z:/GITHUB/Lattice/vhdl-lcd_sender/lcd_sender_tb.vhd"
entity testbench
designsdffile "Z:/GITHUB/Lattice/vhdl-lcd_sender/impl1/VHDL_lcd_sender_impl1_vho.sdf" /testbench/uut -sdfmax -load yes
designsimaddoptions +transport_path_delays +transport_int_delays
vsim  +access +r testbench -sdfmax /testbench/uut="Z:/GITHUB/Lattice/vhdl-lcd_sender/impl1/VHDL_lcd_sender_impl1_vho.sdf"  -PL pmi_work -L ovi_machxo2  +transport_path_delays +transport_int_delays
add wave *
run 1000ns
