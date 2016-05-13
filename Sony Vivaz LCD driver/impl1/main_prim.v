// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.7.0.96.1
// Netlist written on Fri May 13 10:12:59 2016
//
// Verilog Description of module main
//

module main (clk, reset, lcd_wr, lcd_rs, lcd_te, lcd_reset, debug, 
            leds);   // z:/github/lattice/sony vivaz lcd driver/main.vhd(6[8:12])
    input clk;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(9[3:6])
    input reset;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(10[3:8])
    output lcd_wr;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:9])
    output lcd_rs;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(14[3:9])
    input lcd_te;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(15[3:9])
    output lcd_reset;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(16[3:12])
    output debug;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(19[3:8])
    output [7:0]leds;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(22[3:7])
    
    wire clk133 /* synthesis SET_AS_NETWORK=clk133, is_clock=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(27[9:15])
    
    wire GND_net, VCC_net, debug_c_c, leds_c_7, leds_c_6, leds_c_5, 
        leds_c_4, leds_c_3, leds_c_2, leds_c_1, leds_c_0;
    wire [22:0]count;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(48[12:17])
    
    wire n245;
    wire [7:0]counter;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(49[12:19])
    
    wire n247, n244, n249, n243, n241, n235, n38, n39, n40, 
        n42, n41, n44, n43, n45, n19, n18, n6, n5, n237, 
        n236, n4, clk133_enable_8, n252, n248, n21, n20, n240, 
        n22, n23, n251, n239, n98, n99, n100, n101, n102, 
        n103, n104, n105, n106, n107, n108, n109, n110, n111, 
        n112, n113, n114, n115, n116, n117, n118, n119, n120, 
        n238, n242, n246;
    
    VHI i2 (.Z(VCC_net));
    OSCH inst_clk (.STDBY(GND_net), .OSC(clk133)) /* synthesis syn_instantiated=1 */ ;
    defparam inst_clk.NOM_FREQ = "133.00";
    LUT4 i1_4_lut (.A(count[12]), .B(count[11]), .C(count[10]), .D(n252), 
         .Z(n4)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(48[12:17])
    defparam i1_4_lut.init = 16'heeea;
    FD1P3AX counter_29__i0 (.D(n45), .SP(clk133_enable_8), .CK(clk133), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(56[16:23])
    defparam counter_29__i0.GSR = "ENABLED";
    CCU2D counter_29_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n235), .S1(n45));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(56[16:23])
    defparam counter_29_add_4_1.INIT0 = 16'hF000;
    defparam counter_29_add_4_1.INIT1 = 16'h0555;
    defparam counter_29_add_4_1.INJECT1_0 = "NO";
    defparam counter_29_add_4_1.INJECT1_1 = "NO";
    LUT4 counter_7__I_0_i1_1_lut (.A(counter[0]), .Z(leds_c_0)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(60[15:53])
    defparam counter_7__I_0_i1_1_lut.init = 16'h5555;
    CCU2D count_28_add_4_3 (.A0(n22), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n21), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n239), 
          .COUT(n240), .S0(n119), .S1(n118));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28_add_4_3.INIT0 = 16'hfaaa;
    defparam count_28_add_4_3.INIT1 = 16'hfaaa;
    defparam count_28_add_4_3.INJECT1_0 = "NO";
    defparam count_28_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_1 (.A(count[22]), .B(count[21]), .C(n251), .D(count[20]), 
         .Z(clk133_enable_8)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(48[12:17])
    defparam i1_4_lut_adj_1.init = 16'haaa8;
    FD1P3AX counter_29__i7 (.D(n38), .SP(clk133_enable_8), .CK(clk133), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(56[16:23])
    defparam counter_29__i7.GSR = "ENABLED";
    CCU2D count_28_add_4_7 (.A0(n18), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n241), 
          .COUT(n242), .S0(n115), .S1(n114));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28_add_4_7.INIT0 = 16'hfaaa;
    defparam count_28_add_4_7.INIT1 = 16'hfaaa;
    defparam count_28_add_4_7.INJECT1_0 = "NO";
    defparam count_28_add_4_7.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(count[8]), .B(count[6]), .C(count[9]), .D(count[7]), 
         .Z(n252)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(48[12:17])
    defparam i2_4_lut.init = 16'ha080;
    CCU2D count_28_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n245), .COUT(n246), .S0(n107), .S1(n106));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28_add_4_15.INIT0 = 16'hfaaa;
    defparam count_28_add_4_15.INIT1 = 16'hfaaa;
    defparam count_28_add_4_15.INJECT1_0 = "NO";
    defparam count_28_add_4_15.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_2 (.A(count[19]), .B(n5), .C(count[18]), .D(n6), 
         .Z(n251)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(48[12:17])
    defparam i2_4_lut_adj_2.init = 16'ha080;
    CCU2D count_28_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n23), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n239), .S1(n120));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28_add_4_1.INIT0 = 16'hF000;
    defparam count_28_add_4_1.INIT1 = 16'h0555;
    defparam count_28_add_4_1.INJECT1_0 = "NO";
    defparam count_28_add_4_1.INJECT1_1 = "NO";
    OBZ lcd_rs_pad (.I(GND_net), .T(VCC_net), .O(lcd_rs));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(14[3:9])
    CCU2D counter_29_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n236), .COUT(n237), .S0(n42), .S1(n41));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(56[16:23])
    defparam counter_29_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_29_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_29_add_4_5.INJECT1_0 = "NO";
    defparam counter_29_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(count[16]), .B(count[17]), .Z(n5)) /* synthesis lut_function=(A+(B)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(48[12:17])
    defparam i1_2_lut.init = 16'heeee;
    CCU2D count_28_add_4_5 (.A0(n20), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n19), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n240), 
          .COUT(n241), .S0(n117), .S1(n116));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28_add_4_5.INIT0 = 16'hfaaa;
    defparam count_28_add_4_5.INIT1 = 16'hfaaa;
    defparam count_28_add_4_5.INJECT1_0 = "NO";
    defparam count_28_add_4_5.INJECT1_1 = "NO";
    LUT4 counter_7__I_0_i7_1_lut (.A(counter[6]), .Z(leds_c_6)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(60[15:53])
    defparam counter_7__I_0_i7_1_lut.init = 16'h5555;
    FD1S3IX count_28__i0 (.D(n120), .CK(clk133), .CD(clk133_enable_8), 
            .Q(n23)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28__i0.GSR = "ENABLED";
    OBZ lcd_wr_pad (.I(GND_net), .T(VCC_net), .O(lcd_wr));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:9])
    GSR GSR_INST (.GSR(VCC_net));
    CCU2D counter_29_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n238), .S0(n38));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(56[16:23])
    defparam counter_29_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_29_add_4_9.INIT1 = 16'h0000;
    defparam counter_29_add_4_9.INJECT1_0 = "NO";
    defparam counter_29_add_4_9.INJECT1_1 = "NO";
    CCU2D count_28_add_4_23 (.A0(count[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n249), .S0(n99), .S1(n98));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28_add_4_23.INIT0 = 16'hfaaa;
    defparam count_28_add_4_23.INIT1 = 16'hfaaa;
    defparam count_28_add_4_23.INJECT1_0 = "NO";
    defparam count_28_add_4_23.INJECT1_1 = "NO";
    CCU2D count_28_add_4_21 (.A0(count[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n248), .COUT(n249), .S0(n101), .S1(n100));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28_add_4_21.INIT0 = 16'hfaaa;
    defparam count_28_add_4_21.INIT1 = 16'hfaaa;
    defparam count_28_add_4_21.INJECT1_0 = "NO";
    defparam count_28_add_4_21.INJECT1_1 = "NO";
    CCU2D count_28_add_4_19 (.A0(count[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n247), .COUT(n248), .S0(n103), .S1(n102));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28_add_4_19.INIT0 = 16'hfaaa;
    defparam count_28_add_4_19.INIT1 = 16'hfaaa;
    defparam count_28_add_4_19.INJECT1_0 = "NO";
    defparam count_28_add_4_19.INJECT1_1 = "NO";
    CCU2D count_28_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n246), .COUT(n247), .S0(n105), .S1(n104));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28_add_4_17.INIT0 = 16'hfaaa;
    defparam count_28_add_4_17.INIT1 = 16'hfaaa;
    defparam count_28_add_4_17.INJECT1_0 = "NO";
    defparam count_28_add_4_17.INJECT1_1 = "NO";
    CCU2D count_28_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n244), .COUT(n245), .S0(n109), .S1(n108));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28_add_4_13.INIT0 = 16'hfaaa;
    defparam count_28_add_4_13.INIT1 = 16'hfaaa;
    defparam count_28_add_4_13.INJECT1_0 = "NO";
    defparam count_28_add_4_13.INJECT1_1 = "NO";
    CCU2D count_28_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n243), .COUT(n244), .S0(n111), .S1(n110));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28_add_4_11.INIT0 = 16'hfaaa;
    defparam count_28_add_4_11.INIT1 = 16'hfaaa;
    defparam count_28_add_4_11.INJECT1_0 = "NO";
    defparam count_28_add_4_11.INJECT1_1 = "NO";
    CCU2D count_28_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n242), .COUT(n243), .S0(n113), .S1(n112));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28_add_4_9.INIT0 = 16'hfaaa;
    defparam count_28_add_4_9.INIT1 = 16'hfaaa;
    defparam count_28_add_4_9.INJECT1_0 = "NO";
    defparam count_28_add_4_9.INJECT1_1 = "NO";
    LUT4 counter_7__I_0_i2_1_lut (.A(counter[1]), .Z(leds_c_1)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(60[15:53])
    defparam counter_7__I_0_i2_1_lut.init = 16'h5555;
    LUT4 counter_7__I_0_i8_1_lut (.A(counter[7]), .Z(leds_c_7)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(60[15:53])
    defparam counter_7__I_0_i8_1_lut.init = 16'h5555;
    LUT4 counter_7__I_0_i3_1_lut (.A(counter[2]), .Z(leds_c_2)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(60[15:53])
    defparam counter_7__I_0_i3_1_lut.init = 16'h5555;
    LUT4 counter_7__I_0_i4_1_lut (.A(counter[3]), .Z(leds_c_3)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(60[15:53])
    defparam counter_7__I_0_i4_1_lut.init = 16'h5555;
    LUT4 counter_7__I_0_i5_1_lut (.A(counter[4]), .Z(leds_c_4)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(60[15:53])
    defparam counter_7__I_0_i5_1_lut.init = 16'h5555;
    CCU2D counter_29_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n235), .COUT(n236), .S0(n44), .S1(n43));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(56[16:23])
    defparam counter_29_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_29_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_29_add_4_3.INJECT1_0 = "NO";
    defparam counter_29_add_4_3.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 counter_7__I_0_i6_1_lut (.A(counter[5]), .Z(leds_c_5)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(60[15:53])
    defparam counter_7__I_0_i6_1_lut.init = 16'h5555;
    FD1P3AX counter_29__i6 (.D(n39), .SP(clk133_enable_8), .CK(clk133), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(56[16:23])
    defparam counter_29__i6.GSR = "ENABLED";
    FD1P3AX counter_29__i5 (.D(n40), .SP(clk133_enable_8), .CK(clk133), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(56[16:23])
    defparam counter_29__i5.GSR = "ENABLED";
    FD1P3AX counter_29__i4 (.D(n41), .SP(clk133_enable_8), .CK(clk133), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(56[16:23])
    defparam counter_29__i4.GSR = "ENABLED";
    FD1P3AX counter_29__i3 (.D(n42), .SP(clk133_enable_8), .CK(clk133), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(56[16:23])
    defparam counter_29__i3.GSR = "ENABLED";
    FD1P3AX counter_29__i2 (.D(n43), .SP(clk133_enable_8), .CK(clk133), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(56[16:23])
    defparam counter_29__i2.GSR = "ENABLED";
    FD1P3AX counter_29__i1 (.D(n44), .SP(clk133_enable_8), .CK(clk133), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(56[16:23])
    defparam counter_29__i1.GSR = "ENABLED";
    FD1S3IX count_28__i22 (.D(n98), .CK(clk133), .CD(clk133_enable_8), 
            .Q(count[22])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28__i22.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_3 (.A(count[15]), .B(count[14]), .C(count[13]), 
         .D(n4), .Z(n6)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(48[12:17])
    defparam i2_4_lut_adj_3.init = 16'heeea;
    VLO i1 (.Z(GND_net));
    CCU2D counter_29_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n237), .COUT(n238), .S0(n40), .S1(n39));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(56[16:23])
    defparam counter_29_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_29_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_29_add_4_7.INJECT1_0 = "NO";
    defparam counter_29_add_4_7.INJECT1_1 = "NO";
    TSALL TSALL_INST (.TSALL(GND_net));
    FD1S3IX count_28__i21 (.D(n99), .CK(clk133), .CD(clk133_enable_8), 
            .Q(count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28__i21.GSR = "ENABLED";
    FD1S3IX count_28__i20 (.D(n100), .CK(clk133), .CD(clk133_enable_8), 
            .Q(count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28__i20.GSR = "ENABLED";
    FD1S3IX count_28__i19 (.D(n101), .CK(clk133), .CD(clk133_enable_8), 
            .Q(count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28__i19.GSR = "ENABLED";
    FD1S3IX count_28__i18 (.D(n102), .CK(clk133), .CD(clk133_enable_8), 
            .Q(count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28__i18.GSR = "ENABLED";
    FD1S3IX count_28__i17 (.D(n103), .CK(clk133), .CD(clk133_enable_8), 
            .Q(count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28__i17.GSR = "ENABLED";
    FD1S3IX count_28__i16 (.D(n104), .CK(clk133), .CD(clk133_enable_8), 
            .Q(count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28__i16.GSR = "ENABLED";
    FD1S3IX count_28__i15 (.D(n105), .CK(clk133), .CD(clk133_enable_8), 
            .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28__i15.GSR = "ENABLED";
    FD1S3IX count_28__i14 (.D(n106), .CK(clk133), .CD(clk133_enable_8), 
            .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28__i14.GSR = "ENABLED";
    FD1S3IX count_28__i13 (.D(n107), .CK(clk133), .CD(clk133_enable_8), 
            .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28__i13.GSR = "ENABLED";
    FD1S3IX count_28__i12 (.D(n108), .CK(clk133), .CD(clk133_enable_8), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28__i12.GSR = "ENABLED";
    FD1S3IX count_28__i11 (.D(n109), .CK(clk133), .CD(clk133_enable_8), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28__i11.GSR = "ENABLED";
    FD1S3IX count_28__i10 (.D(n110), .CK(clk133), .CD(clk133_enable_8), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28__i10.GSR = "ENABLED";
    FD1S3IX count_28__i9 (.D(n111), .CK(clk133), .CD(clk133_enable_8), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28__i9.GSR = "ENABLED";
    FD1S3IX count_28__i8 (.D(n112), .CK(clk133), .CD(clk133_enable_8), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28__i8.GSR = "ENABLED";
    FD1S3IX count_28__i7 (.D(n113), .CK(clk133), .CD(clk133_enable_8), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28__i7.GSR = "ENABLED";
    FD1S3IX count_28__i6 (.D(n114), .CK(clk133), .CD(clk133_enable_8), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28__i6.GSR = "ENABLED";
    FD1S3IX count_28__i5 (.D(n115), .CK(clk133), .CD(clk133_enable_8), 
            .Q(n18)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28__i5.GSR = "ENABLED";
    FD1S3IX count_28__i4 (.D(n116), .CK(clk133), .CD(clk133_enable_8), 
            .Q(n19)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28__i4.GSR = "ENABLED";
    FD1S3IX count_28__i3 (.D(n117), .CK(clk133), .CD(clk133_enable_8), 
            .Q(n20)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28__i3.GSR = "ENABLED";
    FD1S3IX count_28__i2 (.D(n118), .CK(clk133), .CD(clk133_enable_8), 
            .Q(n21)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28__i2.GSR = "ENABLED";
    FD1S3IX count_28__i1 (.D(n119), .CK(clk133), .CD(clk133_enable_8), 
            .Q(n22)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[14:19])
    defparam count_28__i1.GSR = "ENABLED";
    OBZ lcd_reset_pad (.I(GND_net), .T(VCC_net), .O(lcd_reset));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(16[3:12])
    OB debug_pad (.I(debug_c_c), .O(debug));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(19[3:8])
    OB leds_pad_7 (.I(leds_c_7), .O(leds[7]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(22[3:7])
    OB leds_pad_6 (.I(leds_c_6), .O(leds[6]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(22[3:7])
    OB leds_pad_5 (.I(leds_c_5), .O(leds[5]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(22[3:7])
    OB leds_pad_4 (.I(leds_c_4), .O(leds[4]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(22[3:7])
    OB leds_pad_3 (.I(leds_c_3), .O(leds[3]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(22[3:7])
    OB leds_pad_2 (.I(leds_c_2), .O(leds[2]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(22[3:7])
    OB leds_pad_1 (.I(leds_c_1), .O(leds[1]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(22[3:7])
    OB leds_pad_0 (.I(leds_c_0), .O(leds[0]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(22[3:7])
    IB debug_c_pad (.I(lcd_te), .O(debug_c_c));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(15[3:9])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

