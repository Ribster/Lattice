lappend auto_path "C:/lscc/diamond/3.7_x64/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {sim_lcd_sender}
set ::bali::simulation::Para(PROJECTPATH) {Z:/GITHUB/Lattice/Sony Vivaz LCD driver}
set ::bali::simulation::Para(FILELIST) {"Z:/GITHUB/Lattice/Sony Vivaz LCD driver/impl1/SonyVivazLCDDriver_impl1_vho.vho" "Z:/GITHUB/Lattice/Sony Vivaz LCD driver/main_tb.vhd" "Z:/GITHUB/Lattice/Sony Vivaz LCD driver/lcd_sender_tb.vhd" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"" "work" "work" "" }
set ::bali::simulation::Para(COMPLIST) {"VHDL" "VHDL" "VHDL" "none" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {testbench}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {/}
set ::bali::simulation::Para(LANGUAGE) {VHDL}
set ::bali::simulation::Para(SDFPATH)  {Z:/GITHUB/Lattice/Sony Vivaz LCD driver/impl1/SonyVivazLCDDriver_impl1_vho.sdf}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ActiveHDL_Run
