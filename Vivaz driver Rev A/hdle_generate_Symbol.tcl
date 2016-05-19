lappend auto_path "C:/lscc/diamond/3.7_x64/data/script"
package require symbol_generation

set ::bali::Para(MODNAME) clk_div2
set ::bali::Para(PACKAGE) {"C:/lscc/diamond/3.7_x64/cae_library/vhdl_packages/vdbs"}
set ::bali::Para(PRIMITIVEFILE) {"C:/lscc/diamond/3.7_x64/cae_library/synthesis/vhdl/machxo2.vhd"}
set ::bali::Para(FILELIST) {"Z:/GITHUB/Lattice/Vivaz driver Rev A/main.vhd=work" "Z:/GITHUB/Lattice/Vivaz driver Rev A/lcd_sender.vhd=work" "Z:/GITHUB/Lattice/Vivaz driver Rev A/clk_div2.vhd=work" }
set ::bali::Para(INCLUDEPATH) {}
puts "set parameters done"
::bali::GenerateSymbol
