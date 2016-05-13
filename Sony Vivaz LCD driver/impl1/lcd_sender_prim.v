// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.7.1.502
// Netlist written on Fri May 13 21:57:22 2016
//
// Verilog Description of module lcd_sender
//

module lcd_sender (clk100, payload, go, data, resetin, LCDBus, busy, 
            wr, reset, rs);   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(6[8:18])
    input clk100;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(11[5:11])
    input [15:0]payload;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(12[5:12])
    input go;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(13[5:7])
    input data;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(14[5:9])
    input resetin;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(15[2:9])
    output [15:0]LCDBus;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(18[5:11])
    output busy;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(19[5:9])
    output wr;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(20[2:4])
    output reset;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(21[2:7])
    output rs;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(22[2:4])
    
    wire clk100_c /* synthesis is_clock=1, SET_AS_NETWORK=clk100_c */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(11[5:11])
    
    wire GND_net, VCC_net, payload_c_15, payload_c_14, payload_c_13, 
        payload_c_12, payload_c_11, payload_c_10, payload_c_9, payload_c_8, 
        payload_c_7, payload_c_6, payload_c_5, payload_c_4, payload_c_3, 
        payload_c_2, payload_c_1, payload_c_0, go_c, reset_c_c, LCDBus_c_15, 
        LCDBus_c_14, LCDBus_c_13, LCDBus_c_12, LCDBus_c_11, LCDBus_c_10, 
        LCDBus_c_9, LCDBus_c_8, LCDBus_c_7, LCDBus_c_6, LCDBus_c_5, 
        LCDBus_c_4, LCDBus_c_3, LCDBus_c_2, LCDBus_c_1, LCDBus_c_0, 
        busy_c, wr_c, last_go_i;
    wire [2:0]state_i;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(36[10:17])
    
    wire busy_N_25;
    wire [2:0]state_i_2__N_17;
    
    wire wr_N_26, n272, clk100_c_enable_3, clk100_c_enable_1, clk100_c_enable_19, 
        clk100_c_enable_2, n268, n295;
    
    VHI i2 (.Z(VCC_net));
    OB LCDBus_pad_15 (.I(LCDBus_c_15), .O(LCDBus[15]));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(18[5:11])
    FD1P3AX wr_i_22 (.D(wr_N_26), .SP(clk100_c_enable_1), .CK(clk100_c), 
            .Q(wr_c)) /* synthesis lse_init_val=0 */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam wr_i_22.GSR = "ENABLED";
    FD1P3AX last_go_i_24 (.D(go_c), .SP(clk100_c_enable_2), .CK(clk100_c), 
            .Q(last_go_i)) /* synthesis lse_init_val=0 */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam last_go_i_24.GSR = "ENABLED";
    FD1P3AX busy_i_20 (.D(n295), .SP(clk100_c_enable_3), .CK(clk100_c), 
            .Q(busy_c)) /* synthesis lse_init_val=0 */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam busy_i_20.GSR = "ENABLED";
    FD1S3AY state_i_i0 (.D(state_i_2__N_17[0]), .CK(clk100_c), .Q(state_i[0])) /* synthesis lse_init_val=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam state_i_i0.GSR = "ENABLED";
    FD1S3AX state_i_i1 (.D(n268), .CK(clk100_c), .Q(state_i[1])) /* synthesis lse_init_val=0 */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam state_i_i1.GSR = "ENABLED";
    FD1S3AX state_i_i2 (.D(n272), .CK(clk100_c), .Q(wr_N_26)) /* synthesis lse_init_val=0 */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam state_i_i2.GSR = "ENABLED";
    FD1P3AX LCDBus_i_i2 (.D(payload_c_1), .SP(clk100_c_enable_19), .CK(clk100_c), 
            .Q(LCDBus_c_1));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam LCDBus_i_i2.GSR = "ENABLED";
    LUT4 state_i_2__I_0_25_Mux_0_i7_4_lut (.A(state_i[0]), .B(wr_N_26), 
         .C(state_i[1]), .D(busy_N_25), .Z(state_i_2__N_17[0])) /* synthesis lut_function=(A (B (C)+!B !(C+(D)))+!A (B+(C))) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(50[4] 88[13])
    defparam state_i_2__I_0_25_Mux_0_i7_4_lut.init = 16'hd4d6;
    OB LCDBus_pad_14 (.I(LCDBus_c_14), .O(LCDBus[14]));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(18[5:11])
    OB LCDBus_pad_13 (.I(LCDBus_c_13), .O(LCDBus[13]));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(18[5:11])
    OB LCDBus_pad_12 (.I(LCDBus_c_12), .O(LCDBus[12]));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(18[5:11])
    OB LCDBus_pad_11 (.I(LCDBus_c_11), .O(LCDBus[11]));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(18[5:11])
    OB LCDBus_pad_10 (.I(LCDBus_c_10), .O(LCDBus[10]));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(18[5:11])
    OB LCDBus_pad_9 (.I(LCDBus_c_9), .O(LCDBus[9]));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(18[5:11])
    OB LCDBus_pad_8 (.I(LCDBus_c_8), .O(LCDBus[8]));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(18[5:11])
    OB LCDBus_pad_7 (.I(LCDBus_c_7), .O(LCDBus[7]));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(18[5:11])
    OB LCDBus_pad_6 (.I(LCDBus_c_6), .O(LCDBus[6]));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(18[5:11])
    OB LCDBus_pad_5 (.I(LCDBus_c_5), .O(LCDBus[5]));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(18[5:11])
    OB LCDBus_pad_4 (.I(LCDBus_c_4), .O(LCDBus[4]));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(18[5:11])
    OB LCDBus_pad_3 (.I(LCDBus_c_3), .O(LCDBus[3]));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(18[5:11])
    OB LCDBus_pad_2 (.I(LCDBus_c_2), .O(LCDBus[2]));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(18[5:11])
    OB LCDBus_pad_1 (.I(LCDBus_c_1), .O(LCDBus[1]));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(18[5:11])
    OB LCDBus_pad_0 (.I(LCDBus_c_0), .O(LCDBus[0]));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(18[5:11])
    OB busy_pad (.I(busy_c), .O(busy));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(19[5:9])
    OB wr_pad (.I(wr_c), .O(wr));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(20[2:4])
    OB reset_pad (.I(reset_c_c), .O(reset));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(21[2:7])
    OB rs_pad (.I(GND_net), .O(rs));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(22[2:4])
    IB clk100_pad (.I(clk100), .O(clk100_c));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(11[5:11])
    IB payload_pad_15 (.I(payload[15]), .O(payload_c_15));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(12[5:12])
    IB payload_pad_14 (.I(payload[14]), .O(payload_c_14));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(12[5:12])
    IB payload_pad_13 (.I(payload[13]), .O(payload_c_13));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(12[5:12])
    IB payload_pad_12 (.I(payload[12]), .O(payload_c_12));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(12[5:12])
    IB payload_pad_11 (.I(payload[11]), .O(payload_c_11));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(12[5:12])
    IB payload_pad_10 (.I(payload[10]), .O(payload_c_10));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(12[5:12])
    IB payload_pad_9 (.I(payload[9]), .O(payload_c_9));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(12[5:12])
    IB payload_pad_8 (.I(payload[8]), .O(payload_c_8));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(12[5:12])
    IB payload_pad_7 (.I(payload[7]), .O(payload_c_7));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(12[5:12])
    IB payload_pad_6 (.I(payload[6]), .O(payload_c_6));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(12[5:12])
    IB payload_pad_5 (.I(payload[5]), .O(payload_c_5));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(12[5:12])
    IB payload_pad_4 (.I(payload[4]), .O(payload_c_4));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(12[5:12])
    IB payload_pad_3 (.I(payload[3]), .O(payload_c_3));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(12[5:12])
    IB payload_pad_2 (.I(payload[2]), .O(payload_c_2));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(12[5:12])
    IB payload_pad_1 (.I(payload[1]), .O(payload_c_1));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(12[5:12])
    IB payload_pad_0 (.I(payload[0]), .O(payload_c_0));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(12[5:12])
    IB go_pad (.I(go), .O(go_c));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(13[5:7])
    IB reset_c_pad (.I(resetin), .O(reset_c_c));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(15[2:9])
    LUT4 i25_4_lut (.A(state_i[1]), .B(state_i[0]), .C(wr_N_26), .D(busy_N_25), 
         .Z(n268)) /* synthesis lut_function=(!(A (B)+!A !(B (C+(D))))) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam i25_4_lut.init = 16'h6662;
    LUT4 i1_3_lut (.A(state_i[0]), .B(wr_N_26), .C(state_i[1]), .Z(clk100_c_enable_1)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;
    defparam i1_3_lut.init = 16'h1414;
    VLO i1 (.Z(GND_net));
    LUT4 last_go_i_I_0_2_lut (.A(last_go_i), .B(go_c), .Z(busy_N_25)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(52[9:24])
    defparam last_go_i_I_0_2_lut.init = 16'h6666;
    FD1P3AX LCDBus_i_i3 (.D(payload_c_2), .SP(clk100_c_enable_19), .CK(clk100_c), 
            .Q(LCDBus_c_2));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam LCDBus_i_i3.GSR = "ENABLED";
    FD1P3AX LCDBus_i_i4 (.D(payload_c_3), .SP(clk100_c_enable_19), .CK(clk100_c), 
            .Q(LCDBus_c_3));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam LCDBus_i_i4.GSR = "ENABLED";
    FD1P3AX LCDBus_i_i5 (.D(payload_c_4), .SP(clk100_c_enable_19), .CK(clk100_c), 
            .Q(LCDBus_c_4));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam LCDBus_i_i5.GSR = "ENABLED";
    FD1P3AX LCDBus_i_i6 (.D(payload_c_5), .SP(clk100_c_enable_19), .CK(clk100_c), 
            .Q(LCDBus_c_5));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam LCDBus_i_i6.GSR = "ENABLED";
    FD1P3AX LCDBus_i_i7 (.D(payload_c_6), .SP(clk100_c_enable_19), .CK(clk100_c), 
            .Q(LCDBus_c_6));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam LCDBus_i_i7.GSR = "ENABLED";
    FD1P3AX LCDBus_i_i8 (.D(payload_c_7), .SP(clk100_c_enable_19), .CK(clk100_c), 
            .Q(LCDBus_c_7));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam LCDBus_i_i8.GSR = "ENABLED";
    FD1P3AX LCDBus_i_i9 (.D(payload_c_8), .SP(clk100_c_enable_19), .CK(clk100_c), 
            .Q(LCDBus_c_8));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam LCDBus_i_i9.GSR = "ENABLED";
    FD1P3AX LCDBus_i_i10 (.D(payload_c_9), .SP(clk100_c_enable_19), .CK(clk100_c), 
            .Q(LCDBus_c_9));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam LCDBus_i_i10.GSR = "ENABLED";
    FD1P3AX LCDBus_i_i11 (.D(payload_c_10), .SP(clk100_c_enable_19), .CK(clk100_c), 
            .Q(LCDBus_c_10));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam LCDBus_i_i11.GSR = "ENABLED";
    FD1P3AX LCDBus_i_i12 (.D(payload_c_11), .SP(clk100_c_enable_19), .CK(clk100_c), 
            .Q(LCDBus_c_11));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam LCDBus_i_i12.GSR = "ENABLED";
    FD1P3AX LCDBus_i_i13 (.D(payload_c_12), .SP(clk100_c_enable_19), .CK(clk100_c), 
            .Q(LCDBus_c_12));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam LCDBus_i_i13.GSR = "ENABLED";
    FD1P3AX LCDBus_i_i14 (.D(payload_c_13), .SP(clk100_c_enable_19), .CK(clk100_c), 
            .Q(LCDBus_c_13));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam LCDBus_i_i14.GSR = "ENABLED";
    FD1P3AX LCDBus_i_i15 (.D(payload_c_14), .SP(clk100_c_enable_19), .CK(clk100_c), 
            .Q(LCDBus_c_14));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam LCDBus_i_i15.GSR = "ENABLED";
    FD1P3AX LCDBus_i_i16 (.D(payload_c_15), .SP(clk100_c_enable_19), .CK(clk100_c), 
            .Q(LCDBus_c_15));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam LCDBus_i_i16.GSR = "ENABLED";
    LUT4 i71_1_lut_rep_5 (.A(wr_N_26), .Z(n295)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam i71_1_lut_rep_5.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_3_lut (.A(wr_N_26), .B(state_i[0]), .C(state_i[1]), 
         .Z(clk100_c_enable_19)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam i1_2_lut_3_lut_3_lut.init = 16'h4040;
    FD1P3AX LCDBus_i_i1 (.D(payload_c_0), .SP(clk100_c_enable_19), .CK(clk100_c), 
            .Q(LCDBus_c_0));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam LCDBus_i_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(state_i[1]), .B(state_i[0]), .C(wr_N_26), 
         .Z(clk100_c_enable_2)) /* synthesis lut_function=(A (B (C))) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(50[4] 88[13])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i19_2_lut_3_lut (.A(state_i[1]), .B(state_i[0]), .C(wr_N_26), 
         .Z(n272)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(50[4] 88[13])
    defparam i19_2_lut_3_lut.init = 16'h7878;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    GSR GSR_INST (.GSR(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i1_4_lut (.A(state_i[0]), .B(state_i[1]), .C(wr_N_26), .D(busy_N_25), 
         .Z(clk100_c_enable_3)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'h8280;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

