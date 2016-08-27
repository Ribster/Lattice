lappend auto_path "C:/lscc/diamond/3.7_x64/data/script"
package require tbtemplate_generation

set ::bali::Para(MODNAME) top
set ::bali::Para(PACKAGE) {"C:/lscc/diamond/3.7_x64/cae_library/vhdl_packages/vdbs"}
set ::bali::Para(PRIMITIVEFILE) {"C:/lscc/diamond/3.7_x64/cae_library/synthesis/vhdl/machxo2.vhd"}
set ::bali::Para(TFT) {"C:/lscc/diamond/3.7_x64/data/templates/tstbch_f.tft"}
set ::bali::Para(OUTNAME) Vivaz_MachXO2_tb
set ::bali::Para(EXT) .vhd
set ::bali::Para(FILELIST) {"D:/Github/Lattice/Vivaz MachXO2/top.vhdl=work" "D:/Github/Lattice/Vivaz MachXO2/clk_divider.vhd=work" "D:/Github/Lattice/Vivaz MachXO2/reset_routine.vhd=work" "D:/Github/Lattice/Vivaz MachXO2/debounce.vhd=work" "D:/Github/Lattice/Vivaz MachXO2/write_command_data.vhd=work" "D:/Github/Lattice/Vivaz MachXO2/commanddataarbiter.vhd=work" "D:/Github/Lattice/Vivaz MachXO2/movetopoint.vhd=work" "D:/Github/Lattice/Vivaz MachXO2/setbacklight.vhd=work" "D:/Github/Lattice/Vivaz MachXO2/fillcolor.vhd=work" "D:/Github/Lattice/Vivaz MachXO2/fsm_init.vhd=work" }
set ::bali::Para(INCLUDEPATH) {}
puts "set parameters done"
::bali::GenerateTbTemplate
