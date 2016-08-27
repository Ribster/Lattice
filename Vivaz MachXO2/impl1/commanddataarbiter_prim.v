// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.7.0.96.1
// Netlist written on Sat Aug 20 16:45:59 2016
//
// Verilog Description of module commanddataarbiter
//

module commanddataarbiter (rst, clk, status_cdroutine, go_arbiter, commanddata_arbiter, 
            valueout_arbiter, done_arbiter, commanddata_movetopoint, value_movetopoint, 
            go_movetopoint, commanddata_setbacklight, value_setbacklight, 
            go_setbacklight, commanddata_fillcolor, value_fillcolor, go_fillcolor, 
            commanddata_passthrough, value_passthrough, go_passthrough);   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(7[8:26])
    input rst;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(9[3:6])
    input clk;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(10[3:6])
    input status_cdroutine;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(11[3:19])
    output go_arbiter;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(13[3:13])
    output commanddata_arbiter;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(14[3:22])
    output [15:0]valueout_arbiter;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(15[3:19])
    output done_arbiter;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(16[3:15])
    input commanddata_movetopoint;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(18[3:26])
    input [15:0]value_movetopoint;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(19[3:20])
    input go_movetopoint;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(20[3:17])
    input commanddata_setbacklight;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(22[3:27])
    input [15:0]value_setbacklight;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(23[3:21])
    input go_setbacklight;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(24[3:18])
    input commanddata_fillcolor;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(26[3:24])
    input [15:0]value_fillcolor;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(27[3:18])
    input go_fillcolor;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(28[3:15])
    input commanddata_passthrough;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(30[3:26])
    input [15:0]value_passthrough;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(31[3:20])
    input go_passthrough;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(32[3:17])
    
    
    wire GND_net, VCC_net;
    
    VHI i2 (.Z(VCC_net));
    OB valueout_arbiter_pad_2 (.I(GND_net), .O(valueout_arbiter[2]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(15[3:19])
    OB valueout_arbiter_pad_3 (.I(GND_net), .O(valueout_arbiter[3]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(15[3:19])
    OB valueout_arbiter_pad_1 (.I(GND_net), .O(valueout_arbiter[1]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(15[3:19])
    OB valueout_arbiter_pad_4 (.I(GND_net), .O(valueout_arbiter[4]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(15[3:19])
    OB valueout_arbiter_pad_5 (.I(GND_net), .O(valueout_arbiter[5]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(15[3:19])
    OB valueout_arbiter_pad_6 (.I(GND_net), .O(valueout_arbiter[6]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(15[3:19])
    OB valueout_arbiter_pad_7 (.I(GND_net), .O(valueout_arbiter[7]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(15[3:19])
    OB valueout_arbiter_pad_8 (.I(GND_net), .O(valueout_arbiter[8]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(15[3:19])
    OB valueout_arbiter_pad_9 (.I(GND_net), .O(valueout_arbiter[9]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(15[3:19])
    OB valueout_arbiter_pad_10 (.I(GND_net), .O(valueout_arbiter[10]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(15[3:19])
    OB valueout_arbiter_pad_11 (.I(GND_net), .O(valueout_arbiter[11]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(15[3:19])
    OB valueout_arbiter_pad_12 (.I(GND_net), .O(valueout_arbiter[12]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(15[3:19])
    OB valueout_arbiter_pad_13 (.I(GND_net), .O(valueout_arbiter[13]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(15[3:19])
    OB valueout_arbiter_pad_14 (.I(GND_net), .O(valueout_arbiter[14]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(15[3:19])
    OB valueout_arbiter_pad_15 (.I(GND_net), .O(valueout_arbiter[15]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(15[3:19])
    OB commanddata_arbiter_pad (.I(GND_net), .O(commanddata_arbiter));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(14[3:22])
    OB go_arbiter_pad (.I(GND_net), .O(go_arbiter));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(13[3:13])
    OB valueout_arbiter_pad_0 (.I(GND_net), .O(valueout_arbiter[0]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(15[3:19])
    OB done_arbiter_pad (.I(VCC_net), .O(done_arbiter));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(16[3:15])
    GSR GSR_INST (.GSR(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

