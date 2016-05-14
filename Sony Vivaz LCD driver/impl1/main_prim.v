// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.7.1.502
// Netlist written on Fri May 13 23:02:05 2016
//
// Verilog Description of module main
//

module main (leds, lcd_LCDBus, lcd_wr, lcd_reset, lcd_rs);   // z:/github/lattice/sony vivaz lcd driver/main.vhd(9[8:12])
    output [7:0]leds;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(12[3:7])
    output [15:0]lcd_LCDBus;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    output lcd_wr;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(14[3:9])
    output lcd_reset;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(15[3:12])
    output lcd_rs;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(16[3:9])
    
    wire clk133 /* synthesis SET_AS_NETWORK=clk133, is_clock=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(21[9:15])
    
    wire GND_net, VCC_net, leds_c_7, leds_c_6, leds_c_5, leds_c_4, 
        leds_c_3, leds_c_2, leds_c_1, leds_c_0, n625, lcd_LCDBus_c_7, 
        lcd_LCDBus_c_6, lcd_LCDBus_c_5, lcd_LCDBus_c_4, lcd_LCDBus_c_3, 
        lcd_LCDBus_c_2, lcd_LCDBus_c_1, lcd_LCDBus_c_0, lcd_wr_c, n623;
    wire [15:0]lcd_sender_payload_i;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(51[9:29])
    
    wire lcd_sender_go_i, lcd_sender_busy_i;
    wire [22:0]count;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(79[12:17])
    wire [7:0]counter;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(80[12:19])
    
    wire count_22__N_71, n622, n618, lcd_sender_go_i_N_97, n38, n40, 
        n39, n22, n21, n20, n19, n18, n23, n617, n45, n44, 
        n43, n42, n41, clk133_enable_27, n613, n621, n4, n620, 
        n616, n630, n619, n615, n98, n99, n100, n101, n102, 
        n103, n104, n105, n106, n107, n108, n109, n110, n111, 
        n112, n113, n114, n115, n116, n117, n118, n119, n120, 
        n631, n6, n5, n614, n628, n627, n626, clk133_enable_20;
    
    VHI i2 (.Z(VCC_net));
    lcd_sender inst_lcd_sender (.lcd_LCDBus_c_0(lcd_LCDBus_c_0), .clk133(clk133), 
            .\lcd_sender_payload_i[0] (lcd_sender_payload_i[0]), .lcd_wr_c(lcd_wr_c), 
            .lcd_sender_go_i(lcd_sender_go_i), .lcd_sender_busy_i(lcd_sender_busy_i), 
            .lcd_LCDBus_c_7(lcd_LCDBus_c_7), .\lcd_sender_payload_i[7] (lcd_sender_payload_i[7]), 
            .lcd_LCDBus_c_6(lcd_LCDBus_c_6), .\lcd_sender_payload_i[6] (lcd_sender_payload_i[6]), 
            .lcd_LCDBus_c_5(lcd_LCDBus_c_5), .\lcd_sender_payload_i[5] (lcd_sender_payload_i[5]), 
            .lcd_LCDBus_c_4(lcd_LCDBus_c_4), .\lcd_sender_payload_i[4] (lcd_sender_payload_i[4]), 
            .lcd_LCDBus_c_3(lcd_LCDBus_c_3), .\lcd_sender_payload_i[3] (lcd_sender_payload_i[3]), 
            .lcd_LCDBus_c_2(lcd_LCDBus_c_2), .\lcd_sender_payload_i[2] (lcd_sender_payload_i[2]), 
            .lcd_LCDBus_c_1(lcd_LCDBus_c_1), .\lcd_sender_payload_i[1] (lcd_sender_payload_i[1]), 
            .lcd_sender_go_i_N_97(lcd_sender_go_i_N_97));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(65[20:30])
    CCU2D count_77_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n617), .COUT(n618), .S0(n111), .S1(n110));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77_add_4_11.INIT0 = 16'hfaaa;
    defparam count_77_add_4_11.INIT1 = 16'hfaaa;
    defparam count_77_add_4_11.INJECT1_0 = "NO";
    defparam count_77_add_4_11.INJECT1_1 = "NO";
    CCU2D count_77_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n616), .COUT(n617), .S0(n113), .S1(n112));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77_add_4_9.INIT0 = 16'hfaaa;
    defparam count_77_add_4_9.INIT1 = 16'hfaaa;
    defparam count_77_add_4_9.INJECT1_0 = "NO";
    defparam count_77_add_4_9.INJECT1_1 = "NO";
    OSCH inst_clk (.STDBY(GND_net), .OSC(clk133)) /* synthesis syn_instantiated=1 */ ;
    defparam inst_clk.NOM_FREQ = "53.20";
    CCU2D count_77_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n23), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n613), .S1(n120));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77_add_4_1.INIT0 = 16'hF000;
    defparam count_77_add_4_1.INIT1 = 16'h0555;
    defparam count_77_add_4_1.INJECT1_0 = "NO";
    defparam count_77_add_4_1.INJECT1_1 = "NO";
    OB leds_pad_6 (.I(leds_c_6), .O(leds[6]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(12[3:7])
    FD1P3AX lcd_sender_go_i_28 (.D(lcd_sender_go_i_N_97), .SP(count_22__N_71), 
            .CK(clk133), .Q(lcd_sender_go_i));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(84[3] 99[10])
    defparam lcd_sender_go_i_28.GSR = "ENABLED";
    OB leds_pad_5 (.I(leds_c_5), .O(leds[5]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(12[3:7])
    OB leds_pad_7 (.I(leds_c_7), .O(leds[7]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(12[3:7])
    LUT4 i1_4_lut (.A(count[13]), .B(count[16]), .C(count[14]), .D(n4), 
         .Z(n5)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut.init = 16'hfcec;
    TSALL TSALL_INST (.TSALL(GND_net));
    FD1P3AX lcd_sender_payload_i__i1 (.D(counter[0]), .SP(clk133_enable_27), 
            .CK(clk133), .Q(lcd_sender_payload_i[0]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(84[3] 99[10])
    defparam lcd_sender_payload_i__i1.GSR = "ENABLED";
    FD1S3IX count_77__i0 (.D(n120), .CK(clk133), .CD(clk133_enable_20), 
            .Q(n23)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77__i0.GSR = "ENABLED";
    LUT4 i2_2_lut (.A(count[15]), .B(count[17]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 counter_7__I_0_i1_1_lut (.A(counter[0]), .Z(leds_c_0)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(101[15:53])
    defparam counter_7__I_0_i1_1_lut.init = 16'h5555;
    FD1P3AX counter_78__i0 (.D(n45), .SP(clk133_enable_20), .CK(clk133), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(95[16:23])
    defparam counter_78__i0.GSR = "ENABLED";
    CCU2D count_77_add_4_7 (.A0(n18), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n615), 
          .COUT(n616), .S0(n115), .S1(n114));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77_add_4_7.INIT0 = 16'hfaaa;
    defparam count_77_add_4_7.INIT1 = 16'hfaaa;
    defparam count_77_add_4_7.INJECT1_0 = "NO";
    defparam count_77_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_5 (.A(n631), .B(count[12]), .C(count[11]), .D(count[10]), 
         .Z(n4)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_5.init = 16'hfcec;
    CCU2D count_77_add_4_5 (.A0(n20), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n19), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n614), 
          .COUT(n615), .S0(n117), .S1(n116));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77_add_4_5.INIT0 = 16'hfaaa;
    defparam count_77_add_4_5.INIT1 = 16'hfaaa;
    defparam count_77_add_4_5.INJECT1_0 = "NO";
    defparam count_77_add_4_5.INJECT1_1 = "NO";
    FD1P3AX counter_78__i7 (.D(n38), .SP(clk133_enable_20), .CK(clk133), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(95[16:23])
    defparam counter_78__i7.GSR = "ENABLED";
    VLO i1 (.Z(GND_net));
    LUT4 i2_4_lut (.A(count[19]), .B(n5), .C(count[18]), .D(n6), .Z(n630)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'ha080;
    FD1P3AX counter_78__i6 (.D(n39), .SP(clk133_enable_20), .CK(clk133), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(95[16:23])
    defparam counter_78__i6.GSR = "ENABLED";
    FD1P3AX counter_78__i5 (.D(n40), .SP(clk133_enable_20), .CK(clk133), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(95[16:23])
    defparam counter_78__i5.GSR = "ENABLED";
    FD1P3AX counter_78__i4 (.D(n41), .SP(clk133_enable_20), .CK(clk133), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(95[16:23])
    defparam counter_78__i4.GSR = "ENABLED";
    FD1P3AX counter_78__i3 (.D(n42), .SP(clk133_enable_20), .CK(clk133), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(95[16:23])
    defparam counter_78__i3.GSR = "ENABLED";
    FD1P3AX counter_78__i2 (.D(n43), .SP(clk133_enable_20), .CK(clk133), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(95[16:23])
    defparam counter_78__i2.GSR = "ENABLED";
    FD1P3AX counter_78__i1 (.D(n44), .SP(clk133_enable_20), .CK(clk133), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(95[16:23])
    defparam counter_78__i1.GSR = "ENABLED";
    FD1P3AX lcd_sender_payload_i__i2 (.D(counter[1]), .SP(clk133_enable_27), 
            .CK(clk133), .Q(lcd_sender_payload_i[1]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(84[3] 99[10])
    defparam lcd_sender_payload_i__i2.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_6 (.A(count[9]), .B(count[6]), .C(count[8]), .D(count[7]), 
         .Z(n631)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_6.init = 16'ha080;
    LUT4 counter_7__I_0_i6_1_lut (.A(counter[5]), .Z(leds_c_5)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(101[15:53])
    defparam counter_7__I_0_i6_1_lut.init = 16'h5555;
    LUT4 counter_7__I_0_i8_1_lut (.A(counter[7]), .Z(leds_c_7)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(101[15:53])
    defparam counter_7__I_0_i8_1_lut.init = 16'h5555;
    LUT4 counter_7__I_0_i7_1_lut (.A(counter[6]), .Z(leds_c_6)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(101[15:53])
    defparam counter_7__I_0_i7_1_lut.init = 16'h5555;
    LUT4 i427_2_lut (.A(clk133_enable_20), .B(lcd_sender_busy_i), .Z(clk133_enable_27)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i427_2_lut.init = 16'h1111;
    LUT4 i322_4_lut_rep_7 (.A(count[21]), .B(count[22]), .C(n630), .D(count[20]), 
         .Z(clk133_enable_20)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i322_4_lut_rep_7.init = 16'hccc8;
    CCU2D counter_78_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n625), .S1(n45));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(95[16:23])
    defparam counter_78_add_4_1.INIT0 = 16'hF000;
    defparam counter_78_add_4_1.INIT1 = 16'h0555;
    defparam counter_78_add_4_1.INJECT1_0 = "NO";
    defparam counter_78_add_4_1.INJECT1_1 = "NO";
    CCU2D counter_78_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n628), .S0(n38));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(95[16:23])
    defparam counter_78_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_78_add_4_9.INIT1 = 16'h0000;
    defparam counter_78_add_4_9.INJECT1_0 = "NO";
    defparam counter_78_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_78_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n627), .COUT(n628), .S0(n40), .S1(n39));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(95[16:23])
    defparam counter_78_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_78_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_78_add_4_7.INJECT1_0 = "NO";
    defparam counter_78_add_4_7.INJECT1_1 = "NO";
    LUT4 counter_7__I_0_i5_1_lut (.A(counter[4]), .Z(leds_c_4)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(101[15:53])
    defparam counter_7__I_0_i5_1_lut.init = 16'h5555;
    OB leds_pad_4 (.I(leds_c_4), .O(leds[4]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(12[3:7])
    OB leds_pad_3 (.I(leds_c_3), .O(leds[3]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(12[3:7])
    OB leds_pad_2 (.I(leds_c_2), .O(leds[2]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(12[3:7])
    OB leds_pad_1 (.I(leds_c_1), .O(leds[1]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(12[3:7])
    OB leds_pad_0 (.I(leds_c_0), .O(leds[0]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(12[3:7])
    OB lcd_LCDBus_pad_15 (.I(GND_net), .O(lcd_LCDBus[15]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_14 (.I(GND_net), .O(lcd_LCDBus[14]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_13 (.I(GND_net), .O(lcd_LCDBus[13]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_12 (.I(GND_net), .O(lcd_LCDBus[12]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_11 (.I(GND_net), .O(lcd_LCDBus[11]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_10 (.I(GND_net), .O(lcd_LCDBus[10]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_9 (.I(GND_net), .O(lcd_LCDBus[9]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_8 (.I(GND_net), .O(lcd_LCDBus[8]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_7 (.I(lcd_LCDBus_c_7), .O(lcd_LCDBus[7]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_6 (.I(lcd_LCDBus_c_6), .O(lcd_LCDBus[6]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_5 (.I(lcd_LCDBus_c_5), .O(lcd_LCDBus[5]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_4 (.I(lcd_LCDBus_c_4), .O(lcd_LCDBus[4]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_3 (.I(lcd_LCDBus_c_3), .O(lcd_LCDBus[3]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_2 (.I(lcd_LCDBus_c_2), .O(lcd_LCDBus[2]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_1 (.I(lcd_LCDBus_c_1), .O(lcd_LCDBus[1]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_0 (.I(lcd_LCDBus_c_0), .O(lcd_LCDBus[0]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:13])
    OB lcd_wr_pad (.I(lcd_wr_c), .O(lcd_wr));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(14[3:9])
    OB lcd_reset_pad (.I(GND_net), .O(lcd_reset));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(15[3:12])
    OB lcd_rs_pad (.I(GND_net), .O(lcd_rs));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(16[3:9])
    LUT4 counter_7__I_0_i4_1_lut (.A(counter[3]), .Z(leds_c_3)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(101[15:53])
    defparam counter_7__I_0_i4_1_lut.init = 16'h5555;
    CCU2D count_77_add_4_23 (.A0(count[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n623), .S0(n99), .S1(n98));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77_add_4_23.INIT0 = 16'hfaaa;
    defparam count_77_add_4_23.INIT1 = 16'hfaaa;
    defparam count_77_add_4_23.INJECT1_0 = "NO";
    defparam count_77_add_4_23.INJECT1_1 = "NO";
    CCU2D count_77_add_4_21 (.A0(count[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n622), .COUT(n623), .S0(n101), .S1(n100));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77_add_4_21.INIT0 = 16'hfaaa;
    defparam count_77_add_4_21.INIT1 = 16'hfaaa;
    defparam count_77_add_4_21.INJECT1_0 = "NO";
    defparam count_77_add_4_21.INJECT1_1 = "NO";
    CCU2D count_77_add_4_19 (.A0(count[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n621), .COUT(n622), .S0(n103), .S1(n102));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77_add_4_19.INIT0 = 16'hfaaa;
    defparam count_77_add_4_19.INIT1 = 16'hfaaa;
    defparam count_77_add_4_19.INJECT1_0 = "NO";
    defparam count_77_add_4_19.INJECT1_1 = "NO";
    CCU2D counter_78_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n626), .COUT(n627), .S0(n42), .S1(n41));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(95[16:23])
    defparam counter_78_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_78_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_78_add_4_5.INJECT1_0 = "NO";
    defparam counter_78_add_4_5.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 counter_7__I_0_i3_1_lut (.A(counter[2]), .Z(leds_c_2)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(101[15:53])
    defparam counter_7__I_0_i3_1_lut.init = 16'h5555;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 counter_7__I_0_i2_1_lut (.A(counter[1]), .Z(leds_c_1)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(101[15:53])
    defparam counter_7__I_0_i2_1_lut.init = 16'h5555;
    CCU2D count_77_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n620), .COUT(n621), .S0(n105), .S1(n104));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77_add_4_17.INIT0 = 16'hfaaa;
    defparam count_77_add_4_17.INIT1 = 16'hfaaa;
    defparam count_77_add_4_17.INJECT1_0 = "NO";
    defparam count_77_add_4_17.INJECT1_1 = "NO";
    CCU2D count_77_add_4_3 (.A0(n22), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n21), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n613), 
          .COUT(n614), .S0(n119), .S1(n118));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77_add_4_3.INIT0 = 16'hfaaa;
    defparam count_77_add_4_3.INIT1 = 16'hfaaa;
    defparam count_77_add_4_3.INJECT1_0 = "NO";
    defparam count_77_add_4_3.INJECT1_1 = "NO";
    FD1P3AX lcd_sender_payload_i__i3 (.D(counter[2]), .SP(clk133_enable_27), 
            .CK(clk133), .Q(lcd_sender_payload_i[2]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(84[3] 99[10])
    defparam lcd_sender_payload_i__i3.GSR = "ENABLED";
    FD1P3AX lcd_sender_payload_i__i4 (.D(counter[3]), .SP(clk133_enable_27), 
            .CK(clk133), .Q(lcd_sender_payload_i[3]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(84[3] 99[10])
    defparam lcd_sender_payload_i__i4.GSR = "ENABLED";
    FD1P3AX lcd_sender_payload_i__i5 (.D(counter[4]), .SP(clk133_enable_27), 
            .CK(clk133), .Q(lcd_sender_payload_i[4]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(84[3] 99[10])
    defparam lcd_sender_payload_i__i5.GSR = "ENABLED";
    FD1P3AX lcd_sender_payload_i__i6 (.D(counter[5]), .SP(clk133_enable_27), 
            .CK(clk133), .Q(lcd_sender_payload_i[5]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(84[3] 99[10])
    defparam lcd_sender_payload_i__i6.GSR = "ENABLED";
    FD1P3AX lcd_sender_payload_i__i7 (.D(counter[6]), .SP(clk133_enable_27), 
            .CK(clk133), .Q(lcd_sender_payload_i[6]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(84[3] 99[10])
    defparam lcd_sender_payload_i__i7.GSR = "ENABLED";
    FD1P3AX lcd_sender_payload_i__i8 (.D(counter[7]), .SP(clk133_enable_27), 
            .CK(clk133), .Q(lcd_sender_payload_i[7]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(84[3] 99[10])
    defparam lcd_sender_payload_i__i8.GSR = "ENABLED";
    FD1S3IX count_77__i1 (.D(n119), .CK(clk133), .CD(clk133_enable_20), 
            .Q(n22)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77__i1.GSR = "ENABLED";
    CCU2D counter_78_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n625), .COUT(n626), .S0(n44), .S1(n43));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(95[16:23])
    defparam counter_78_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_78_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_78_add_4_3.INJECT1_0 = "NO";
    defparam counter_78_add_4_3.INJECT1_1 = "NO";
    CCU2D count_77_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n619), .COUT(n620), .S0(n107), .S1(n106));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77_add_4_15.INIT0 = 16'hfaaa;
    defparam count_77_add_4_15.INIT1 = 16'hfaaa;
    defparam count_77_add_4_15.INJECT1_0 = "NO";
    defparam count_77_add_4_15.INJECT1_1 = "NO";
    FD1S3IX count_77__i2 (.D(n118), .CK(clk133), .CD(clk133_enable_20), 
            .Q(n21)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77__i2.GSR = "ENABLED";
    FD1S3IX count_77__i3 (.D(n117), .CK(clk133), .CD(clk133_enable_20), 
            .Q(n20)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77__i3.GSR = "ENABLED";
    FD1S3IX count_77__i4 (.D(n116), .CK(clk133), .CD(clk133_enable_20), 
            .Q(n19)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77__i4.GSR = "ENABLED";
    FD1S3IX count_77__i5 (.D(n115), .CK(clk133), .CD(clk133_enable_20), 
            .Q(n18)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77__i5.GSR = "ENABLED";
    FD1S3IX count_77__i6 (.D(n114), .CK(clk133), .CD(clk133_enable_20), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77__i6.GSR = "ENABLED";
    FD1S3IX count_77__i7 (.D(n113), .CK(clk133), .CD(clk133_enable_20), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77__i7.GSR = "ENABLED";
    FD1S3IX count_77__i8 (.D(n112), .CK(clk133), .CD(clk133_enable_20), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77__i8.GSR = "ENABLED";
    FD1S3IX count_77__i9 (.D(n111), .CK(clk133), .CD(clk133_enable_20), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77__i9.GSR = "ENABLED";
    FD1S3IX count_77__i10 (.D(n110), .CK(clk133), .CD(clk133_enable_20), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77__i10.GSR = "ENABLED";
    FD1S3IX count_77__i11 (.D(n109), .CK(clk133), .CD(clk133_enable_20), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77__i11.GSR = "ENABLED";
    FD1S3IX count_77__i12 (.D(n108), .CK(clk133), .CD(clk133_enable_20), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77__i12.GSR = "ENABLED";
    FD1S3IX count_77__i13 (.D(n107), .CK(clk133), .CD(clk133_enable_20), 
            .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77__i13.GSR = "ENABLED";
    FD1S3IX count_77__i14 (.D(n106), .CK(clk133), .CD(clk133_enable_20), 
            .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77__i14.GSR = "ENABLED";
    FD1S3IX count_77__i15 (.D(n105), .CK(clk133), .CD(clk133_enable_20), 
            .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77__i15.GSR = "ENABLED";
    FD1S3IX count_77__i16 (.D(n104), .CK(clk133), .CD(clk133_enable_20), 
            .Q(count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77__i16.GSR = "ENABLED";
    FD1S3IX count_77__i17 (.D(n103), .CK(clk133), .CD(clk133_enable_20), 
            .Q(count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77__i17.GSR = "ENABLED";
    FD1S3IX count_77__i18 (.D(n102), .CK(clk133), .CD(clk133_enable_20), 
            .Q(count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77__i18.GSR = "ENABLED";
    FD1S3IX count_77__i19 (.D(n101), .CK(clk133), .CD(clk133_enable_20), 
            .Q(count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77__i19.GSR = "ENABLED";
    FD1S3IX count_77__i20 (.D(n100), .CK(clk133), .CD(clk133_enable_20), 
            .Q(count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77__i20.GSR = "ENABLED";
    FD1S3IX count_77__i21 (.D(n99), .CK(clk133), .CD(clk133_enable_20), 
            .Q(count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77__i21.GSR = "ENABLED";
    FD1S3IX count_77__i22 (.D(n98), .CK(clk133), .CD(clk133_enable_20), 
            .Q(count[22])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77__i22.GSR = "ENABLED";
    CCU2D count_77_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n618), .COUT(n619), .S0(n109), .S1(n108));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(86[14:19])
    defparam count_77_add_4_13.INIT0 = 16'hfaaa;
    defparam count_77_add_4_13.INIT1 = 16'hfaaa;
    defparam count_77_add_4_13.INJECT1_0 = "NO";
    defparam count_77_add_4_13.INJECT1_1 = "NO";
    LUT4 i323_1_lut_4_lut (.A(count[21]), .B(count[22]), .C(n630), .D(count[20]), 
         .Z(count_22__N_71)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))))) */ ;
    defparam i323_1_lut_4_lut.init = 16'h3337;
    
endmodule
//
// Verilog Description of module lcd_sender
//

module lcd_sender (lcd_LCDBus_c_0, clk133, \lcd_sender_payload_i[0] , 
            lcd_wr_c, lcd_sender_go_i, lcd_sender_busy_i, lcd_LCDBus_c_7, 
            \lcd_sender_payload_i[7] , lcd_LCDBus_c_6, \lcd_sender_payload_i[6] , 
            lcd_LCDBus_c_5, \lcd_sender_payload_i[5] , lcd_LCDBus_c_4, 
            \lcd_sender_payload_i[4] , lcd_LCDBus_c_3, \lcd_sender_payload_i[3] , 
            lcd_LCDBus_c_2, \lcd_sender_payload_i[2] , lcd_LCDBus_c_1, 
            \lcd_sender_payload_i[1] , lcd_sender_go_i_N_97);
    output lcd_LCDBus_c_0;
    input clk133;
    input \lcd_sender_payload_i[0] ;
    output lcd_wr_c;
    input lcd_sender_go_i;
    output lcd_sender_busy_i;
    output lcd_LCDBus_c_7;
    input \lcd_sender_payload_i[7] ;
    output lcd_LCDBus_c_6;
    input \lcd_sender_payload_i[6] ;
    output lcd_LCDBus_c_5;
    input \lcd_sender_payload_i[5] ;
    output lcd_LCDBus_c_4;
    input \lcd_sender_payload_i[4] ;
    output lcd_LCDBus_c_3;
    input \lcd_sender_payload_i[3] ;
    output lcd_LCDBus_c_2;
    input \lcd_sender_payload_i[2] ;
    output lcd_LCDBus_c_1;
    input \lcd_sender_payload_i[1] ;
    output lcd_sender_go_i_N_97;
    
    wire clk133 /* synthesis SET_AS_NETWORK=clk133, is_clock=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(21[9:15])
    
    wire clk133_enable_13, clk133_enable_2, wr_N_129, last_go_i, clk133_enable_3, 
        clk133_enable_4, busy_N_126;
    wire [2:0]state_i;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(36[10:17])
    wire [2:0]state_i_2__N_120;
    
    wire n500, n498, n570;
    
    FD1P3AX LCDBus_i_i1 (.D(\lcd_sender_payload_i[0] ), .SP(clk133_enable_13), 
            .CK(clk133), .Q(lcd_LCDBus_c_0)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=65, LSE_RLINE=65 */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam LCDBus_i_i1.GSR = "ENABLED";
    FD1P3AX wr_i_19 (.D(wr_N_129), .SP(clk133_enable_2), .CK(clk133), 
            .Q(lcd_wr_c)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=65, LSE_RLINE=65 */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam wr_i_19.GSR = "ENABLED";
    FD1P3AX last_go_i_21 (.D(lcd_sender_go_i), .SP(clk133_enable_3), .CK(clk133), 
            .Q(last_go_i)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=65, LSE_RLINE=65 */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam last_go_i_21.GSR = "ENABLED";
    FD1P3AX busy_i_17 (.D(busy_N_126), .SP(clk133_enable_4), .CK(clk133), 
            .Q(lcd_sender_busy_i)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=65, LSE_RLINE=65 */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam busy_i_17.GSR = "ENABLED";
    FD1S3AY state_i_i0 (.D(state_i_2__N_120[0]), .CK(clk133), .Q(state_i[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=20, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=65, LSE_RLINE=65 */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam state_i_i0.GSR = "ENABLED";
    FD1S3AX state_i_i1 (.D(n500), .CK(clk133), .Q(state_i[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=65, LSE_RLINE=65 */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam state_i_i1.GSR = "ENABLED";
    FD1S3AX state_i_i2 (.D(n498), .CK(clk133), .Q(wr_N_129)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=65, LSE_RLINE=65 */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam state_i_i2.GSR = "ENABLED";
    FD1P3AX LCDBus_i_i8 (.D(\lcd_sender_payload_i[7] ), .SP(clk133_enable_13), 
            .CK(clk133), .Q(lcd_LCDBus_c_7)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=65, LSE_RLINE=65 */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam LCDBus_i_i8.GSR = "ENABLED";
    FD1P3AX LCDBus_i_i7 (.D(\lcd_sender_payload_i[6] ), .SP(clk133_enable_13), 
            .CK(clk133), .Q(lcd_LCDBus_c_6)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=65, LSE_RLINE=65 */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam LCDBus_i_i7.GSR = "ENABLED";
    FD1P3AX LCDBus_i_i6 (.D(\lcd_sender_payload_i[5] ), .SP(clk133_enable_13), 
            .CK(clk133), .Q(lcd_LCDBus_c_5)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=65, LSE_RLINE=65 */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam LCDBus_i_i6.GSR = "ENABLED";
    FD1P3AX LCDBus_i_i5 (.D(\lcd_sender_payload_i[4] ), .SP(clk133_enable_13), 
            .CK(clk133), .Q(lcd_LCDBus_c_4)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=65, LSE_RLINE=65 */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam LCDBus_i_i5.GSR = "ENABLED";
    FD1P3AX LCDBus_i_i4 (.D(\lcd_sender_payload_i[3] ), .SP(clk133_enable_13), 
            .CK(clk133), .Q(lcd_LCDBus_c_3)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=65, LSE_RLINE=65 */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam LCDBus_i_i4.GSR = "ENABLED";
    FD1P3AX LCDBus_i_i3 (.D(\lcd_sender_payload_i[2] ), .SP(clk133_enable_13), 
            .CK(clk133), .Q(lcd_LCDBus_c_2)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=65, LSE_RLINE=65 */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam LCDBus_i_i3.GSR = "ENABLED";
    FD1P3AX LCDBus_i_i2 (.D(\lcd_sender_payload_i[1] ), .SP(clk133_enable_13), 
            .CK(clk133), .Q(lcd_LCDBus_c_1)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=65, LSE_RLINE=65 */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam LCDBus_i_i2.GSR = "ENABLED";
    LUT4 i105_1_lut (.A(wr_N_129), .Z(busy_N_126)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam i105_1_lut.init = 16'h5555;
    LUT4 i5_2_lut (.A(last_go_i), .B(lcd_sender_go_i), .Z(n570)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(52[9:24])
    defparam i5_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_3_lut (.A(state_i[1]), .B(state_i[0]), .C(wr_N_129), 
         .Z(clk133_enable_13)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(50[4] 88[13])
    defparam i1_2_lut_3_lut.init = 16'h0808;
    LUT4 i1_4_lut (.A(state_i[0]), .B(wr_N_129), .C(state_i[1]), .D(n570), 
         .Z(state_i_2__N_120[0])) /* synthesis lut_function=(A (B (C)+!B !(C+(D)))+!A (B+(C))) */ ;
    defparam i1_4_lut.init = 16'hd4d6;
    LUT4 i1_2_lut_3_lut_adj_2 (.A(state_i[1]), .B(state_i[0]), .C(wr_N_129), 
         .Z(clk133_enable_3)) /* synthesis lut_function=(A (B (C))) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(50[4] 88[13])
    defparam i1_2_lut_3_lut_adj_2.init = 16'h8080;
    LUT4 i1_4_lut_adj_3 (.A(state_i[0]), .B(state_i[1]), .C(wr_N_129), 
         .D(n570), .Z(n500)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(B))) */ ;
    defparam i1_4_lut_adj_3.init = 16'h6664;
    LUT4 i1_3_lut (.A(state_i[0]), .B(wr_N_129), .C(state_i[1]), .Z(clk133_enable_2)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(36[10:17])
    defparam i1_3_lut.init = 16'h1414;
    LUT4 i359_3_lut (.A(wr_N_129), .B(state_i[0]), .C(state_i[1]), .Z(n498)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(36[10:17])
    defparam i359_3_lut.init = 16'h6a6a;
    LUT4 i422_2_lut (.A(lcd_sender_busy_i), .B(lcd_sender_go_i), .Z(lcd_sender_go_i_N_97)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(52[9:24])
    defparam i422_2_lut.init = 16'h9999;
    LUT4 i1_4_lut_adj_4 (.A(state_i[0]), .B(wr_N_129), .C(state_i[1]), 
         .D(n570), .Z(clk133_enable_4)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))) */ ;   // z:/github/lattice/sony vivaz lcd driver/lcd_sender.vhd(48[3] 90[10])
    defparam i1_4_lut_adj_4.init = 16'h8280;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

