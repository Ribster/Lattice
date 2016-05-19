// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.7.1.502
// Netlist written on Wed May 18 19:25:49 2016
//
// Verilog Description of module lcd_sender
//

module lcd_sender (clk, rst, en, lcd_bus, lcd_rs, lcd_reset, lcd_wr, 
            sender_busy, sender_go, sender_data1command0, sender_payload);   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(8[8:18])
    input clk;   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(10[3:6])
    input rst;   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(11[3:6])
    input en;   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(12[3:5])
    output [15:0]lcd_bus;   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(13[3:10])
    output lcd_rs;   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(14[3:9])
    output lcd_reset;   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(15[3:12])
    output lcd_wr;   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(16[3:9])
    output sender_busy;   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(17[3:14])
    input sender_go;   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(18[3:12])
    input sender_data1command0;   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(19[3:23])
    input [15:0]sender_payload;   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(20[3:17])
    
    wire clk_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_c */ ;   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(10[3:6])
    
    wire GND_net, VCC_net, rst_c, en_c, lcd_bus_c_15, lcd_bus_c_14, 
        lcd_bus_c_13, lcd_bus_c_12, lcd_bus_c_11, lcd_bus_c_10, lcd_bus_c_9, 
        lcd_bus_c_8, lcd_bus_c_7, lcd_bus_c_6, lcd_bus_c_5, lcd_bus_c_4, 
        lcd_bus_c_3, lcd_bus_c_2, lcd_bus_c_1, lcd_bus_c_0, lcd_rs_c, 
        lcd_wr_c, sender_busy_c, sender_go_c, sender_data1command0_c, 
        sender_payload_c_15, sender_payload_c_14, sender_payload_c_13, 
        sender_payload_c_12, sender_payload_c_11, sender_payload_c_10, 
        sender_payload_c_9, sender_payload_c_8, sender_payload_c_7, sender_payload_c_6, 
        sender_payload_c_5, sender_payload_c_4, sender_payload_c_3, sender_payload_c_2, 
        sender_payload_c_1, sender_payload_c_0, n369, lcd_wr_N_44, clk_c_enable_5, 
        lcd_bus_15__N_17, n147, n148, n149, n150, n151, n152, 
        clk_c_enable_1, clk_c_enable_19, n370, n241, clk_c_enable_3;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i80_2_lut_rep_1 (.A(sender_go_c), .B(n152), .Z(n369)) /* synthesis lut_function=(A (B)) */ ;   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(37[4] 66[13])
    defparam i80_2_lut_rep_1.init = 16'h8888;
    LUT4 i223_3_lut (.A(sender_go_c), .B(en_c), .C(n152), .Z(clk_c_enable_1)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(37[4] 66[13])
    defparam i223_3_lut.init = 16'h8c8c;
    IB sender_payload_pad_10 (.I(sender_payload[10]), .O(sender_payload_c_10));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(20[3:17])
    IB sender_payload_pad_11 (.I(sender_payload[11]), .O(sender_payload_c_11));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(20[3:17])
    IB sender_payload_pad_12 (.I(sender_payload[12]), .O(sender_payload_c_12));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(20[3:17])
    IB sender_payload_pad_13 (.I(sender_payload[13]), .O(sender_payload_c_13));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(20[3:17])
    FD1P3AY FSM_PS_FSM__i1 (.D(n241), .SP(clk_c_enable_1), .CK(clk_c), 
            .Q(n152));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(37[4] 66[13])
    defparam FSM_PS_FSM__i1.GSR = "ENABLED";
    FD1P3AX lcd_bus__i1 (.D(sender_payload_c_0), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_0));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(36[3] 67[10])
    defparam lcd_bus__i1.GSR = "ENABLED";
    IB sender_payload_pad_9 (.I(sender_payload[9]), .O(sender_payload_c_9));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(20[3:17])
    LUT4 i215_2_lut (.A(n151), .B(en_c), .Z(clk_c_enable_19)) /* synthesis lut_function=(A (B)) */ ;
    defparam i215_2_lut.init = 16'h8888;
    IB sender_payload_pad_14 (.I(sender_payload[14]), .O(sender_payload_c_14));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(20[3:17])
    OB lcd_bus_pad_15 (.I(lcd_bus_c_15), .O(lcd_bus[15]));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(13[3:10])
    VLO i1 (.Z(GND_net));
    OB lcd_bus_pad_11 (.I(lcd_bus_c_11), .O(lcd_bus[11]));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(13[3:10])
    IB rst_pad (.I(rst), .O(rst_c));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(11[3:6])
    IB clk_pad (.I(clk), .O(clk_c));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(10[3:6])
    OB sender_busy_pad (.I(sender_busy_c), .O(sender_busy));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(17[3:14])
    OB lcd_wr_pad (.I(lcd_wr_c), .O(lcd_wr));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(16[3:9])
    FD1P3AX sender_busy_49 (.D(n370), .SP(clk_c_enable_3), .CK(clk_c), 
            .Q(sender_busy_c));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(36[3] 67[10])
    defparam sender_busy_49.GSR = "ENABLED";
    OBZ lcd_reset_pad (.I(GND_net), .T(VCC_net), .O(lcd_reset));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(15[3:12])
    OB lcd_rs_pad (.I(lcd_rs_c), .O(lcd_rs));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(14[3:9])
    OB lcd_bus_pad_0 (.I(lcd_bus_c_0), .O(lcd_bus[0]));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(13[3:10])
    OB lcd_bus_pad_1 (.I(lcd_bus_c_1), .O(lcd_bus[1]));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(13[3:10])
    FD1P3AX lcd_wr_48 (.D(lcd_wr_N_44), .SP(en_c), .CK(clk_c), .Q(lcd_wr_c));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(36[3] 67[10])
    defparam lcd_wr_48.GSR = "ENABLED";
    OB lcd_bus_pad_8 (.I(lcd_bus_c_8), .O(lcd_bus[8]));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(13[3:10])
    OB lcd_bus_pad_2 (.I(lcd_bus_c_2), .O(lcd_bus[2]));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(13[3:10])
    OB lcd_bus_pad_3 (.I(lcd_bus_c_3), .O(lcd_bus[3]));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(13[3:10])
    OB lcd_bus_pad_12 (.I(lcd_bus_c_12), .O(lcd_bus[12]));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(13[3:10])
    FD1P3AX lcd_bus__i2 (.D(sender_payload_c_1), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_1));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(36[3] 67[10])
    defparam lcd_bus__i2.GSR = "ENABLED";
    OB lcd_bus_pad_4 (.I(lcd_bus_c_4), .O(lcd_bus[4]));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(13[3:10])
    OB lcd_bus_pad_5 (.I(lcd_bus_c_5), .O(lcd_bus[5]));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(13[3:10])
    OB lcd_bus_pad_6 (.I(lcd_bus_c_6), .O(lcd_bus[6]));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(13[3:10])
    OB lcd_bus_pad_7 (.I(lcd_bus_c_7), .O(lcd_bus[7]));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(13[3:10])
    GSR GSR_INST (.GSR(lcd_bus_15__N_17));
    FD1P3AX lcd_rs_50 (.D(sender_data1command0_c), .SP(clk_c_enable_5), 
            .CK(clk_c), .Q(lcd_rs_c));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(36[3] 67[10])
    defparam lcd_rs_50.GSR = "ENABLED";
    OB lcd_bus_pad_13 (.I(lcd_bus_c_13), .O(lcd_bus[13]));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(13[3:10])
    IB sender_payload_pad_15 (.I(sender_payload[15]), .O(sender_payload_c_15));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(20[3:17])
    IB sender_data1command0_pad (.I(sender_data1command0), .O(sender_data1command0_c));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(19[3:23])
    IB sender_go_pad (.I(sender_go), .O(sender_go_c));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(18[3:12])
    IB en_pad (.I(en), .O(en_c));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(12[3:5])
    OB lcd_bus_pad_9 (.I(lcd_bus_c_9), .O(lcd_bus[9]));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(13[3:10])
    OB lcd_bus_pad_14 (.I(lcd_bus_c_14), .O(lcd_bus[14]));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(13[3:10])
    FD1P3AX lcd_bus__i3 (.D(sender_payload_c_2), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_2));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(36[3] 67[10])
    defparam lcd_bus__i3.GSR = "ENABLED";
    OB lcd_bus_pad_10 (.I(lcd_bus_c_10), .O(lcd_bus[10]));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(13[3:10])
    TSALL TSALL_INST (.TSALL(GND_net));
    IB sender_payload_pad_8 (.I(sender_payload[8]), .O(sender_payload_c_8));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(20[3:17])
    IB sender_payload_pad_7 (.I(sender_payload[7]), .O(sender_payload_c_7));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(20[3:17])
    IB sender_payload_pad_6 (.I(sender_payload[6]), .O(sender_payload_c_6));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(20[3:17])
    IB sender_payload_pad_5 (.I(sender_payload[5]), .O(sender_payload_c_5));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(20[3:17])
    IB sender_payload_pad_4 (.I(sender_payload[4]), .O(sender_payload_c_4));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(20[3:17])
    IB sender_payload_pad_3 (.I(sender_payload[3]), .O(sender_payload_c_3));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(20[3:17])
    IB sender_payload_pad_2 (.I(sender_payload[2]), .O(sender_payload_c_2));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(20[3:17])
    IB sender_payload_pad_1 (.I(sender_payload[1]), .O(sender_payload_c_1));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(20[3:17])
    IB sender_payload_pad_0 (.I(sender_payload[0]), .O(sender_payload_c_0));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(20[3:17])
    FD1P3AX lcd_bus__i4 (.D(sender_payload_c_3), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_3));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(36[3] 67[10])
    defparam lcd_bus__i4.GSR = "ENABLED";
    FD1P3AX lcd_bus__i5 (.D(sender_payload_c_4), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_4));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(36[3] 67[10])
    defparam lcd_bus__i5.GSR = "ENABLED";
    FD1P3AX lcd_bus__i6 (.D(sender_payload_c_5), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_5));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(36[3] 67[10])
    defparam lcd_bus__i6.GSR = "ENABLED";
    FD1P3AX lcd_bus__i7 (.D(sender_payload_c_6), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_6));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(36[3] 67[10])
    defparam lcd_bus__i7.GSR = "ENABLED";
    FD1P3AX lcd_bus__i8 (.D(sender_payload_c_7), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_7));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(36[3] 67[10])
    defparam lcd_bus__i8.GSR = "ENABLED";
    FD1P3AX lcd_bus__i9 (.D(sender_payload_c_8), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_8));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(36[3] 67[10])
    defparam lcd_bus__i9.GSR = "ENABLED";
    FD1P3AX lcd_bus__i10 (.D(sender_payload_c_9), .SP(clk_c_enable_19), 
            .CK(clk_c), .Q(lcd_bus_c_9));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(36[3] 67[10])
    defparam lcd_bus__i10.GSR = "ENABLED";
    FD1P3AX lcd_bus__i11 (.D(sender_payload_c_10), .SP(clk_c_enable_19), 
            .CK(clk_c), .Q(lcd_bus_c_10));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(36[3] 67[10])
    defparam lcd_bus__i11.GSR = "ENABLED";
    FD1P3AX lcd_bus__i12 (.D(sender_payload_c_11), .SP(clk_c_enable_19), 
            .CK(clk_c), .Q(lcd_bus_c_11));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(36[3] 67[10])
    defparam lcd_bus__i12.GSR = "ENABLED";
    FD1P3AX lcd_bus__i13 (.D(sender_payload_c_12), .SP(clk_c_enable_19), 
            .CK(clk_c), .Q(lcd_bus_c_12));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(36[3] 67[10])
    defparam lcd_bus__i13.GSR = "ENABLED";
    FD1P3AX lcd_bus__i14 (.D(sender_payload_c_13), .SP(clk_c_enable_19), 
            .CK(clk_c), .Q(lcd_bus_c_13));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(36[3] 67[10])
    defparam lcd_bus__i14.GSR = "ENABLED";
    FD1P3AX lcd_bus__i15 (.D(sender_payload_c_14), .SP(clk_c_enable_19), 
            .CK(clk_c), .Q(lcd_bus_c_14));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(36[3] 67[10])
    defparam lcd_bus__i15.GSR = "ENABLED";
    FD1P3AX lcd_bus__i16 (.D(sender_payload_c_15), .SP(clk_c_enable_19), 
            .CK(clk_c), .Q(lcd_bus_c_15));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(36[3] 67[10])
    defparam lcd_bus__i16.GSR = "ENABLED";
    FD1P3AX FSM_PS_FSM__i2 (.D(n369), .SP(en_c), .CK(clk_c), .Q(n151));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(37[4] 66[13])
    defparam FSM_PS_FSM__i2.GSR = "ENABLED";
    FD1P3AX FSM_PS_FSM__i3 (.D(n151), .SP(en_c), .CK(clk_c), .Q(n150));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(37[4] 66[13])
    defparam FSM_PS_FSM__i3.GSR = "ENABLED";
    FD1P3AX FSM_PS_FSM__i4 (.D(n150), .SP(en_c), .CK(clk_c), .Q(n149));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(37[4] 66[13])
    defparam FSM_PS_FSM__i4.GSR = "ENABLED";
    FD1P3AX FSM_PS_FSM__i5 (.D(n149), .SP(en_c), .CK(clk_c), .Q(n148));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(37[4] 66[13])
    defparam FSM_PS_FSM__i5.GSR = "ENABLED";
    FD1P3AX FSM_PS_FSM__i6 (.D(n148), .SP(en_c), .CK(clk_c), .Q(n147));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(37[4] 66[13])
    defparam FSM_PS_FSM__i6.GSR = "ENABLED";
    FD1P3AX FSM_PS_FSM__i7 (.D(n147), .SP(en_c), .CK(clk_c), .Q(n241));   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(37[4] 66[13])
    defparam FSM_PS_FSM__i7.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut (.A(sender_go_c), .B(n152), .C(en_c), .Z(clk_c_enable_5)) /* synthesis lut_function=(A (B (C))) */ ;   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(37[4] 66[13])
    defparam i2_2_lut_3_lut.init = 16'h8080;
    LUT4 i226_2_lut (.A(rst_c), .B(en_c), .Z(lcd_bus_15__N_17)) /* synthesis lut_function=(!(A (B))) */ ;   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(34[3] 77[10])
    defparam i226_2_lut.init = 16'h7777;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i165_1_lut_rep_2 (.A(n241), .Z(n370)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(37[4] 66[13])
    defparam i165_1_lut_rep_2.init = 16'h5555;
    LUT4 i167_4_lut_4_lut (.A(n241), .B(lcd_wr_c), .C(n150), .D(n369), 
         .Z(lcd_wr_N_44)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C))) */ ;   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(37[4] 66[13])
    defparam i167_4_lut_4_lut.init = 16'hf0f4;
    LUT4 i181_3_lut_4_lut (.A(sender_go_c), .B(n152), .C(n241), .D(en_c), 
         .Z(clk_c_enable_3)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (C (D))) */ ;   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(37[4] 66[13])
    defparam i181_3_lut_4_lut.init = 16'hf800;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

