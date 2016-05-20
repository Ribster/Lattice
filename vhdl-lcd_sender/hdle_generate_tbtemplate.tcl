lappend auto_path "C:/lscc/diamond/3.7_x64/data/script"
package require tbtemplate_generation

set ::bali::Para(MODNAME) lcd_sender
set ::bali::Para(PACKAGE) {"C:/lscc/diamond/3.7_x64/cae_library/vhdl_packages/vdbs"}
set ::bali::Para(PRIMITIVEFILE) {"C:/lscc/diamond/3.7_x64/cae_library/synthesis/vhdl/machxo2.vhd"}
set ::bali::Para(TFT) {"C:/lscc/diamond/3.7_x64/data/templates/tstbch_f.tft"}
set ::bali::Para(OUTNAME) lcd_sender_tb
set ::bali::Para(EXT) .vhd
set ::bali::Para(FILELIST) {"Z:/GITHUB/Lattice/vhdl-lcd_sender/lcd_sender.vhd=work" }
set ::bali::Para(INCLUDEPATH) {}
puts "set parameters done"
::bali::GenerateTbTemplate
