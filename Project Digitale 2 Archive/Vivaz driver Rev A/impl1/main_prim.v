// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.7.1.502
// Netlist written on Thu May 19 10:33:36 2016
//
// Verilog Description of module main
//

module main (lcd_bus, lcd_rs, lcd_wr, lcd_reset, lcd_te, leds);   // z:/github/lattice/vivaz driver rev a/main.vhd(10[8:12])
    output [15:0]lcd_bus;   // z:/github/lattice/vivaz driver rev a/main.vhd(13[3:10])
    output lcd_rs /* synthesis .original_dir=IN_OUT */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(14[3:9])
    output lcd_wr /* synthesis .original_dir=IN_OUT */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(15[3:9])
    output lcd_reset /* synthesis .original_dir=IN_OUT */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(16[3:12])
    output lcd_te /* synthesis .original_dir=IN_OUT */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(17[3:9])
    output [7:0]leds;   // z:/github/lattice/vivaz driver rev a/main.vhd(18[3:7])
    
    wire VCC_net /* synthesis is_clock=1 */ ;   // z:/github/lattice/vivaz driver rev a/lcd_sender.vhd(36[4] 65[13])
    wire clk133 /* synthesis SET_AS_NETWORK=clk133, is_clock=1 */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(23[9:15])
    wire [15:0]lcd_sender_payload_15__N_2 /* synthesis is_clock=1, SET_AS_NETWORK=lcd_sender_payload_15__N_2[6] */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(66[9:27])
    
    wire GND_net, n925, n1041, n777, n776, n34, n272_generated_10, 
        lcd_te_c, n772, n765, n927, FSM_lcd_arbiter_3__N_91, FSM_lcd_arbiter_3__N_97, 
        lcd_sender_payload_15__N_80, lcd_sender_payload_15__N_74, lcd_sender_payload_15__N_68, 
        FSM_lcd_arbiter_3__N_94, lcd_sender_payload_15__N_77, lcd_sender_payload_15__N_71, 
        n272_generated_6, lcd_sender_payload_15__N_65, lcd_sender_payload_15__N_59, 
        lcd_reset_N_167, n764;
    wire [3:0]FSM_lcd_arbiter_3__N_82;
    
    wire n801, n40, n800, n797, n41;
    wire [23:0]count;   // z:/github/lattice/vivaz driver rev a/main.vhd(182[12:17])
    wire [7:0]tmp;   // z:/github/lattice/vivaz driver rev a/main.vhd(183[12:15])
    
    wire n796, n45, n44, n6, n42, n272_generated_7, lcd_te_N_172, 
        n930, n929, n32, n31, n793, n30, n792, n789, n788, 
        n4, n12, n924, n928, n39, n703, n757, n761, n769, 
        lcd_reset_N_170, n38, n760, n1052, n33, n272_generated_8, 
        n1050, n785, n1042, n1068, n756, n272_generated_1, n784, 
        n1067, n43, n1066, n272_generated_2, n1065, n1064, clk133_enable_8, 
        clk133_enable_9, n272_generated_5, n35, n987, n926, n1063, 
        n272_generated_3, n1074, n1062, n773, n805, n1073, n781, 
        n1061, n780, n1060, n1059, n1058, n1057, n1056, n804, 
        n272_generated_9, n768, n272_generated_4;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i512_3_lut_rep_11_4_lut_4_lut (.A(n1059), .B(n703), .C(n1050), 
         .D(n1062), .Z(n272_generated_3)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (C (D)))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(115[14:44])
    defparam i512_3_lut_rep_11_4_lut_4_lut.init = 16'h0777;
    FD1P3AX tmp_313__i7 (.D(n38), .SP(clk133_enable_9), .CK(clk133), .Q(tmp[7])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(197[13:16])
    defparam tmp_313__i7.GSR = "DISABLED";
    OB leds_pad_7 (.I(n1066), .O(leds[7]));   // z:/github/lattice/vivaz driver rev a/main.vhd(18[3:7])
    OB leds_pad_0 (.I(n1065), .O(leds[0]));   // z:/github/lattice/vivaz driver rev a/main.vhd(18[3:7])
    OB leds_pad_1 (.I(n1064), .O(leds[1]));   // z:/github/lattice/vivaz driver rev a/main.vhd(18[3:7])
    OSCH inst_clk (.STDBY(GND_net), .OSC(clk133)) /* synthesis syn_instantiated=1 */ ;
    defparam inst_clk.NOM_FREQ = "20.46";
    FD1P3AX tmp_313__i6 (.D(n39), .SP(clk133_enable_9), .CK(clk133), .Q(tmp[6])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(197[13:16])
    defparam tmp_313__i6.GSR = "DISABLED";
    FD1S1D i433 (.D(n1074), .CK(FSM_lcd_arbiter_3__N_82[0]), .CD(n1052), 
           .Q(n764));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam i433.GSR = "DISABLED";
    FD1S3BX lcd_sender_payload_i3_446_447_set (.D(n1073), .CK(VCC_net), 
            .PD(n272_generated_3), .Q(n777));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam lcd_sender_payload_i3_446_447_set.GSR = "DISABLED";
    FD1S3BX lcd_sender_payload_i1_438_439_set (.D(n1073), .CK(VCC_net), 
            .PD(n272_generated_1), .Q(n769));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam lcd_sender_payload_i1_438_439_set.GSR = "DISABLED";
    CCU2D tmp_313_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tmp[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n927), 
          .S1(n45));   // z:/github/lattice/vivaz driver rev a/main.vhd(197[13:16])
    defparam tmp_313_add_4_1.INIT0 = 16'hF000;
    defparam tmp_313_add_4_1.INIT1 = 16'h0555;
    defparam tmp_313_add_4_1.INJECT1_0 = "NO";
    defparam tmp_313_add_4_1.INJECT1_1 = "NO";
    FD1S1D i437 (.D(n1074), .CK(n272_generated_1), .CD(lcd_sender_payload_15__N_77), 
           .Q(n768));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam i437.GSR = "DISABLED";
    FD1S1D i429 (.D(n1074), .CK(lcd_reset_N_167), .CD(lcd_reset_N_170), 
           .Q(n760));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam i429.GSR = "DISABLED";
    CCU2D count_311_312_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n926), .S0(n30));   // z:/github/lattice/vivaz driver rev a/main.vhd(187[14:19])
    defparam count_311_312_add_4_7.INIT0 = 16'hfaaa;
    defparam count_311_312_add_4_7.INIT1 = 16'h0000;
    defparam count_311_312_add_4_7.INJECT1_0 = "NO";
    defparam count_311_312_add_4_7.INJECT1_1 = "NO";
    FD1P3AX tmp_313__i5 (.D(n40), .SP(clk133_enable_9), .CK(clk133), .Q(tmp[5])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(197[13:16])
    defparam tmp_313__i5.GSR = "DISABLED";
    FD1P3AX tmp_313__i4 (.D(n41), .SP(clk133_enable_9), .CK(clk133), .Q(tmp[4])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(197[13:16])
    defparam tmp_313__i4.GSR = "DISABLED";
    FD1P3AX tmp_313__i3 (.D(n42), .SP(clk133_enable_9), .CK(clk133), .Q(tmp[3])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(197[13:16])
    defparam tmp_313__i3.GSR = "DISABLED";
    FD1P3AX tmp_313__i2 (.D(n43), .SP(clk133_enable_9), .CK(clk133), .Q(tmp[2])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(197[13:16])
    defparam tmp_313__i2.GSR = "DISABLED";
    FD1P3AX tmp_313__i1 (.D(n44), .SP(clk133_enable_9), .CK(clk133), .Q(tmp[1])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(197[13:16])
    defparam tmp_313__i1.GSR = "DISABLED";
    FD1S3IX count_311_312__i0 (.D(n35), .CK(clk133), .CD(clk133_enable_8), 
            .Q(n6)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(187[14:19])
    defparam count_311_312__i0.GSR = "DISABLED";
    OB leds_pad_2 (.I(n1057), .O(leds[2]));   // z:/github/lattice/vivaz driver rev a/main.vhd(18[3:7])
    OB lcd_te_pad (.I(lcd_te_c), .O(lcd_te));   // z:/github/lattice/vivaz driver rev a/main.vhd(17[3:9])
    OB leds_pad_3 (.I(n1059), .O(leds[3]));   // z:/github/lattice/vivaz driver rev a/main.vhd(18[3:7])
    FD1S3BX FSM_lcd_arbiter_i3_474_475_set (.D(n1073), .CK(VCC_net), .PD(n272_generated_9), 
            .Q(n805));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam FSM_lcd_arbiter_i3_474_475_set.GSR = "DISABLED";
    FD1S1D i441 (.D(n1074), .CK(n272_generated_2), .CD(lcd_sender_payload_15__N_74), 
           .Q(n772));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam i441.GSR = "DISABLED";
    FD1S1D i445 (.D(n1074), .CK(n272_generated_3), .CD(lcd_sender_payload_15__N_71), 
           .Q(n776));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam i445.GSR = "DISABLED";
    FD1S1D i449 (.D(n1074), .CK(n272_generated_4), .CD(lcd_sender_payload_15__N_68), 
           .Q(n780));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam i449.GSR = "DISABLED";
    FD1S1D i453 (.D(n1074), .CK(n272_generated_5), .CD(lcd_sender_payload_15__N_65), 
           .Q(n784));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam i453.GSR = "DISABLED";
    FD1S1A i457 (.D(n1074), .CK(lcd_sender_payload_15__N_2[6]), .Q(n788));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam i457.GSR = "ENABLED";
    FD1S1D i461 (.D(n1074), .CK(n272_generated_6), .CD(lcd_sender_payload_15__N_59), 
           .Q(n792));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam i461.GSR = "DISABLED";
    FD1S1D i465 (.D(n1074), .CK(n272_generated_7), .CD(FSM_lcd_arbiter_3__N_97), 
           .Q(n796));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam i465.GSR = "DISABLED";
    CCU2D tmp_313_add_4_3 (.A0(tmp[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tmp[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n927), 
          .COUT(n928), .S0(n44), .S1(n43));   // z:/github/lattice/vivaz driver rev a/main.vhd(197[13:16])
    defparam tmp_313_add_4_3.INIT0 = 16'hfaaa;
    defparam tmp_313_add_4_3.INIT1 = 16'hfaaa;
    defparam tmp_313_add_4_3.INJECT1_0 = "NO";
    defparam tmp_313_add_4_3.INJECT1_1 = "NO";
    FD1S1D i469 (.D(n1074), .CK(n272_generated_8), .CD(FSM_lcd_arbiter_3__N_94), 
           .Q(n800));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam i469.GSR = "DISABLED";
    FD1S1D i473 (.D(n1074), .CK(n272_generated_9), .CD(FSM_lcd_arbiter_3__N_91), 
           .Q(n804));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam i473.GSR = "DISABLED";
    FD1P3AX reset_startup_119 (.D(lcd_te_N_172), .SP(clk133_enable_8), .CK(clk133), 
            .Q(lcd_te_c));   // z:/github/lattice/vivaz driver rev a/main.vhd(185[3] 202[10])
    defparam reset_startup_119.GSR = "DISABLED";
    GSR GSR_INST (.GSR(lcd_sender_payload_15__N_2[6]));
    OB lcd_bus_pad_14 (.I(GND_net), .O(lcd_bus[14]));   // z:/github/lattice/vivaz driver rev a/main.vhd(13[3:10])
    OB lcd_reset_pad (.I(n1058), .O(lcd_reset));   // z:/github/lattice/vivaz driver rev a/main.vhd(16[3:12])
    OB lcd_wr_pad (.I(GND_net), .O(lcd_wr));   // z:/github/lattice/vivaz driver rev a/main.vhd(15[3:9])
    OB lcd_rs_pad (.I(GND_net), .O(lcd_rs));   // z:/github/lattice/vivaz driver rev a/main.vhd(14[3:9])
    OB lcd_bus_pad_0 (.I(GND_net), .O(lcd_bus[0]));   // z:/github/lattice/vivaz driver rev a/main.vhd(13[3:10])
    FD1S3IX count_311_312__i5 (.D(n30), .CK(clk133), .CD(clk133_enable_8), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(187[14:19])
    defparam count_311_312__i5.GSR = "DISABLED";
    FD1S3IX count_311_312__i4 (.D(n31), .CK(clk133), .CD(clk133_enable_8), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(187[14:19])
    defparam count_311_312__i4.GSR = "DISABLED";
    OB lcd_bus_pad_1 (.I(GND_net), .O(lcd_bus[1]));   // z:/github/lattice/vivaz driver rev a/main.vhd(13[3:10])
    FD1S3IX count_311_312__i3 (.D(n32), .CK(clk133), .CD(clk133_enable_8), 
            .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(187[14:19])
    defparam count_311_312__i3.GSR = "DISABLED";
    FD1S3IX count_311_312__i2 (.D(n33), .CK(clk133), .CD(clk133_enable_8), 
            .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(187[14:19])
    defparam count_311_312__i2.GSR = "DISABLED";
    OB leds_pad_5 (.I(n1068), .O(leds[5]));   // z:/github/lattice/vivaz driver rev a/main.vhd(18[3:7])
    CCU2D tmp_313_add_4_7 (.A0(tmp[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tmp[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n929), 
          .COUT(n930), .S0(n40), .S1(n39));   // z:/github/lattice/vivaz driver rev a/main.vhd(197[13:16])
    defparam tmp_313_add_4_7.INIT0 = 16'hfaaa;
    defparam tmp_313_add_4_7.INIT1 = 16'hfaaa;
    defparam tmp_313_add_4_7.INJECT1_0 = "NO";
    defparam tmp_313_add_4_7.INJECT1_1 = "NO";
    OB leds_pad_6 (.I(n1067), .O(leds[6]));   // z:/github/lattice/vivaz driver rev a/main.vhd(18[3:7])
    OB lcd_bus_pad_2 (.I(GND_net), .O(lcd_bus[2]));   // z:/github/lattice/vivaz driver rev a/main.vhd(13[3:10])
    FD1P3AX tmp_313__i0 (.D(n45), .SP(clk133_enable_9), .CK(clk133), .Q(tmp[0])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(197[13:16])
    defparam tmp_313__i0.GSR = "DISABLED";
    OB lcd_bus_pad_3 (.I(GND_net), .O(lcd_bus[3]));   // z:/github/lattice/vivaz driver rev a/main.vhd(13[3:10])
    FD1S3IX count_311_312__i1 (.D(n34), .CK(clk133), .CD(clk133_enable_8), 
            .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(187[14:19])
    defparam count_311_312__i1.GSR = "DISABLED";
    OB lcd_bus_pad_4 (.I(GND_net), .O(lcd_bus[4]));   // z:/github/lattice/vivaz driver rev a/main.vhd(13[3:10])
    OB lcd_bus_pad_5 (.I(GND_net), .O(lcd_bus[5]));   // z:/github/lattice/vivaz driver rev a/main.vhd(13[3:10])
    OB lcd_bus_pad_6 (.I(GND_net), .O(lcd_bus[6]));   // z:/github/lattice/vivaz driver rev a/main.vhd(13[3:10])
    FD1S3BX FSM_lcd_arbiter_i2_470_471_set (.D(n1073), .CK(VCC_net), .PD(n272_generated_8), 
            .Q(n801));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam FSM_lcd_arbiter_i2_470_471_set.GSR = "DISABLED";
    OB lcd_bus_pad_7 (.I(GND_net), .O(lcd_bus[7]));   // z:/github/lattice/vivaz driver rev a/main.vhd(13[3:10])
    OB lcd_bus_pad_8 (.I(GND_net), .O(lcd_bus[8]));   // z:/github/lattice/vivaz driver rev a/main.vhd(13[3:10])
    OB lcd_bus_pad_9 (.I(GND_net), .O(lcd_bus[9]));   // z:/github/lattice/vivaz driver rev a/main.vhd(13[3:10])
    OB lcd_bus_pad_13 (.I(GND_net), .O(lcd_bus[13]));   // z:/github/lattice/vivaz driver rev a/main.vhd(13[3:10])
    OB lcd_bus_pad_15 (.I(GND_net), .O(lcd_bus[15]));   // z:/github/lattice/vivaz driver rev a/main.vhd(13[3:10])
    OB lcd_bus_pad_10 (.I(GND_net), .O(lcd_bus[10]));   // z:/github/lattice/vivaz driver rev a/main.vhd(13[3:10])
    OB lcd_bus_pad_11 (.I(GND_net), .O(lcd_bus[11]));   // z:/github/lattice/vivaz driver rev a/main.vhd(13[3:10])
    CCU2D tmp_313_add_4_9 (.A0(tmp[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n930), 
          .S0(n38));   // z:/github/lattice/vivaz driver rev a/main.vhd(197[13:16])
    defparam tmp_313_add_4_9.INIT0 = 16'hfaaa;
    defparam tmp_313_add_4_9.INIT1 = 16'h0000;
    defparam tmp_313_add_4_9.INJECT1_0 = "NO";
    defparam tmp_313_add_4_9.INJECT1_1 = "NO";
    OB lcd_bus_pad_12 (.I(GND_net), .O(lcd_bus[12]));   // z:/github/lattice/vivaz driver rev a/main.vhd(13[3:10])
    FD1S3BX FSM_lcd_arbiter_i1_466_467_set (.D(n1073), .CK(VCC_net), .PD(n272_generated_7), 
            .Q(n797));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam FSM_lcd_arbiter_i1_466_467_set.GSR = "DISABLED";
    FD1S3BX lcd_sender_payload_i4_450_451_set (.D(n1073), .CK(VCC_net), 
            .PD(n272_generated_4), .Q(n781));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam lcd_sender_payload_i4_450_451_set.GSR = "DISABLED";
    LUT4 FSM_lcd_arbiter_3__N_82_1__I_0_1_lut_4_lut_4_lut (.A(n1061), .B(n1060), 
         .C(n1062), .D(n1063), .Z(FSM_lcd_arbiter_3__N_97)) /* synthesis lut_function=(A (C+(D))+!A (B (C+!(D))+!B !(D))) */ ;
    defparam FSM_lcd_arbiter_3__N_82_1__I_0_1_lut_4_lut_4_lut.init = 16'heaf5;
    LUT4 i524_1_lut_3_lut_4_lut (.A(n1061), .B(n1060), .C(n1062), .D(n1063), 
         .Z(FSM_lcd_arbiter_3__N_82[0])) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (D)))) */ ;
    defparam i524_1_lut_3_lut_4_lut.init = 16'h001f;
    FD1S3BX lcd_sender_payload_i7_462_463_set (.D(n1073), .CK(VCC_net), 
            .PD(n272_generated_6), .Q(n793));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam lcd_sender_payload_i7_462_463_set.GSR = "DISABLED";
    FD1S3BX FSM_lcd_arbiter_i0_434_435_set (.D(n1073), .CK(VCC_net), .PD(FSM_lcd_arbiter_3__N_82[0]), 
            .Q(n765));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam FSM_lcd_arbiter_i0_434_435_set.GSR = "DISABLED";
    LUT4 FSM_lcd_arbiter_3__I_0_164_Mux_1_i15_4_lut_rep_18_4_lut (.A(n1061), 
         .B(n1060), .C(n1062), .D(n1063), .Z(n272_generated_7)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+!(D))+!B !(D)))) */ ;
    defparam FSM_lcd_arbiter_3__I_0_164_Mux_1_i15_4_lut_rep_18_4_lut.init = 16'h150a;
    LUT4 i523_3_lut_rep_17_4_lut (.A(n1061), .B(n1060), .C(n1062), .D(n1063), 
         .Z(n1052)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i523_3_lut_rep_17_4_lut.init = 16'hffe0;
    LUT4 FSM_lcd_arbiter_1__bdd_4_lut (.A(n1061), .B(n1062), .C(n1063), 
         .D(n1058), .Z(n1042)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (D)+!B !(C)))) */ ;
    defparam FSM_lcd_arbiter_1__bdd_4_lut.init = 16'h6f01;
    LUT4 i1_4_lut (.A(lcd_te_c), .B(clk133_enable_8), .C(n987), .D(tmp[0]), 
         .Z(clk133_enable_9)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C+(D))+!B))) */ ;
    defparam i1_4_lut.init = 16'h080c;
    LUT4 FSM_lcd_arbiter_2__bdd_4_lut_rep_20 (.A(n1060), .B(n1063), .C(n1062), 
         .D(n1061), .Z(n272_generated_9)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A ((D)+!C))) */ ;
    defparam FSM_lcd_arbiter_2__bdd_4_lut_rep_20.init = 16'h0850;
    LUT4 FSM_lcd_arbiter_3__N_82_3__I_0_1_lut_4_lut (.A(n1060), .B(n1063), 
         .C(n1062), .D(n1061), .Z(FSM_lcd_arbiter_3__N_91)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A ((D)+!C)) */ ;
    defparam FSM_lcd_arbiter_3__N_82_3__I_0_1_lut_4_lut.init = 16'hf7af;
    LUT4 i519_3_lut_4_lut_4_lut (.A(n1067), .B(n703), .C(n1050), .D(n1062), 
         .Z(lcd_sender_payload_15__N_2[6])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (C (D)))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(115[14:44])
    defparam i519_3_lut_4_lut_4_lut.init = 16'h0777;
    LUT4 FSM_lcd_arbiter_0__bdd_4_lut (.A(n1063), .B(n1061), .C(n1062), 
         .D(n1060), .Z(n703)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B (C (D))+!B (C (D)+!C !(D))))) */ ;
    defparam FSM_lcd_arbiter_0__bdd_4_lut.init = 16'h0f7e;
    CCU2D tmp_313_add_4_5 (.A0(tmp[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tmp[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n928), 
          .COUT(n929), .S0(n42), .S1(n41));   // z:/github/lattice/vivaz driver rev a/main.vhd(197[13:16])
    defparam tmp_313_add_4_5.INIT0 = 16'hfaaa;
    defparam tmp_313_add_4_5.INIT1 = 16'hfaaa;
    defparam tmp_313_add_4_5.INJECT1_0 = "NO";
    defparam tmp_313_add_4_5.INJECT1_1 = "NO";
    LUT4 i679_2_lut_rep_21 (.A(n781), .B(n780), .Z(n1056)) /* synthesis lut_function=(!(A (B))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(115[14:44])
    defparam i679_2_lut_rep_21.init = 16'h7777;
    LUT4 i671_2_lut_rep_22 (.A(n773), .B(n772), .Z(n1057)) /* synthesis lut_function=(!(A (B))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(115[14:44])
    defparam i671_2_lut_rep_22.init = 16'h7777;
    LUT4 lcd_sender_payload_15__N_2_2__I_0_1_lut_2_lut_2_lut_3_lut (.A(n773), 
         .B(n772), .C(n703), .Z(lcd_sender_payload_15__N_74)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(115[14:44])
    defparam lcd_sender_payload_15__N_2_2__I_0_1_lut_2_lut_2_lut_3_lut.init = 16'h7f7f;
    LUT4 i508_2_lut_rep_13_2_lut_3_lut (.A(n773), .B(n772), .C(n703), 
         .Z(n272_generated_2)) /* synthesis lut_function=(A (B (C))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(115[14:44])
    defparam i508_2_lut_rep_13_2_lut_3_lut.init = 16'h8080;
    LUT4 i694_3_lut (.A(n987), .B(lcd_te_c), .C(tmp[0]), .Z(lcd_te_N_172)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i694_3_lut.init = 16'h0101;
    CCU2D count_311_312_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n925), .COUT(n926), .S0(n32), .S1(n31));   // z:/github/lattice/vivaz driver rev a/main.vhd(187[14:19])
    defparam count_311_312_add_4_5.INIT0 = 16'hfaaa;
    defparam count_311_312_add_4_5.INIT1 = 16'hfaaa;
    defparam count_311_312_add_4_5.INJECT1_0 = "NO";
    defparam count_311_312_add_4_5.INJECT1_1 = "NO";
    FD1S3BX lcd_sender_payload_i6_458_459_set (.D(n1073), .CK(VCC_net), 
            .PD(lcd_sender_payload_15__N_2[6]), .Q(n789));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam lcd_sender_payload_i6_458_459_set.GSR = "DISABLED";
    FD1S3BX lcd_sender_payload_i2_442_443_set (.D(n1073), .CK(VCC_net), 
            .PD(n272_generated_2), .Q(n773));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam lcd_sender_payload_i2_442_443_set.GSR = "DISABLED";
    LUT4 i6_4_lut (.A(tmp[4]), .B(n12), .C(tmp[6]), .D(tmp[3]), .Z(n987)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i486_2_lut_rep_23 (.A(n761), .B(n760), .Z(n1058)) /* synthesis lut_function=(A (B)) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam i486_2_lut_rep_23.init = 16'h8888;
    CCU2D count_311_312_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n924), .COUT(n925), .S0(n34), .S1(n33));   // z:/github/lattice/vivaz driver rev a/main.vhd(187[14:19])
    defparam count_311_312_add_4_3.INIT0 = 16'hfaaa;
    defparam count_311_312_add_4_3.INIT1 = 16'hfaaa;
    defparam count_311_312_add_4_3.INJECT1_0 = "NO";
    defparam count_311_312_add_4_3.INJECT1_1 = "NO";
    LUT4 i5_4_lut (.A(tmp[1]), .B(tmp[5]), .C(tmp[7]), .D(tmp[2]), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    FD1S1D i425 (.D(n1074), .CK(n272_generated_10), .CD(lcd_sender_payload_15__N_80), 
           .Q(n756));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam i425.GSR = "DISABLED";
    LUT4 i675_2_lut_rep_24 (.A(n777), .B(n776), .Z(n1059)) /* synthesis lut_function=(!(A (B))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(115[14:44])
    defparam i675_2_lut_rep_24.init = 16'h7777;
    LUT4 i529_2_lut_rep_25 (.A(n801), .B(n800), .Z(n1060)) /* synthesis lut_function=(A (B)) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam i529_2_lut_rep_25.init = 16'h8888;
    LUT4 i657_2_lut_rep_15_3_lut_4_lut (.A(n801), .B(n800), .C(n1061), 
         .D(n1063), .Z(n1050)) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam i657_2_lut_rep_15_3_lut_4_lut.init = 16'hf888;
    LUT4 lcd_sender_payload_15__N_2_4__I_0_1_lut_3_lut_4_lut_4_lut (.A(n1056), 
         .B(n703), .C(n1050), .D(n1062), .Z(lcd_sender_payload_15__N_68)) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(115[14:44])
    defparam lcd_sender_payload_15__N_2_4__I_0_1_lut_3_lut_4_lut_4_lut.init = 16'hf888;
    FD1S3BX lcd_sender_payload_i5_454_455_set (.D(n1073), .CK(VCC_net), 
            .PD(n272_generated_5), .Q(n785));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam lcd_sender_payload_i5_454_455_set.GSR = "DISABLED";
    LUT4 i510_3_lut_rep_9_4_lut_4_lut (.A(n1056), .B(n703), .C(n1050), 
         .D(n1062), .Z(n272_generated_4)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (C (D)))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(115[14:44])
    defparam i510_3_lut_rep_9_4_lut_4_lut.init = 16'h0777;
    LUT4 i533_2_lut_rep_26 (.A(n797), .B(n796), .Z(n1061)) /* synthesis lut_function=(A (B)) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam i533_2_lut_rep_26.init = 16'h8888;
    LUT4 i526_2_lut_rep_27 (.A(n805), .B(n804), .Z(n1062)) /* synthesis lut_function=(A (B)) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam i526_2_lut_rep_27.init = 16'h8888;
    OB leds_pad_4 (.I(n1056), .O(leds[4]));   // z:/github/lattice/vivaz driver rev a/main.vhd(18[3:7])
    LUT4 FSM_lcd_arbiter_1__bdd_2_lut_3_lut_4_lut (.A(n805), .B(n804), .C(n760), 
         .D(n761), .Z(n1041)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam FSM_lcd_arbiter_1__bdd_2_lut_3_lut_4_lut.init = 16'h7000;
    CCU2D count_311_312_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n6), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n924), .S1(n35));   // z:/github/lattice/vivaz driver rev a/main.vhd(187[14:19])
    defparam count_311_312_add_4_1.INIT0 = 16'hF000;
    defparam count_311_312_add_4_1.INIT1 = 16'h0555;
    defparam count_311_312_add_4_1.INJECT1_0 = "NO";
    defparam count_311_312_add_4_1.INJECT1_1 = "NO";
    LUT4 i514_2_lut_rep_28 (.A(n765), .B(n764), .Z(n1063)) /* synthesis lut_function=(A (B)) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam i514_2_lut_rep_28.init = 16'h8888;
    FD1S3BX lcd_sender_payload_i0_426_427_set (.D(n1073), .CK(VCC_net), 
            .PD(n272_generated_10), .Q(n757));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam lcd_sender_payload_i0_426_427_set.GSR = "DISABLED";
    LUT4 lcd_reset_N_167_I_0_1_lut (.A(lcd_reset_N_167), .Z(lcd_reset_N_170)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam lcd_reset_N_167_I_0_1_lut.init = 16'h5555;
    PFUMX i695 (.BLUT(n1042), .ALUT(n1041), .C0(n1060), .Z(lcd_reset_N_167));
    LUT4 i511_3_lut_rep_10_4_lut_4_lut (.A(n1065), .B(n703), .C(n1050), 
         .D(n1062), .Z(n272_generated_10)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (C (D)))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(115[14:44])
    defparam i511_3_lut_rep_10_4_lut_4_lut.init = 16'h0777;
    LUT4 i667_2_lut_rep_29 (.A(n769), .B(n768), .Z(n1064)) /* synthesis lut_function=(!(A (B))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(115[14:44])
    defparam i667_2_lut_rep_29.init = 16'h7777;
    LUT4 i2_4_lut (.A(count[5]), .B(count[3]), .C(count[4]), .D(n4), 
         .Z(clk133_enable_8)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'ha080;
    LUT4 lcd_sender_payload_15__N_2_1__I_0_1_lut_2_lut_2_lut_3_lut (.A(n769), 
         .B(n768), .C(n703), .Z(lcd_sender_payload_15__N_77)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(115[14:44])
    defparam lcd_sender_payload_15__N_2_1__I_0_1_lut_2_lut_2_lut_3_lut.init = 16'h7f7f;
    LUT4 i1_2_lut (.A(count[1]), .B(count[2]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    FD1S3BX lcd_reset_53_430_431_set (.D(n1073), .CK(VCC_net), .PD(lcd_reset_N_167), 
            .Q(n761));   // z:/github/lattice/vivaz driver rev a/main.vhd(119[3] 127[10])
    defparam lcd_reset_53_430_431_set.GSR = "DISABLED";
    LUT4 i487_2_lut_rep_14_2_lut_3_lut (.A(n769), .B(n768), .C(n703), 
         .Z(n272_generated_1)) /* synthesis lut_function=(A (B (C))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(115[14:44])
    defparam i487_2_lut_rep_14_2_lut_3_lut.init = 16'h8080;
    LUT4 i663_2_lut_rep_30 (.A(n757), .B(n756), .Z(n1065)) /* synthesis lut_function=(!(A (B))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(115[14:44])
    defparam i663_2_lut_rep_30.init = 16'h7777;
    LUT4 lcd_sender_payload_15__N_2_0__I_0_1_lut_3_lut_4_lut_4_lut (.A(n1065), 
         .B(n703), .C(n1050), .D(n1062), .Z(lcd_sender_payload_15__N_80)) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(115[14:44])
    defparam lcd_sender_payload_15__N_2_0__I_0_1_lut_3_lut_4_lut_4_lut.init = 16'hf888;
    LUT4 i691_2_lut_rep_31 (.A(n793), .B(n792), .Z(n1066)) /* synthesis lut_function=(!(A (B))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(115[14:44])
    defparam i691_2_lut_rep_31.init = 16'h7777;
    LUT4 lcd_sender_payload_15__N_2_7__I_0_1_lut_2_lut_2_lut_3_lut (.A(n793), 
         .B(n792), .C(n703), .Z(lcd_sender_payload_15__N_59)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(115[14:44])
    defparam lcd_sender_payload_15__N_2_7__I_0_1_lut_2_lut_2_lut_3_lut.init = 16'h7f7f;
    LUT4 i507_2_lut_rep_19_2_lut_3_lut (.A(n793), .B(n792), .C(n703), 
         .Z(n272_generated_6)) /* synthesis lut_function=(A (B (C))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(115[14:44])
    defparam i507_2_lut_rep_19_2_lut_3_lut.init = 16'h8080;
    LUT4 i502_3_lut_rep_16_4_lut (.A(n1063), .B(n1061), .C(n1060), .D(n1062), 
         .Z(n272_generated_8)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A ((D)+!C))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(144[5] 175[14])
    defparam i502_3_lut_rep_16_4_lut.init = 16'h0078;
    LUT4 i687_2_lut_rep_32 (.A(n789), .B(n788), .Z(n1067)) /* synthesis lut_function=(!(A (B))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(115[14:44])
    defparam i687_2_lut_rep_32.init = 16'h7777;
    LUT4 FSM_lcd_arbiter_3__N_82_2__I_0_1_lut_3_lut_4_lut (.A(n1063), .B(n1061), 
         .C(n1060), .D(n1062), .Z(FSM_lcd_arbiter_3__N_94)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A ((D)+!C)) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(144[5] 175[14])
    defparam FSM_lcd_arbiter_3__N_82_2__I_0_1_lut_3_lut_4_lut.init = 16'hff87;
    LUT4 i683_2_lut_rep_33 (.A(n785), .B(n784), .Z(n1068)) /* synthesis lut_function=(!(A (B))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(115[14:44])
    defparam i683_2_lut_rep_33.init = 16'h7777;
    LUT4 lcd_sender_payload_15__N_2_5__I_0_1_lut_2_lut_2_lut_3_lut (.A(n785), 
         .B(n784), .C(n703), .Z(lcd_sender_payload_15__N_65)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(115[14:44])
    defparam lcd_sender_payload_15__N_2_5__I_0_1_lut_2_lut_2_lut_3_lut.init = 16'h7f7f;
    LUT4 i506_2_lut_rep_12_2_lut_3_lut (.A(n785), .B(n784), .C(n703), 
         .Z(n272_generated_5)) /* synthesis lut_function=(A (B (C))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(115[14:44])
    defparam i506_2_lut_rep_12_2_lut_3_lut.init = 16'h8080;
    LUT4 lcd_sender_payload_15__N_2_3__I_0_1_lut_3_lut_4_lut_4_lut (.A(n1059), 
         .B(n703), .C(n1050), .D(n1062), .Z(lcd_sender_payload_15__N_71)) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;   // z:/github/lattice/vivaz driver rev a/main.vhd(115[14:44])
    defparam lcd_sender_payload_15__N_2_3__I_0_1_lut_3_lut_4_lut_4_lut.init = 16'hf888;
    VLO i1 (.Z(GND_net));
    LUT4 m1_lut (.Z(n1074)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 m0_lut (.Z(n1073)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

