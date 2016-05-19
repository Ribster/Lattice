lappend auto_path "C:/lscc/diamond/3.7_x64/data/script"
package require symbol_generation

set ::bali::Para(MODNAME) lcd_sender
set ::bali::Para(PACKAGE) {"C:/lscc/diamond/3.7_x64/cae_library/vhdl_packages/vdbs"}
set ::bali::Para(PRIMITIVEFILE) {"C:/lscc/diamond/3.7_x64/cae_library/synthesis/vhdl/machxo2.vhd"}
set ::bali::Para(FILELIST) {"Z:/GITHUB/Lattice/MachXO2700HETestproject/main.vhd=work" }
set ::bali::Para(INCLUDEPATH) {}
puts "set parameters done"
::bali::GenerateSymbol
