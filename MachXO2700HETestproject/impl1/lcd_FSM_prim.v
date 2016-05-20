// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.7.1.502
// Netlist written on Thu May 19 22:55:58 2016
//
// Verilog Description of module lcd_FSM
//

module lcd_FSM (clk, rst, datacommand, data, debug, lcd_data, lcd_wr, 
            lcd_rs);   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(8[8:15])
    input clk;   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(10[3:6])
    input rst;   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(11[3:6])
    input datacommand;   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(12[3:14])
    input [15:0]data;   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(13[3:7])
    output debug;   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(14[3:8])
    output [15:0]lcd_data;   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(15[3:11])
    output lcd_wr;   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(16[3:9])
    output lcd_rs;   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(17[3:9])
    
    wire clk_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_c */ ;   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(10[3:6])
    
    wire GND_net, VCC_net, rst_c, debug_c, n141, clk_c_enable_1, 
        n173, n175, n133, n117, n116, n115, n114, n113, n112;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i70_2_lut_2_lut (.A(rst_c), .B(n133), .Z(n141)) /* synthesis lut_function=(!(A+!(B))) */ ;   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(11[3:6])
    defparam i70_2_lut_2_lut.init = 16'h4444;
    OBZ lcd_data_pad_13 (.I(GND_net), .T(VCC_net), .O(lcd_data[13]));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(15[3:11])
    OBZ lcd_data_pad_1 (.I(GND_net), .T(VCC_net), .O(lcd_data[1]));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(15[3:11])
    OBZ lcd_data_pad_5 (.I(GND_net), .T(VCC_net), .O(lcd_data[5]));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(15[3:11])
    OBZ lcd_data_pad_15 (.I(GND_net), .T(VCC_net), .O(lcd_data[15]));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(15[3:11])
    OBZ lcd_data_pad_14 (.I(GND_net), .T(VCC_net), .O(lcd_data[14]));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(15[3:11])
    OB debug_pad (.I(debug_c), .O(debug));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(14[3:8])
    FD1S3AX PS_FSM_FSM_i7 (.D(n112), .CK(clk_c), .Q(n133));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(72[5] 92[14])
    defparam PS_FSM_FSM_i7.GSR = "ENABLED";
    VLO i1 (.Z(GND_net));
    OBZ lcd_data_pad_8 (.I(GND_net), .T(VCC_net), .O(lcd_data[8]));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(15[3:11])
    OBZ lcd_data_pad_9 (.I(GND_net), .T(VCC_net), .O(lcd_data[9]));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(15[3:11])
    OBZ lcd_data_pad_10 (.I(GND_net), .T(VCC_net), .O(lcd_data[10]));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(15[3:11])
    LUT4 i68_1_lut_rep_1 (.A(rst_c), .Z(n173)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(11[3:6])
    defparam i68_1_lut_rep_1.init = 16'h5555;
    OBZ lcd_data_pad_11 (.I(GND_net), .T(VCC_net), .O(lcd_data[11]));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(15[3:11])
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OBZ lcd_data_pad_2 (.I(GND_net), .T(VCC_net), .O(lcd_data[2]));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(15[3:11])
    GSR GSR_INST (.GSR(n173));
    OBZ lcd_data_pad_3 (.I(GND_net), .T(VCC_net), .O(lcd_data[3]));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(15[3:11])
    FD1P3IX debug_18 (.D(n175), .SP(clk_c_enable_1), .CD(n141), .CK(clk_c), 
            .Q(debug_c));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(71[4] 93[11])
    defparam debug_18.GSR = "DISABLED";
    OBZ lcd_data_pad_4 (.I(GND_net), .T(VCC_net), .O(lcd_data[4]));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(15[3:11])
    LUT4 i92_2_lut_2_lut (.A(rst_c), .B(n116), .Z(clk_c_enable_1)) /* synthesis lut_function=(!(A+!(B))) */ ;   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(11[3:6])
    defparam i92_2_lut_2_lut.init = 16'h4444;
    LUT4 m1_lut (.Z(n175)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    OBZ lcd_data_pad_6 (.I(GND_net), .T(VCC_net), .O(lcd_data[6]));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(15[3:11])
    FD1S3AX PS_FSM_FSM_i6 (.D(n113), .CK(clk_c), .Q(n112));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(72[5] 92[14])
    defparam PS_FSM_FSM_i6.GSR = "ENABLED";
    OBZ lcd_data_pad_7 (.I(GND_net), .T(VCC_net), .O(lcd_data[7]));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(15[3:11])
    FD1S3AX PS_FSM_FSM_i5 (.D(n114), .CK(clk_c), .Q(n113));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(72[5] 92[14])
    defparam PS_FSM_FSM_i5.GSR = "ENABLED";
    OBZ lcd_data_pad_12 (.I(GND_net), .T(VCC_net), .O(lcd_data[12]));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(15[3:11])
    FD1S3AX PS_FSM_FSM_i4 (.D(n115), .CK(clk_c), .Q(n114));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(72[5] 92[14])
    defparam PS_FSM_FSM_i4.GSR = "ENABLED";
    FD1S3AX PS_FSM_FSM_i3 (.D(n116), .CK(clk_c), .Q(n115));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(72[5] 92[14])
    defparam PS_FSM_FSM_i3.GSR = "ENABLED";
    OBZ lcd_data_pad_0 (.I(GND_net), .T(VCC_net), .O(lcd_data[0]));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(15[3:11])
    FD1S3AX PS_FSM_FSM_i2 (.D(n117), .CK(clk_c), .Q(n116));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(72[5] 92[14])
    defparam PS_FSM_FSM_i2.GSR = "ENABLED";
    OBZ lcd_wr_pad (.I(GND_net), .T(VCC_net), .O(lcd_wr));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(16[3:9])
    FD1S3AY PS_FSM_FSM_i1 (.D(n133), .CK(clk_c), .Q(n117));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(72[5] 92[14])
    defparam PS_FSM_FSM_i1.GSR = "ENABLED";
    OBZ lcd_rs_pad (.I(GND_net), .T(VCC_net), .O(lcd_rs));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(17[3:9])
    IB clk_pad (.I(clk), .O(clk_c));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(10[3:6])
    IB rst_pad (.I(rst), .O(rst_c));   // z:/github/lattice/machxo2700hetestproject/lcd_fsm.vhd(11[3:6])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

