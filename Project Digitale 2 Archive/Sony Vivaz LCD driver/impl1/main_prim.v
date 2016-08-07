// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.7.1.502
// Netlist written on Wed May 18 16:49:10 2016
//
// Verilog Description of module main
//

module main (leds, lcd_LCDBus, lcd_wr, lcd_reset, lcd_rs, synch_rst);   // z:/github/lattice/sony vivaz lcd driver/main.vhd(9[8:12])
    input [7:0]leds;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(12[3:7])
    output [15:0]lcd_LCDBus;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    output lcd_wr /* synthesis .original_dir=IN_OUT */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(14[3:9])
    output lcd_reset;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(15[3:12])
    output lcd_rs /* synthesis .original_dir=IN_OUT */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(16[3:9])
    output synch_rst /* synthesis .original_dir=IN_OUT */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(17[3:12])
    
    wire clk133 /* synthesis SET_AS_NETWORK=clk133, is_clock=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(22[9:15])
    
    wire GND_net, VCC_net, lcd_LCDBus_c_15, lcd_LCDBus_c_14, lcd_LCDBus_c_13, 
        lcd_LCDBus_c_12, lcd_LCDBus_c_11, lcd_LCDBus_c_10, lcd_LCDBus_c_9, 
        lcd_LCDBus_c_8, lcd_LCDBus_c_7, lcd_LCDBus_c_6, lcd_LCDBus_c_5, 
        lcd_LCDBus_c_4, lcd_LCDBus_c_3, lcd_LCDBus_c_2, lcd_LCDBus_c_1, 
        lcd_LCDBus_c_0, lcd_wr_c, lcd_rs_c, synch_rst_c, busy_i, n2044, 
        n6, n4;
    wire [23:0]count;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(106[12:17])
    wire [7:0]tmp;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(107[12:15])
    
    wire n9, n33, synch_rst_c_derived_3, n6_adj_140, synch_rst_N_101, 
        synch_rst_N_99, n32, n30, n31, n2147, n2273, n31_adj_141, 
        n1, n35, n45, n34, n44, n43, n42, n41, n40, n39, 
        n38, n6_adj_142, n2146, synch_rst_c_derived_1;
    wire [2:0]PS_vivaz_state;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(24[9:23])
    wire [2:0]NS_vivaz_state;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(25[9:23])
    
    wire n2149, lcd_write_N_133;
    wire [2:0]NS_vivaz_state_2__N_127;
    
    wire synch_rst_c_derived_2, n2302, clk133_enable_8, clk133_enable_9, 
        n2150, n2145, n2144, n2369, n2148;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i1674_4_lut (.A(tmp[0]), .B(tmp[1]), .C(synch_rst_c), .D(n6_adj_142), 
         .Z(synch_rst_N_99)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i1674_4_lut.init = 16'h0001;
    LUT4 i1_4_lut (.A(synch_rst_c), .B(PS_vivaz_state[0]), .C(PS_vivaz_state[1]), 
         .D(n2273), .Z(NS_vivaz_state[1])) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(C)))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(111[3] 131[10])
    defparam i1_4_lut.init = 16'h1410;
    OSCH inst_clk (.STDBY(GND_net), .OSC(clk133)) /* synthesis syn_instantiated=1 */ ;
    defparam inst_clk.NOM_FREQ = "20.46";
    OB lcd_LCDBus_pad_14 (.I(lcd_LCDBus_c_14), .O(lcd_LCDBus[14]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    FD1S3IX count_200_201__i5 (.D(n30), .CK(clk133), .CD(clk133_enable_9), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(113[14:19])
    defparam count_200_201__i5.GSR = "DISABLED";
    FD1S3IX count_200_201__i4 (.D(n31), .CK(clk133), .CD(clk133_enable_9), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(113[14:19])
    defparam count_200_201__i4.GSR = "DISABLED";
    FD1S3IX count_200_201__i3 (.D(n32), .CK(clk133), .CD(clk133_enable_9), 
            .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(113[14:19])
    defparam count_200_201__i3.GSR = "DISABLED";
    FD1S3IX count_200_201__i2 (.D(n33), .CK(clk133), .CD(clk133_enable_9), 
            .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(113[14:19])
    defparam count_200_201__i2.GSR = "DISABLED";
    FD1S3IX count_200_201__i1 (.D(n34), .CK(clk133), .CD(clk133_enable_9), 
            .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(113[14:19])
    defparam count_200_201__i1.GSR = "DISABLED";
    FD1S3IX count_200_201__i0 (.D(n35), .CK(clk133), .CD(clk133_enable_9), 
            .Q(n6_adj_140)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(113[14:19])
    defparam count_200_201__i0.GSR = "DISABLED";
    OB lcd_LCDBus_pad_15 (.I(lcd_LCDBus_c_15), .O(lcd_LCDBus[15]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    FD1P3AX tmp_202__i7 (.D(n38), .SP(clk133_enable_8), .CK(clk133), .Q(tmp[7])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(126[13:16])
    defparam tmp_202__i7.GSR = "DISABLED";
    OB synch_rst_pad (.I(synch_rst_c), .O(synch_rst));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(17[3:12])
    OB lcd_rs_pad (.I(lcd_rs_c), .O(lcd_rs));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(16[3:9])
    OBZ lcd_reset_pad (.I(GND_net), .T(VCC_net), .O(lcd_reset));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(15[3:12])
    OB lcd_wr_pad (.I(lcd_wr_c), .O(lcd_wr));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(14[3:9])
    OB lcd_LCDBus_pad_0 (.I(lcd_LCDBus_c_0), .O(lcd_LCDBus[0]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_1 (.I(lcd_LCDBus_c_1), .O(lcd_LCDBus[1]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    LUT4 i1_3_lut (.A(synch_rst_c), .B(PS_vivaz_state[0]), .C(n9), .Z(synch_rst_c_derived_1)) /* synthesis lut_function=(A+(B (C))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(111[3] 131[10])
    defparam i1_3_lut.init = 16'heaea;
    OB lcd_LCDBus_pad_2 (.I(lcd_LCDBus_c_2), .O(lcd_LCDBus[2]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_3 (.I(lcd_LCDBus_c_3), .O(lcd_LCDBus[3]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_4 (.I(lcd_LCDBus_c_4), .O(lcd_LCDBus[4]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_5 (.I(lcd_LCDBus_c_5), .O(lcd_LCDBus[5]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_6 (.I(lcd_LCDBus_c_6), .O(lcd_LCDBus[6]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_7 (.I(lcd_LCDBus_c_7), .O(lcd_LCDBus[7]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_8 (.I(lcd_LCDBus_c_8), .O(lcd_LCDBus[8]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_9 (.I(lcd_LCDBus_c_9), .O(lcd_LCDBus[9]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_10 (.I(lcd_LCDBus_c_10), .O(lcd_LCDBus[10]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_11 (.I(lcd_LCDBus_c_11), .O(lcd_LCDBus[11]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_12 (.I(lcd_LCDBus_c_12), .O(lcd_LCDBus[12]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    LUT4 i1_4_lut_adj_5 (.A(clk133_enable_9), .B(tmp[0]), .C(n2369), .D(synch_rst_c), 
         .Z(clk133_enable_8)) /* synthesis lut_function=(!((B (C+!(D))+!B (C))+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(113[14:19])
    defparam i1_4_lut_adj_5.init = 16'h0a02;
    LUT4 i1518_3_lut (.A(n1), .B(tmp[1]), .C(tmp[3]), .Z(n2369)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1518_3_lut.init = 16'hfefe;
    LUT4 i4_4_lut (.A(tmp[5]), .B(tmp[4]), .C(tmp[6]), .D(n6), .Z(n1)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut (.A(count[5]), .B(count[4]), .C(count[1]), .D(n4), 
         .Z(clk133_enable_9)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(113[14:19])
    defparam i2_4_lut.init = 16'h8880;
    LUT4 i1_2_lut (.A(tmp[2]), .B(tmp[7]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_6 (.A(count[3]), .B(count[2]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(106[12:17])
    defparam i1_2_lut_adj_6.init = 16'heeee;
    LUT4 i2_4_lut_adj_7 (.A(lcd_rs_c), .B(synch_rst_c), .C(busy_i), .D(n2302), 
         .Z(lcd_rs_c)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(111[3] 131[10])
    defparam i2_4_lut_adj_7.init = 16'h2220;
    CCU2D tmp_202_add_4_9 (.A0(tmp[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2150), 
          .S0(n38));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(126[13:16])
    defparam tmp_202_add_4_9.INIT0 = 16'hfaaa;
    defparam tmp_202_add_4_9.INIT1 = 16'h0000;
    defparam tmp_202_add_4_9.INJECT1_0 = "NO";
    defparam tmp_202_add_4_9.INJECT1_1 = "NO";
    LUT4 i2_3_lut (.A(PS_vivaz_state[2]), .B(PS_vivaz_state[0]), .C(PS_vivaz_state[1]), 
         .Z(n2302)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(111[3] 131[10])
    defparam i2_3_lut.init = 16'hfbfb;
    CCU2D tmp_202_add_4_7 (.A0(tmp[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tmp[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2149), 
          .COUT(n2150), .S0(n40), .S1(n39));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(126[13:16])
    defparam tmp_202_add_4_7.INIT0 = 16'hfaaa;
    defparam tmp_202_add_4_7.INIT1 = 16'hfaaa;
    defparam tmp_202_add_4_7.INJECT1_0 = "NO";
    defparam tmp_202_add_4_7.INJECT1_1 = "NO";
    FD1P3AX tmp_202__i6 (.D(n39), .SP(clk133_enable_8), .CK(clk133), .Q(tmp[6])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(126[13:16])
    defparam tmp_202__i6.GSR = "DISABLED";
    FD1P3AX tmp_202__i5 (.D(n40), .SP(clk133_enable_8), .CK(clk133), .Q(tmp[5])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(126[13:16])
    defparam tmp_202__i5.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_8 (.A(tmp[3]), .B(n1), .Z(n6_adj_142)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_8.init = 16'heeee;
    FD1P3AX tmp_202__i0 (.D(n45), .SP(clk133_enable_8), .CK(clk133), .Q(tmp[0])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(126[13:16])
    defparam tmp_202__i0.GSR = "DISABLED";
    FD1P3AX tmp_202__i4 (.D(n41), .SP(clk133_enable_8), .CK(clk133), .Q(tmp[4])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(126[13:16])
    defparam tmp_202__i4.GSR = "DISABLED";
    FD1P3AX tmp_202__i3 (.D(n42), .SP(clk133_enable_8), .CK(clk133), .Q(tmp[3])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(126[13:16])
    defparam tmp_202__i3.GSR = "DISABLED";
    FD1P3AX tmp_202__i2 (.D(n43), .SP(clk133_enable_8), .CK(clk133), .Q(tmp[2])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(126[13:16])
    defparam tmp_202__i2.GSR = "DISABLED";
    FD1P3AX tmp_202__i1 (.D(n44), .SP(clk133_enable_8), .CK(clk133), .Q(tmp[1])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(126[13:16])
    defparam tmp_202__i1.GSR = "DISABLED";
    FD1P3AX reset_startup_37 (.D(synch_rst_N_99), .SP(clk133_enable_9), 
            .CK(clk133), .Q(synch_rst_c));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(111[3] 131[10])
    defparam reset_startup_37.GSR = "DISABLED";
    CCU2D tmp_202_add_4_5 (.A0(tmp[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tmp[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2148), 
          .COUT(n2149), .S0(n42), .S1(n41));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(126[13:16])
    defparam tmp_202_add_4_5.INIT0 = 16'hfaaa;
    defparam tmp_202_add_4_5.INIT1 = 16'hfaaa;
    defparam tmp_202_add_4_5.INJECT1_0 = "NO";
    defparam tmp_202_add_4_5.INJECT1_1 = "NO";
    OB lcd_LCDBus_pad_13 (.I(lcd_LCDBus_c_13), .O(lcd_LCDBus[13]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    LUT4 i2_4_lut_adj_9 (.A(PS_vivaz_state[2]), .B(n31_adj_141), .C(synch_rst_c), 
         .D(PS_vivaz_state[0]), .Z(synch_rst_c_derived_3)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(111[3] 131[10])
    defparam i2_4_lut_adj_9.init = 16'hfefa;
    VLO i1 (.Z(GND_net));
    FD1S1I i851 (.D(NS_vivaz_state_2__N_127[2]), .CK(synch_rst_c_derived_2), 
           .CD(synch_rst_c), .Q(NS_vivaz_state[2]));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(78[3] 85[10])
    defparam i851.GSR = "DISABLED";
    CCU2D tmp_202_add_4_3 (.A0(tmp[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tmp[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2147), 
          .COUT(n2148), .S0(n44), .S1(n43));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(126[13:16])
    defparam tmp_202_add_4_3.INIT0 = 16'hfaaa;
    defparam tmp_202_add_4_3.INIT1 = 16'hfaaa;
    defparam tmp_202_add_4_3.INJECT1_0 = "NO";
    defparam tmp_202_add_4_3.INJECT1_1 = "NO";
    CCU2D tmp_202_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tmp[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2147), 
          .S1(n45));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(126[13:16])
    defparam tmp_202_add_4_1.INIT0 = 16'hF000;
    defparam tmp_202_add_4_1.INIT1 = 16'h0555;
    defparam tmp_202_add_4_1.INJECT1_0 = "NO";
    defparam tmp_202_add_4_1.INJECT1_1 = "NO";
    TSALL TSALL_INST (.TSALL(GND_net));
    FD1S1I i848 (.D(lcd_write_N_133), .CK(synch_rst_c_derived_3), .CD(synch_rst_c), 
           .Q(lcd_wr_c));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(78[3] 85[10])
    defparam i848.GSR = "DISABLED";
    LUT4 synch_rst_I_0_46_1_lut (.A(synch_rst_c), .Z(synch_rst_N_101)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(116[9:28])
    defparam synch_rst_I_0_46_1_lut.init = 16'h5555;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i2_3_lut_adj_10 (.A(synch_rst_c), .B(PS_vivaz_state[0]), .C(n2044), 
         .Z(NS_vivaz_state[0])) /* synthesis lut_function=(A+((C)+!B)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(111[3] 131[10])
    defparam i2_3_lut_adj_10.init = 16'hfbfb;
    CCU2D count_200_201_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2146), .S0(n30));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(113[14:19])
    defparam count_200_201_add_4_7.INIT0 = 16'hfaaa;
    defparam count_200_201_add_4_7.INIT1 = 16'h0000;
    defparam count_200_201_add_4_7.INJECT1_0 = "NO";
    defparam count_200_201_add_4_7.INJECT1_1 = "NO";
    lcd_sender inst_lcd_sender (.busy_i(busy_i), .NS_vivaz_state({NS_vivaz_state}), 
            .PS_vivaz_state({PS_vivaz_state}), .n2273(n2273), .lcd_LCDBus_c_2(lcd_LCDBus_c_2), 
            .lcd_LCDBus_c_15(lcd_LCDBus_c_15), .lcd_LCDBus_c_8(lcd_LCDBus_c_8), 
            .lcd_LCDBus_c_12(lcd_LCDBus_c_12), .lcd_LCDBus_c_0(lcd_LCDBus_c_0), 
            .synch_rst_c(synch_rst_c), .clk133(clk133), .n9(n9), .lcd_LCDBus_c_7(lcd_LCDBus_c_7), 
            .lcd_LCDBus_c_6(lcd_LCDBus_c_6), .lcd_LCDBus_c_13(lcd_LCDBus_c_13), 
            .\NS_vivaz_state_2__N_127[2] (NS_vivaz_state_2__N_127[2]), .n31(n31_adj_141), 
            .n2044(n2044), .lcd_LCDBus_c_9(lcd_LCDBus_c_9), .lcd_wr_c(lcd_wr_c), 
            .lcd_write_N_133(lcd_write_N_133), .lcd_LCDBus_c_5(lcd_LCDBus_c_5), 
            .lcd_LCDBus_c_4(lcd_LCDBus_c_4), .n2302(n2302), .synch_rst_c_derived_2(synch_rst_c_derived_2), 
            .lcd_LCDBus_c_3(lcd_LCDBus_c_3), .lcd_LCDBus_c_1(lcd_LCDBus_c_1), 
            .lcd_LCDBus_c_11(lcd_LCDBus_c_11), .lcd_LCDBus_c_10(lcd_LCDBus_c_10), 
            .synch_rst_c_derived_1(synch_rst_c_derived_1), .lcd_LCDBus_c_14(lcd_LCDBus_c_14));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(80[19:29])
    CCU2D count_200_201_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2145), .COUT(n2146), .S0(n32), .S1(n31));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(113[14:19])
    defparam count_200_201_add_4_5.INIT0 = 16'hfaaa;
    defparam count_200_201_add_4_5.INIT1 = 16'hfaaa;
    defparam count_200_201_add_4_5.INJECT1_0 = "NO";
    defparam count_200_201_add_4_5.INJECT1_1 = "NO";
    CCU2D count_200_201_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2144), .COUT(n2145), .S0(n34), .S1(n33));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(113[14:19])
    defparam count_200_201_add_4_3.INIT0 = 16'hfaaa;
    defparam count_200_201_add_4_3.INIT1 = 16'hfaaa;
    defparam count_200_201_add_4_3.INJECT1_0 = "NO";
    defparam count_200_201_add_4_3.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(synch_rst_N_101));
    CCU2D count_200_201_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n6_adj_140), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2144), .S1(n35));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(113[14:19])
    defparam count_200_201_add_4_1.INIT0 = 16'hF000;
    defparam count_200_201_add_4_1.INIT1 = 16'h0555;
    defparam count_200_201_add_4_1.INJECT1_0 = "NO";
    defparam count_200_201_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module lcd_sender
//

module lcd_sender (busy_i, NS_vivaz_state, PS_vivaz_state, n2273, lcd_LCDBus_c_2, 
            lcd_LCDBus_c_15, lcd_LCDBus_c_8, lcd_LCDBus_c_12, lcd_LCDBus_c_0, 
            synch_rst_c, clk133, n9, lcd_LCDBus_c_7, lcd_LCDBus_c_6, 
            lcd_LCDBus_c_13, \NS_vivaz_state_2__N_127[2] , n31, n2044, 
            lcd_LCDBus_c_9, lcd_wr_c, lcd_write_N_133, lcd_LCDBus_c_5, 
            lcd_LCDBus_c_4, n2302, synch_rst_c_derived_2, lcd_LCDBus_c_3, 
            lcd_LCDBus_c_1, lcd_LCDBus_c_11, lcd_LCDBus_c_10, synch_rst_c_derived_1, 
            lcd_LCDBus_c_14);
    output busy_i;
    input [2:0]NS_vivaz_state;
    output [2:0]PS_vivaz_state;
    output n2273;
    output lcd_LCDBus_c_2;
    output lcd_LCDBus_c_15;
    output lcd_LCDBus_c_8;
    output lcd_LCDBus_c_12;
    output lcd_LCDBus_c_0;
    input synch_rst_c;
    input clk133;
    output n9;
    output lcd_LCDBus_c_7;
    output lcd_LCDBus_c_6;
    output lcd_LCDBus_c_13;
    output \NS_vivaz_state_2__N_127[2] ;
    output n31;
    output n2044;
    output lcd_LCDBus_c_9;
    input lcd_wr_c;
    output lcd_write_N_133;
    output lcd_LCDBus_c_5;
    output lcd_LCDBus_c_4;
    input n2302;
    output synch_rst_c_derived_2;
    output lcd_LCDBus_c_3;
    output lcd_LCDBus_c_1;
    output lcd_LCDBus_c_11;
    output lcd_LCDBus_c_10;
    input synch_rst_c_derived_1;
    output lcd_LCDBus_c_14;
    
    wire clk133 /* synthesis SET_AS_NETWORK=clk133, is_clock=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(22[9:15])
    
    wire n563, busy_N_137;
    
    LUT4 i2_3_lut (.A(busy_i), .B(NS_vivaz_state[1]), .C(PS_vivaz_state[2]), 
         .Z(n2273)) /* synthesis lut_function=((B+(C))+!A) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(31[3] 33[10])
    defparam i2_3_lut.init = 16'hfdfd;
    LUT4 i1168_2_lut (.A(lcd_LCDBus_c_2), .B(n563), .Z(lcd_LCDBus_c_2)) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(78[3] 85[10])
    defparam i1168_2_lut.init = 16'h2222;
    LUT4 i1155_2_lut (.A(lcd_LCDBus_c_15), .B(n563), .Z(lcd_LCDBus_c_15)) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(78[3] 85[10])
    defparam i1155_2_lut.init = 16'h2222;
    LUT4 i1162_2_lut (.A(lcd_LCDBus_c_8), .B(n563), .Z(lcd_LCDBus_c_8)) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(78[3] 85[10])
    defparam i1162_2_lut.init = 16'h2222;
    LUT4 i1272_1_lut (.A(PS_vivaz_state[2]), .Z(busy_N_137)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(31[3] 33[10])
    defparam i1272_1_lut.init = 16'h5555;
    LUT4 i1158_2_lut (.A(lcd_LCDBus_c_12), .B(n563), .Z(lcd_LCDBus_c_12)) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(78[3] 85[10])
    defparam i1158_2_lut.init = 16'h2222;
    LUT4 i1153_2_lut (.A(lcd_LCDBus_c_0), .B(n563), .Z(lcd_LCDBus_c_0)) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(78[3] 85[10])
    defparam i1153_2_lut.init = 16'h2222;
    LUT4 i198_4_lut (.A(PS_vivaz_state[2]), .B(synch_rst_c), .C(PS_vivaz_state[1]), 
         .D(PS_vivaz_state[0]), .Z(n563)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(78[3] 85[10])
    defparam i198_4_lut.init = 16'hccdc;
    FD1S3AX PS_vivaz_state_i2 (.D(NS_vivaz_state[2]), .CK(clk133), .Q(PS_vivaz_state[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=29, LSE_LLINE=80, LSE_RLINE=80 */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(31[3] 33[10])
    defparam PS_vivaz_state_i2.GSR = "ENABLED";
    LUT4 i1296_3_lut (.A(busy_i), .B(PS_vivaz_state[2]), .C(PS_vivaz_state[1]), 
         .Z(n9)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(24[9:23])
    defparam i1296_3_lut.init = 16'hc1c1;
    FD1S3AX PS_vivaz_state_i1 (.D(NS_vivaz_state[1]), .CK(clk133), .Q(PS_vivaz_state[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=29, LSE_LLINE=80, LSE_RLINE=80 */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(31[3] 33[10])
    defparam PS_vivaz_state_i1.GSR = "ENABLED";
    LUT4 i1163_2_lut (.A(lcd_LCDBus_c_7), .B(n563), .Z(lcd_LCDBus_c_7)) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(78[3] 85[10])
    defparam i1163_2_lut.init = 16'h2222;
    LUT4 i1164_2_lut (.A(lcd_LCDBus_c_6), .B(n563), .Z(lcd_LCDBus_c_6)) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(78[3] 85[10])
    defparam i1164_2_lut.init = 16'h2222;
    LUT4 i1157_2_lut (.A(lcd_LCDBus_c_13), .B(n563), .Z(lcd_LCDBus_c_13)) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(78[3] 85[10])
    defparam i1157_2_lut.init = 16'h2222;
    LUT4 i983_2_lut_3_lut (.A(PS_vivaz_state[0]), .B(PS_vivaz_state[1]), 
         .C(PS_vivaz_state[2]), .Z(\NS_vivaz_state_2__N_127[2] )) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(42[4] 70[13])
    defparam i983_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut (.A(PS_vivaz_state[1]), .B(busy_i), .Z(n31)) /* synthesis lut_function=(A+!(B)) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(24[9:23])
    defparam i1_2_lut.init = 16'hbbbb;
    LUT4 i1275_4_lut (.A(busy_i), .B(PS_vivaz_state[2]), .C(PS_vivaz_state[1]), 
         .D(NS_vivaz_state[0]), .Z(n2044)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B (C))) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(24[9:23])
    defparam i1275_4_lut.init = 16'hc2c0;
    LUT4 i1161_2_lut (.A(lcd_LCDBus_c_9), .B(n563), .Z(lcd_LCDBus_c_9)) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(78[3] 85[10])
    defparam i1161_2_lut.init = 16'h2222;
    LUT4 PS_vivaz_state_2__I_0_31_i7_4_lut_4_lut (.A(PS_vivaz_state[0]), .B(PS_vivaz_state[1]), 
         .C(PS_vivaz_state[2]), .D(lcd_wr_c), .Z(lcd_write_N_133)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(42[4] 70[13])
    defparam PS_vivaz_state_2__I_0_31_i7_4_lut_4_lut.init = 16'h7c0c;
    LUT4 i1165_2_lut (.A(lcd_LCDBus_c_5), .B(n563), .Z(lcd_LCDBus_c_5)) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(78[3] 85[10])
    defparam i1165_2_lut.init = 16'h2222;
    LUT4 i1166_2_lut (.A(lcd_LCDBus_c_4), .B(n563), .Z(lcd_LCDBus_c_4)) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(78[3] 85[10])
    defparam i1166_2_lut.init = 16'h2222;
    LUT4 i2_3_lut_adj_4 (.A(n2302), .B(synch_rst_c), .C(busy_i), .Z(synch_rst_c_derived_2)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i2_3_lut_adj_4.init = 16'hefef;
    LUT4 i1167_2_lut (.A(lcd_LCDBus_c_3), .B(n563), .Z(lcd_LCDBus_c_3)) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(78[3] 85[10])
    defparam i1167_2_lut.init = 16'h2222;
    LUT4 i1169_2_lut (.A(lcd_LCDBus_c_1), .B(n563), .Z(lcd_LCDBus_c_1)) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(78[3] 85[10])
    defparam i1169_2_lut.init = 16'h2222;
    LUT4 i1159_2_lut (.A(lcd_LCDBus_c_11), .B(n563), .Z(lcd_LCDBus_c_11)) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(78[3] 85[10])
    defparam i1159_2_lut.init = 16'h2222;
    LUT4 i1160_2_lut (.A(lcd_LCDBus_c_10), .B(n563), .Z(lcd_LCDBus_c_10)) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(78[3] 85[10])
    defparam i1160_2_lut.init = 16'h2222;
    FD1S1I i856 (.D(busy_N_137), .CK(synch_rst_c_derived_1), .CD(synch_rst_c), 
           .Q(busy_i));   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(78[3] 85[10])
    defparam i856.GSR = "DISABLED";
    FD1S3AY PS_vivaz_state_i0 (.D(NS_vivaz_state[0]), .CK(clk133), .Q(PS_vivaz_state[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=29, LSE_LLINE=80, LSE_RLINE=80 */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(31[3] 33[10])
    defparam PS_vivaz_state_i0.GSR = "ENABLED";
    LUT4 i1156_2_lut (.A(lcd_LCDBus_c_14), .B(n563), .Z(lcd_LCDBus_c_14)) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(78[3] 85[10])
    defparam i1156_2_lut.init = 16'h2222;
    
endmodule
