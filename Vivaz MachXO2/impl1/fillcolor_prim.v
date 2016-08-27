// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.7.0.96.1
// Netlist written on Sun Aug 21 11:25:06 2016
//
// Verilog Description of module fillcolor
//

module fillcolor (rst, clk, go, status_execution, color, pixcount, 
            commanddata, valueout, start, done);   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(7[8:17])
    input rst;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(9[3:6])
    input clk;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(10[3:6])
    input go;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(11[3:5])
    input status_execution;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(12[3:19])
    input [15:0]color;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(13[3:8])
    input [16:0]pixcount;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(14[3:11])
    output commanddata;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(16[3:14])
    output [15:0]valueout;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(17[3:11])
    output start;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(18[3:8])
    output done;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(19[3:7])
    
    
    wire GND_net, VCC_net;
    
    VHI i26 (.Z(VCC_net));
    OBZ commanddata_pad (.I(GND_net), .T(VCC_net), .O(commanddata));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(16[3:14])
    OBZ valueout_pad_15 (.I(GND_net), .T(VCC_net), .O(valueout[15]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(17[3:11])
    OBZ valueout_pad_14 (.I(GND_net), .T(VCC_net), .O(valueout[14]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(17[3:11])
    OBZ valueout_pad_13 (.I(GND_net), .T(VCC_net), .O(valueout[13]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(17[3:11])
    OBZ valueout_pad_12 (.I(GND_net), .T(VCC_net), .O(valueout[12]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(17[3:11])
    OBZ valueout_pad_11 (.I(GND_net), .T(VCC_net), .O(valueout[11]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(17[3:11])
    OBZ valueout_pad_10 (.I(GND_net), .T(VCC_net), .O(valueout[10]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(17[3:11])
    OBZ valueout_pad_9 (.I(GND_net), .T(VCC_net), .O(valueout[9]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(17[3:11])
    OBZ valueout_pad_8 (.I(GND_net), .T(VCC_net), .O(valueout[8]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(17[3:11])
    OBZ valueout_pad_7 (.I(GND_net), .T(VCC_net), .O(valueout[7]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(17[3:11])
    OBZ valueout_pad_6 (.I(GND_net), .T(VCC_net), .O(valueout[6]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(17[3:11])
    OBZ valueout_pad_5 (.I(GND_net), .T(VCC_net), .O(valueout[5]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(17[3:11])
    OBZ valueout_pad_4 (.I(GND_net), .T(VCC_net), .O(valueout[4]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(17[3:11])
    OBZ valueout_pad_3 (.I(GND_net), .T(VCC_net), .O(valueout[3]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(17[3:11])
    OBZ valueout_pad_2 (.I(GND_net), .T(VCC_net), .O(valueout[2]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(17[3:11])
    OBZ valueout_pad_1 (.I(GND_net), .T(VCC_net), .O(valueout[1]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(17[3:11])
    VLO i4 (.Z(GND_net));
    OBZ valueout_pad_0 (.I(GND_net), .T(VCC_net), .O(valueout[0]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(17[3:11])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OBZ start_pad (.I(GND_net), .T(VCC_net), .O(start));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(18[3:8])
    TSALL TSALL_INST (.TSALL(GND_net));
    OBZ done_pad (.I(GND_net), .T(VCC_net), .O(done));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(19[3:7])
    GSR GSR_INST (.GSR(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

