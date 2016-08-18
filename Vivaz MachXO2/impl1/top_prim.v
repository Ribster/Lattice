// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.7.1.502
// Netlist written on Thu Aug 18 20:12:24 2016
//
// Verilog Description of module top
//

module top (pb1, pb2, main_reset, led30, led67, CH1, CH2, CH3, 
            CH4, vivaz_TE, vivaz_RS, vivaz_RESET, vivaz_WR, vivaz_D015);   // z:/github/lattice/vivaz machxo2/top.vhdl(45[8:11])
    input pb1;   // z:/github/lattice/vivaz machxo2/top.vhdl(47[7:10])
    input pb2;   // z:/github/lattice/vivaz machxo2/top.vhdl(48[4:7])
    input main_reset;   // z:/github/lattice/vivaz machxo2/top.vhdl(49[4:14])
    output [3:0]led30;   // z:/github/lattice/vivaz machxo2/top.vhdl(50[4:9])
    output [1:0]led67;   // z:/github/lattice/vivaz machxo2/top.vhdl(51[4:9])
    output CH1;   // z:/github/lattice/vivaz machxo2/top.vhdl(52[4:7])
    output CH2;   // z:/github/lattice/vivaz machxo2/top.vhdl(53[4:7])
    output CH3;   // z:/github/lattice/vivaz machxo2/top.vhdl(54[4:7])
    output CH4;   // z:/github/lattice/vivaz machxo2/top.vhdl(55[4:7])
    input vivaz_TE;   // z:/github/lattice/vivaz machxo2/top.vhdl(56[4:12])
    output vivaz_RS;   // z:/github/lattice/vivaz machxo2/top.vhdl(57[4:12])
    output vivaz_RESET;   // z:/github/lattice/vivaz machxo2/top.vhdl(58[4:15])
    output vivaz_WR;   // z:/github/lattice/vivaz machxo2/top.vhdl(59[4:12])
    output [15:0]vivaz_D015;   // z:/github/lattice/vivaz machxo2/top.vhdl(60[4:14])
    
    
    wire GND_net, VCC_net;
    
    VHI i36 (.Z(VCC_net));
    OBZ led30_pad_3 (.I(GND_net), .T(VCC_net), .O(led30[3]));   // z:/github/lattice/vivaz machxo2/top.vhdl(50[4:9])
    OBZ led30_pad_2 (.I(GND_net), .T(VCC_net), .O(led30[2]));   // z:/github/lattice/vivaz machxo2/top.vhdl(50[4:9])
    OBZ led30_pad_1 (.I(GND_net), .T(VCC_net), .O(led30[1]));   // z:/github/lattice/vivaz machxo2/top.vhdl(50[4:9])
    OBZ led30_pad_0 (.I(GND_net), .T(VCC_net), .O(led30[0]));   // z:/github/lattice/vivaz machxo2/top.vhdl(50[4:9])
    OBZ led67_pad_1 (.I(GND_net), .T(VCC_net), .O(led67[1]));   // z:/github/lattice/vivaz machxo2/top.vhdl(51[4:9])
    OBZ led67_pad_0 (.I(GND_net), .T(VCC_net), .O(led67[0]));   // z:/github/lattice/vivaz machxo2/top.vhdl(51[4:9])
    OBZ CH1_pad (.I(GND_net), .T(VCC_net), .O(CH1));   // z:/github/lattice/vivaz machxo2/top.vhdl(52[4:7])
    OBZ CH2_pad (.I(GND_net), .T(VCC_net), .O(CH2));   // z:/github/lattice/vivaz machxo2/top.vhdl(53[4:7])
    OBZ CH3_pad (.I(GND_net), .T(VCC_net), .O(CH3));   // z:/github/lattice/vivaz machxo2/top.vhdl(54[4:7])
    OBZ CH4_pad (.I(GND_net), .T(VCC_net), .O(CH4));   // z:/github/lattice/vivaz machxo2/top.vhdl(55[4:7])
    OBZ vivaz_RS_pad (.I(GND_net), .T(VCC_net), .O(vivaz_RS));   // z:/github/lattice/vivaz machxo2/top.vhdl(57[4:12])
    OBZ vivaz_RESET_pad (.I(GND_net), .T(VCC_net), .O(vivaz_RESET));   // z:/github/lattice/vivaz machxo2/top.vhdl(58[4:15])
    OBZ vivaz_WR_pad (.I(GND_net), .T(VCC_net), .O(vivaz_WR));   // z:/github/lattice/vivaz machxo2/top.vhdl(59[4:12])
    OBZ vivaz_D015_pad_15 (.I(GND_net), .T(VCC_net), .O(vivaz_D015[15]));   // z:/github/lattice/vivaz machxo2/top.vhdl(60[4:14])
    OBZ vivaz_D015_pad_14 (.I(GND_net), .T(VCC_net), .O(vivaz_D015[14]));   // z:/github/lattice/vivaz machxo2/top.vhdl(60[4:14])
    OBZ vivaz_D015_pad_13 (.I(GND_net), .T(VCC_net), .O(vivaz_D015[13]));   // z:/github/lattice/vivaz machxo2/top.vhdl(60[4:14])
    OBZ vivaz_D015_pad_12 (.I(GND_net), .T(VCC_net), .O(vivaz_D015[12]));   // z:/github/lattice/vivaz machxo2/top.vhdl(60[4:14])
    OBZ vivaz_D015_pad_11 (.I(GND_net), .T(VCC_net), .O(vivaz_D015[11]));   // z:/github/lattice/vivaz machxo2/top.vhdl(60[4:14])
    OBZ vivaz_D015_pad_10 (.I(GND_net), .T(VCC_net), .O(vivaz_D015[10]));   // z:/github/lattice/vivaz machxo2/top.vhdl(60[4:14])
    OBZ vivaz_D015_pad_9 (.I(GND_net), .T(VCC_net), .O(vivaz_D015[9]));   // z:/github/lattice/vivaz machxo2/top.vhdl(60[4:14])
    OBZ vivaz_D015_pad_8 (.I(GND_net), .T(VCC_net), .O(vivaz_D015[8]));   // z:/github/lattice/vivaz machxo2/top.vhdl(60[4:14])
    OBZ vivaz_D015_pad_7 (.I(GND_net), .T(VCC_net), .O(vivaz_D015[7]));   // z:/github/lattice/vivaz machxo2/top.vhdl(60[4:14])
    OBZ vivaz_D015_pad_6 (.I(GND_net), .T(VCC_net), .O(vivaz_D015[6]));   // z:/github/lattice/vivaz machxo2/top.vhdl(60[4:14])
    OBZ vivaz_D015_pad_5 (.I(GND_net), .T(VCC_net), .O(vivaz_D015[5]));   // z:/github/lattice/vivaz machxo2/top.vhdl(60[4:14])
    OBZ vivaz_D015_pad_4 (.I(GND_net), .T(VCC_net), .O(vivaz_D015[4]));   // z:/github/lattice/vivaz machxo2/top.vhdl(60[4:14])
    OBZ vivaz_D015_pad_3 (.I(GND_net), .T(VCC_net), .O(vivaz_D015[3]));   // z:/github/lattice/vivaz machxo2/top.vhdl(60[4:14])
    VLO i4 (.Z(GND_net));
    OBZ vivaz_D015_pad_2 (.I(GND_net), .T(VCC_net), .O(vivaz_D015[2]));   // z:/github/lattice/vivaz machxo2/top.vhdl(60[4:14])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OBZ vivaz_D015_pad_1 (.I(GND_net), .T(VCC_net), .O(vivaz_D015[1]));   // z:/github/lattice/vivaz machxo2/top.vhdl(60[4:14])
    TSALL TSALL_INST (.TSALL(GND_net));
    OBZ vivaz_D015_pad_0 (.I(GND_net), .T(VCC_net), .O(vivaz_D015[0]));   // z:/github/lattice/vivaz machxo2/top.vhdl(60[4:14])
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

