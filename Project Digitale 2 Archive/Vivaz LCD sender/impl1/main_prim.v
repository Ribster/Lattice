// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.7.1.502
// Netlist written on Wed May 18 18:49:35 2016
//
// Verilog Description of module main
//

module main (leds, lcd_LCDBus, lcd_wr, lcd_reset, lcd_rs, synch_rst);   // z:/github/lattice/vivaz lcd sender/main.vhd(9[8:12])
    input [7:0]leds;   // z:/github/lattice/vivaz lcd sender/main.vhd(12[3:7])
    output [15:0]lcd_LCDBus;   // z:/github/lattice/vivaz lcd sender/main.vhd(13[3:13])
    output lcd_wr /* synthesis .original_dir=IN_OUT */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(14[3:9])
    input lcd_reset /* synthesis .original_dir=IN_OUT */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(15[3:12])
    output lcd_rs /* synthesis .original_dir=IN_OUT */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(16[3:9])
    output synch_rst /* synthesis .original_dir=IN_OUT */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(17[3:12])
    
    wire clk133 /* synthesis SET_AS_NETWORK=clk133, is_clock=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(22[9:15])
    
    wire GND_net, VCC_net, lcd_LCDBus_c_15, lcd_LCDBus_c_14, lcd_LCDBus_c_13, 
        lcd_LCDBus_c_12, lcd_LCDBus_c_11, lcd_LCDBus_c_10, lcd_LCDBus_c_9, 
        lcd_LCDBus_c_8, lcd_LCDBus_c_7, lcd_LCDBus_c_6, lcd_LCDBus_c_5, 
        lcd_LCDBus_c_4, lcd_LCDBus_c_3, lcd_LCDBus_c_2, lcd_LCDBus_c_1, 
        lcd_LCDBus_c_0, lcd_wr_c, lcd_rs_c, synch_rst_c, clk133_enable_3, 
        n13, n779, busy, data1command0;
    wire [15:0]payload;   // z:/github/lattice/vivaz lcd sender/main.vhd(42[9:16])
    
    wire n79, n78, n77, n76, n75, n74, n73, n72, n71, n70;
    wire [23:0]count_i;   // z:/github/lattice/vivaz lcd sender/main.vhd(57[11:18])
    
    wire n802, n38, n39, n40, n41, n4, clk133_enable_21, n42, 
        n43, n44, n45, clk133_enable_38, n772, n769, data1command0_N_180;
    wire [23:0]count;   // z:/github/lattice/vivaz lcd sender/main.vhd(78[11:16])
    wire [7:0]tmp;   // z:/github/lattice/vivaz lcd sender/main.vhd(79[11:14])
    
    wire n624, synch_rst_N_176, synch_rst_N_174, n775, n777, n790, 
        n6, n789, n788, n12, n11, n796, n12_adj_1, n787, n786, 
        n35, n34, n33, n768, n32, n31, n30;
    wire [2:0]PS_vivaz_state_2__N_166;
    
    wire n771, n770, clk133_enable_44, n469, n470, n471, n472, 
        n473, clk133_enable_20, n475, n85, n774, n84, n83, n82, 
        n81, n80, n14, n62, n63, n64, n65, n66, n67, n68, 
        n69, n70_adj_2, n71_adj_3, n72_adj_4, n73_adj_5, n74_adj_6, 
        n75_adj_7, n778, n773, n776, n821, n785, n784, n783, 
        n782, n781, n780, n804;
    
    LUT4 synch_rst_I_0_1_lut (.A(synch_rst_c), .Z(synch_rst_N_176)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(86[9:28])
    defparam synch_rst_I_0_1_lut.init = 16'h5555;
    FD1S3AX data1command0_64 (.D(data1command0_N_180), .CK(clk133), .Q(data1command0));   // z:/github/lattice/vivaz lcd sender/main.vhd(59[3] 72[10])
    defparam data1command0_64.GSR = "DISABLED";
    CCU2D count_i_162_163_add_4_5 (.A0(n11), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_i[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n773), .COUT(n774), .S0(n72_adj_4), .S1(n71_adj_3));   // z:/github/lattice/vivaz lcd sender/main.vhd(61[16:23])
    defparam count_i_162_163_add_4_5.INIT0 = 16'hfaaa;
    defparam count_i_162_163_add_4_5.INIT1 = 16'hfaaa;
    defparam count_i_162_163_add_4_5.INJECT1_0 = "NO";
    defparam count_i_162_163_add_4_5.INJECT1_1 = "NO";
    FD1S3JX PS_vivaz_state_FSM_i1 (.D(n624), .CK(clk133), .PD(n469), .Q(n475));   // z:/github/lattice/vivaz lcd sender/main.vhd(108[4] 137[13])
    defparam PS_vivaz_state_FSM_i1.GSR = "ENABLED";
    CCU2D count_i_162_163_add_4_9 (.A0(count_i[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_i[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n775), .COUT(n776), .S0(n68), .S1(n67));   // z:/github/lattice/vivaz lcd sender/main.vhd(61[16:23])
    defparam count_i_162_163_add_4_9.INIT0 = 16'hfaaa;
    defparam count_i_162_163_add_4_9.INIT1 = 16'hfaaa;
    defparam count_i_162_163_add_4_9.INJECT1_0 = "NO";
    defparam count_i_162_163_add_4_9.INJECT1_1 = "NO";
    CCU2D tmp_167_add_4_3 (.A0(tmp[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tmp[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n768), 
          .COUT(n769), .S0(n44), .S1(n43));   // z:/github/lattice/vivaz lcd sender/main.vhd(97[13:16])
    defparam tmp_167_add_4_3.INIT0 = 16'hfaaa;
    defparam tmp_167_add_4_3.INIT1 = 16'hfaaa;
    defparam tmp_167_add_4_3.INJECT1_0 = "NO";
    defparam tmp_167_add_4_3.INJECT1_1 = "NO";
    OB lcd_LCDBus_pad_11 (.I(lcd_LCDBus_c_11), .O(lcd_LCDBus[11]));   // z:/github/lattice/vivaz lcd sender/main.vhd(13[3:13])
    OSCH inst_clk (.STDBY(GND_net), .OSC(clk133)) /* synthesis syn_instantiated=1 */ ;
    defparam inst_clk.NOM_FREQ = "20.46";
    FD1P3AX lcd_rs_71 (.D(data1command0), .SP(clk133_enable_21), .CK(clk133), 
            .Q(lcd_rs_c));   // z:/github/lattice/vivaz lcd sender/main.vhd(107[3] 138[10])
    defparam lcd_rs_71.GSR = "ENABLED";
    FD1S3IX count_i_162_163__i0 (.D(n75_adj_7), .CK(clk133), .CD(clk133_enable_38), 
            .Q(n14)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(61[16:23])
    defparam count_i_162_163__i0.GSR = "DISABLED";
    CCU2D tmp_167_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tmp[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n768), 
          .S1(n45));   // z:/github/lattice/vivaz lcd sender/main.vhd(97[13:16])
    defparam tmp_167_add_4_1.INIT0 = 16'hF000;
    defparam tmp_167_add_4_1.INIT1 = 16'h0555;
    defparam tmp_167_add_4_1.INJECT1_0 = "NO";
    defparam tmp_167_add_4_1.INJECT1_1 = "NO";
    FD1P3AX tmp_167__i0 (.D(n45), .SP(clk133_enable_44), .CK(clk133), 
            .Q(tmp[0])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(97[13:16])
    defparam tmp_167__i0.GSR = "DISABLED";
    LUT4 i6_4_lut (.A(tmp[6]), .B(n12_adj_1), .C(tmp[7]), .D(tmp[2]), 
         .Z(n804)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    OB lcd_LCDBus_pad_12 (.I(lcd_LCDBus_c_12), .O(lcd_LCDBus[12]));   // z:/github/lattice/vivaz lcd sender/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_13 (.I(lcd_LCDBus_c_13), .O(lcd_LCDBus[13]));   // z:/github/lattice/vivaz lcd sender/main.vhd(13[3:13])
    CCU2D count_i_162_163_add_4_13 (.A0(count_i[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_i[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n777), .COUT(n778), .S0(n64), .S1(n63));   // z:/github/lattice/vivaz lcd sender/main.vhd(61[16:23])
    defparam count_i_162_163_add_4_13.INIT0 = 16'hfaaa;
    defparam count_i_162_163_add_4_13.INIT1 = 16'hfaaa;
    defparam count_i_162_163_add_4_13.INJECT1_0 = "NO";
    defparam count_i_162_163_add_4_13.INJECT1_1 = "NO";
    OB lcd_LCDBus_pad_14 (.I(lcd_LCDBus_c_14), .O(lcd_LCDBus[14]));   // z:/github/lattice/vivaz lcd sender/main.vhd(13[3:13])
    LUT4 i385_3_lut (.A(n804), .B(synch_rst_c), .C(tmp[0]), .Z(synch_rst_N_174)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i385_3_lut.init = 16'h0101;
    LUT4 i5_4_lut (.A(tmp[1]), .B(tmp[3]), .C(tmp[4]), .D(tmp[5]), .Z(n12_adj_1)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    FD1S3AX lcd_wr_69 (.D(n802), .CK(clk133), .Q(lcd_wr_c));   // z:/github/lattice/vivaz lcd sender/main.vhd(107[3] 138[10])
    defparam lcd_wr_69.GSR = "ENABLED";
    FD1P3AX reset_startup_66 (.D(synch_rst_N_174), .SP(clk133_enable_3), 
            .CK(clk133), .Q(synch_rst_c));   // z:/github/lattice/vivaz lcd sender/main.vhd(81[3] 102[10])
    defparam reset_startup_66.GSR = "DISABLED";
    CCU2D tmp_167_add_4_9 (.A0(tmp[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n771), 
          .S0(n38));   // z:/github/lattice/vivaz lcd sender/main.vhd(97[13:16])
    defparam tmp_167_add_4_9.INIT0 = 16'hfaaa;
    defparam tmp_167_add_4_9.INIT1 = 16'h0000;
    defparam tmp_167_add_4_9.INJECT1_0 = "NO";
    defparam tmp_167_add_4_9.INJECT1_1 = "NO";
    CCU2D tmp_167_add_4_7 (.A0(tmp[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tmp[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n770), 
          .COUT(n771), .S0(n40), .S1(n39));   // z:/github/lattice/vivaz lcd sender/main.vhd(97[13:16])
    defparam tmp_167_add_4_7.INIT0 = 16'hfaaa;
    defparam tmp_167_add_4_7.INIT1 = 16'hfaaa;
    defparam tmp_167_add_4_7.INJECT1_0 = "NO";
    defparam tmp_167_add_4_7.INJECT1_1 = "NO";
    CCU2D count_165_166_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n789), .S0(n30));   // z:/github/lattice/vivaz lcd sender/main.vhd(83[14:19])
    defparam count_165_166_add_4_7.INIT0 = 16'hfaaa;
    defparam count_165_166_add_4_7.INIT1 = 16'h0000;
    defparam count_165_166_add_4_7.INJECT1_0 = "NO";
    defparam count_165_166_add_4_7.INJECT1_1 = "NO";
    FD1P3AX payload_164__i0 (.D(n85), .SP(clk133_enable_38), .CK(clk133), 
            .Q(payload[0])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164__i0.GSR = "DISABLED";
    CCU2D count_165_166_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n788), .COUT(n789), .S0(n32), .S1(n31));   // z:/github/lattice/vivaz lcd sender/main.vhd(83[14:19])
    defparam count_165_166_add_4_5.INIT0 = 16'hfaaa;
    defparam count_165_166_add_4_5.INIT1 = 16'hfaaa;
    defparam count_165_166_add_4_5.INJECT1_0 = "NO";
    defparam count_165_166_add_4_5.INJECT1_1 = "NO";
    LUT4 m1_lut (.Z(n821)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    FD1P3AX lcd_LCDBus_i0_i16 (.D(payload[15]), .SP(clk133_enable_20), .CK(clk133), 
            .Q(lcd_LCDBus_c_15));   // z:/github/lattice/vivaz lcd sender/main.vhd(107[3] 138[10])
    defparam lcd_LCDBus_i0_i16.GSR = "ENABLED";
    CCU2D count_165_166_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n787), .COUT(n788), .S0(n34), .S1(n33));   // z:/github/lattice/vivaz lcd sender/main.vhd(83[14:19])
    defparam count_165_166_add_4_3.INIT0 = 16'hfaaa;
    defparam count_165_166_add_4_3.INIT1 = 16'hfaaa;
    defparam count_165_166_add_4_3.INJECT1_0 = "NO";
    defparam count_165_166_add_4_3.INJECT1_1 = "NO";
    CCU2D tmp_167_add_4_5 (.A0(tmp[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tmp[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n769), 
          .COUT(n770), .S0(n42), .S1(n41));   // z:/github/lattice/vivaz lcd sender/main.vhd(97[13:16])
    defparam tmp_167_add_4_5.INIT0 = 16'hfaaa;
    defparam tmp_167_add_4_5.INIT1 = 16'hfaaa;
    defparam tmp_167_add_4_5.INJECT1_0 = "NO";
    defparam tmp_167_add_4_5.INJECT1_1 = "NO";
    CCU2D count_i_162_163_add_4_3 (.A0(n13), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n12), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n772), .COUT(n773), .S0(n74_adj_6), .S1(n73_adj_5));   // z:/github/lattice/vivaz lcd sender/main.vhd(61[16:23])
    defparam count_i_162_163_add_4_3.INIT0 = 16'hfaaa;
    defparam count_i_162_163_add_4_3.INIT1 = 16'hfaaa;
    defparam count_i_162_163_add_4_3.INJECT1_0 = "NO";
    defparam count_i_162_163_add_4_3.INJECT1_1 = "NO";
    FD1P3AX lcd_LCDBus_i0_i15 (.D(payload[14]), .SP(clk133_enable_20), .CK(clk133), 
            .Q(lcd_LCDBus_c_14));   // z:/github/lattice/vivaz lcd sender/main.vhd(107[3] 138[10])
    defparam lcd_LCDBus_i0_i15.GSR = "ENABLED";
    FD1P3AX lcd_LCDBus_i0_i14 (.D(payload[13]), .SP(clk133_enable_20), .CK(clk133), 
            .Q(lcd_LCDBus_c_13));   // z:/github/lattice/vivaz lcd sender/main.vhd(107[3] 138[10])
    defparam lcd_LCDBus_i0_i14.GSR = "ENABLED";
    FD1P3AX lcd_LCDBus_i0_i13 (.D(payload[12]), .SP(clk133_enable_20), .CK(clk133), 
            .Q(lcd_LCDBus_c_12));   // z:/github/lattice/vivaz lcd sender/main.vhd(107[3] 138[10])
    defparam lcd_LCDBus_i0_i13.GSR = "ENABLED";
    FD1P3AX lcd_LCDBus_i0_i12 (.D(payload[11]), .SP(clk133_enable_20), .CK(clk133), 
            .Q(lcd_LCDBus_c_11));   // z:/github/lattice/vivaz lcd sender/main.vhd(107[3] 138[10])
    defparam lcd_LCDBus_i0_i12.GSR = "ENABLED";
    FD1P3AX lcd_LCDBus_i0_i11 (.D(payload[10]), .SP(clk133_enable_20), .CK(clk133), 
            .Q(lcd_LCDBus_c_10));   // z:/github/lattice/vivaz lcd sender/main.vhd(107[3] 138[10])
    defparam lcd_LCDBus_i0_i11.GSR = "ENABLED";
    FD1P3AX lcd_LCDBus_i0_i10 (.D(payload[9]), .SP(clk133_enable_20), .CK(clk133), 
            .Q(lcd_LCDBus_c_9));   // z:/github/lattice/vivaz lcd sender/main.vhd(107[3] 138[10])
    defparam lcd_LCDBus_i0_i10.GSR = "ENABLED";
    FD1P3AX lcd_LCDBus_i0_i9 (.D(payload[8]), .SP(clk133_enable_20), .CK(clk133), 
            .Q(lcd_LCDBus_c_8));   // z:/github/lattice/vivaz lcd sender/main.vhd(107[3] 138[10])
    defparam lcd_LCDBus_i0_i9.GSR = "ENABLED";
    FD1P3AX lcd_LCDBus_i0_i8 (.D(payload[7]), .SP(clk133_enable_20), .CK(clk133), 
            .Q(lcd_LCDBus_c_7));   // z:/github/lattice/vivaz lcd sender/main.vhd(107[3] 138[10])
    defparam lcd_LCDBus_i0_i8.GSR = "ENABLED";
    FD1P3AX lcd_LCDBus_i0_i7 (.D(payload[6]), .SP(clk133_enable_20), .CK(clk133), 
            .Q(lcd_LCDBus_c_6));   // z:/github/lattice/vivaz lcd sender/main.vhd(107[3] 138[10])
    defparam lcd_LCDBus_i0_i7.GSR = "ENABLED";
    FD1P3AX lcd_LCDBus_i0_i6 (.D(payload[5]), .SP(clk133_enable_20), .CK(clk133), 
            .Q(lcd_LCDBus_c_5));   // z:/github/lattice/vivaz lcd sender/main.vhd(107[3] 138[10])
    defparam lcd_LCDBus_i0_i6.GSR = "ENABLED";
    FD1P3AX lcd_LCDBus_i0_i5 (.D(payload[4]), .SP(clk133_enable_20), .CK(clk133), 
            .Q(lcd_LCDBus_c_4));   // z:/github/lattice/vivaz lcd sender/main.vhd(107[3] 138[10])
    defparam lcd_LCDBus_i0_i5.GSR = "ENABLED";
    FD1P3AX lcd_LCDBus_i0_i4 (.D(payload[3]), .SP(clk133_enable_20), .CK(clk133), 
            .Q(lcd_LCDBus_c_3));   // z:/github/lattice/vivaz lcd sender/main.vhd(107[3] 138[10])
    defparam lcd_LCDBus_i0_i4.GSR = "ENABLED";
    FD1P3AX lcd_LCDBus_i0_i3 (.D(payload[2]), .SP(clk133_enable_20), .CK(clk133), 
            .Q(lcd_LCDBus_c_2));   // z:/github/lattice/vivaz lcd sender/main.vhd(107[3] 138[10])
    defparam lcd_LCDBus_i0_i3.GSR = "ENABLED";
    FD1P3AX lcd_LCDBus_i0_i2 (.D(payload[1]), .SP(clk133_enable_20), .CK(clk133), 
            .Q(lcd_LCDBus_c_1));   // z:/github/lattice/vivaz lcd sender/main.vhd(107[3] 138[10])
    defparam lcd_LCDBus_i0_i2.GSR = "ENABLED";
    FD1S3IX count_165_166__i0 (.D(n35), .CK(clk133), .CD(clk133_enable_3), 
            .Q(n6)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(83[14:19])
    defparam count_165_166__i0.GSR = "DISABLED";
    FD1S3IX count_165_166__i5 (.D(n30), .CK(clk133), .CD(clk133_enable_3), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(83[14:19])
    defparam count_165_166__i5.GSR = "DISABLED";
    FD1S3IX count_165_166__i4 (.D(n31), .CK(clk133), .CD(clk133_enable_3), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(83[14:19])
    defparam count_165_166__i4.GSR = "DISABLED";
    FD1P3AX lcd_LCDBus_i0_i1 (.D(payload[0]), .SP(clk133_enable_20), .CK(clk133), 
            .Q(lcd_LCDBus_c_0));   // z:/github/lattice/vivaz lcd sender/main.vhd(107[3] 138[10])
    defparam lcd_LCDBus_i0_i1.GSR = "ENABLED";
    FD1S3IX count_165_166__i3 (.D(n32), .CK(clk133), .CD(clk133_enable_3), 
            .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(83[14:19])
    defparam count_165_166__i3.GSR = "DISABLED";
    CCU2D count_165_166_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n6), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n787), .S1(n35));   // z:/github/lattice/vivaz lcd sender/main.vhd(83[14:19])
    defparam count_165_166_add_4_1.INIT0 = 16'hF000;
    defparam count_165_166_add_4_1.INIT1 = 16'h0555;
    defparam count_165_166_add_4_1.INJECT1_0 = "NO";
    defparam count_165_166_add_4_1.INJECT1_1 = "NO";
    FD1S3IX count_165_166__i2 (.D(n33), .CK(clk133), .CD(clk133_enable_3), 
            .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(83[14:19])
    defparam count_165_166__i2.GSR = "DISABLED";
    FD1S3IX count_165_166__i1 (.D(n34), .CK(clk133), .CD(clk133_enable_3), 
            .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(83[14:19])
    defparam count_165_166__i1.GSR = "DISABLED";
    FD1P3IX busy_70 (.D(n821), .SP(clk133_enable_21), .CD(n469), .CK(clk133), 
            .Q(busy));   // z:/github/lattice/vivaz lcd sender/main.vhd(107[3] 138[10])
    defparam busy_70.GSR = "ENABLED";
    FD1P3IX go_62 (.D(n821), .SP(clk133_enable_38), .CD(busy), .CK(clk133), 
            .Q(PS_vivaz_state_2__N_166[1]));   // z:/github/lattice/vivaz lcd sender/main.vhd(59[3] 72[10])
    defparam go_62.GSR = "DISABLED";
    FD1P3AX tmp_167__i1 (.D(n44), .SP(clk133_enable_44), .CK(clk133), 
            .Q(tmp[1])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(97[13:16])
    defparam tmp_167__i1.GSR = "DISABLED";
    FD1P3AX payload_164__i15 (.D(n70), .SP(clk133_enable_38), .CK(clk133), 
            .Q(payload[15])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164__i15.GSR = "DISABLED";
    GSR GSR_INST (.GSR(synch_rst_N_176));
    OB lcd_LCDBus_pad_15 (.I(lcd_LCDBus_c_15), .O(lcd_LCDBus[15]));   // z:/github/lattice/vivaz lcd sender/main.vhd(13[3:13])
    CCU2D payload_164_add_4_17 (.A0(payload[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n786), .S0(n70));   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164_add_4_17.INIT0 = 16'hfaaa;
    defparam payload_164_add_4_17.INIT1 = 16'h0000;
    defparam payload_164_add_4_17.INJECT1_0 = "NO";
    defparam payload_164_add_4_17.INJECT1_1 = "NO";
    CCU2D payload_164_add_4_15 (.A0(payload[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(payload[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n785), .COUT(n786), .S0(n72), .S1(n71));   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164_add_4_15.INIT0 = 16'hfaaa;
    defparam payload_164_add_4_15.INIT1 = 16'hfaaa;
    defparam payload_164_add_4_15.INJECT1_0 = "NO";
    defparam payload_164_add_4_15.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    CCU2D payload_164_add_4_13 (.A0(payload[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(payload[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n784), .COUT(n785), .S0(n74), .S1(n73));   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164_add_4_13.INIT0 = 16'hfaaa;
    defparam payload_164_add_4_13.INIT1 = 16'hfaaa;
    defparam payload_164_add_4_13.INJECT1_0 = "NO";
    defparam payload_164_add_4_13.INJECT1_1 = "NO";
    FD1P3AX payload_164__i14 (.D(n71), .SP(clk133_enable_38), .CK(clk133), 
            .Q(payload[14])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164__i14.GSR = "DISABLED";
    FD1P3AX payload_164__i13 (.D(n72), .SP(clk133_enable_38), .CK(clk133), 
            .Q(payload[13])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164__i13.GSR = "DISABLED";
    FD1P3AX payload_164__i12 (.D(n73), .SP(clk133_enable_38), .CK(clk133), 
            .Q(payload[12])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164__i12.GSR = "DISABLED";
    FD1P3AX payload_164__i11 (.D(n74), .SP(clk133_enable_38), .CK(clk133), 
            .Q(payload[11])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164__i11.GSR = "DISABLED";
    FD1P3AX payload_164__i10 (.D(n75), .SP(clk133_enable_38), .CK(clk133), 
            .Q(payload[10])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164__i10.GSR = "DISABLED";
    FD1P3AX payload_164__i9 (.D(n76), .SP(clk133_enable_38), .CK(clk133), 
            .Q(payload[9])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164__i9.GSR = "DISABLED";
    FD1P3AX payload_164__i8 (.D(n77), .SP(clk133_enable_38), .CK(clk133), 
            .Q(payload[8])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164__i8.GSR = "DISABLED";
    FD1P3AX payload_164__i7 (.D(n78), .SP(clk133_enable_38), .CK(clk133), 
            .Q(payload[7])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164__i7.GSR = "DISABLED";
    FD1P3AX payload_164__i6 (.D(n79), .SP(clk133_enable_38), .CK(clk133), 
            .Q(payload[6])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164__i6.GSR = "DISABLED";
    FD1P3AX payload_164__i5 (.D(n80), .SP(clk133_enable_38), .CK(clk133), 
            .Q(payload[5])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164__i5.GSR = "DISABLED";
    FD1P3AX payload_164__i4 (.D(n81), .SP(clk133_enable_38), .CK(clk133), 
            .Q(payload[4])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164__i4.GSR = "DISABLED";
    FD1P3AX payload_164__i3 (.D(n82), .SP(clk133_enable_38), .CK(clk133), 
            .Q(payload[3])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164__i3.GSR = "DISABLED";
    FD1P3AX payload_164__i2 (.D(n83), .SP(clk133_enable_38), .CK(clk133), 
            .Q(payload[2])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164__i2.GSR = "DISABLED";
    FD1P3AX payload_164__i1 (.D(n84), .SP(clk133_enable_38), .CK(clk133), 
            .Q(payload[1])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164__i1.GSR = "DISABLED";
    FD1S3IX count_i_162_163__i13 (.D(n62), .CK(clk133), .CD(clk133_enable_38), 
            .Q(count_i[13])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(61[16:23])
    defparam count_i_162_163__i13.GSR = "DISABLED";
    CCU2D payload_164_add_4_11 (.A0(payload[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(payload[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n783), .COUT(n784), .S0(n76), .S1(n75));   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164_add_4_11.INIT0 = 16'hfaaa;
    defparam payload_164_add_4_11.INIT1 = 16'hfaaa;
    defparam payload_164_add_4_11.INJECT1_0 = "NO";
    defparam payload_164_add_4_11.INJECT1_1 = "NO";
    LUT4 i315_4_lut (.A(count_i[12]), .B(count_i[13]), .C(n790), .D(count_i[11]), 
         .Z(clk133_enable_38)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i315_4_lut.init = 16'hccc8;
    LUT4 i1_2_lut (.A(data1command0), .B(clk133_enable_38), .Z(data1command0_N_180)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i3_4_lut (.A(n796), .B(count_i[8]), .C(count_i[10]), .D(count_i[9]), 
         .Z(n790)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i3_4_lut_adj_1 (.A(count_i[4]), .B(count_i[5]), .C(count_i[7]), 
         .D(count_i[6]), .Z(n796)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_1.init = 16'hfffe;
    LUT4 i1_4_lut (.A(n469), .B(lcd_wr_c), .C(n473), .D(clk133_enable_21), 
         .Z(n802)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C)))) */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(107[3] 138[10])
    defparam i1_4_lut.init = 16'h5054;
    LUT4 i1_4_lut_adj_2 (.A(synch_rst_c), .B(clk133_enable_3), .C(n804), 
         .D(tmp[0]), .Z(clk133_enable_44)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_2.init = 16'h080c;
    LUT4 i2_4_lut (.A(count[5]), .B(count[3]), .C(count[4]), .D(n4), 
         .Z(clk133_enable_3)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'ha080;
    FD1S3IX count_i_162_163__i12 (.D(n63), .CK(clk133), .CD(clk133_enable_38), 
            .Q(count_i[12])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(61[16:23])
    defparam count_i_162_163__i12.GSR = "DISABLED";
    FD1S3IX count_i_162_163__i11 (.D(n64), .CK(clk133), .CD(clk133_enable_38), 
            .Q(count_i[11])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(61[16:23])
    defparam count_i_162_163__i11.GSR = "DISABLED";
    FD1S3IX count_i_162_163__i10 (.D(n65), .CK(clk133), .CD(clk133_enable_38), 
            .Q(count_i[10])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(61[16:23])
    defparam count_i_162_163__i10.GSR = "DISABLED";
    FD1S3IX count_i_162_163__i9 (.D(n66), .CK(clk133), .CD(clk133_enable_38), 
            .Q(count_i[9])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(61[16:23])
    defparam count_i_162_163__i9.GSR = "DISABLED";
    FD1S3IX count_i_162_163__i8 (.D(n67), .CK(clk133), .CD(clk133_enable_38), 
            .Q(count_i[8])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(61[16:23])
    defparam count_i_162_163__i8.GSR = "DISABLED";
    FD1S3IX count_i_162_163__i7 (.D(n68), .CK(clk133), .CD(clk133_enable_38), 
            .Q(count_i[7])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(61[16:23])
    defparam count_i_162_163__i7.GSR = "DISABLED";
    FD1S3IX count_i_162_163__i6 (.D(n69), .CK(clk133), .CD(clk133_enable_38), 
            .Q(count_i[6])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(61[16:23])
    defparam count_i_162_163__i6.GSR = "DISABLED";
    FD1S3IX count_i_162_163__i5 (.D(n70_adj_2), .CK(clk133), .CD(clk133_enable_38), 
            .Q(count_i[5])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(61[16:23])
    defparam count_i_162_163__i5.GSR = "DISABLED";
    FD1S3IX count_i_162_163__i4 (.D(n71_adj_3), .CK(clk133), .CD(clk133_enable_38), 
            .Q(count_i[4])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(61[16:23])
    defparam count_i_162_163__i4.GSR = "DISABLED";
    FD1S3IX count_i_162_163__i3 (.D(n72_adj_4), .CK(clk133), .CD(clk133_enable_38), 
            .Q(n11)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(61[16:23])
    defparam count_i_162_163__i3.GSR = "DISABLED";
    FD1S3IX count_i_162_163__i2 (.D(n73_adj_5), .CK(clk133), .CD(clk133_enable_38), 
            .Q(n12)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(61[16:23])
    defparam count_i_162_163__i2.GSR = "DISABLED";
    FD1S3IX count_i_162_163__i1 (.D(n74_adj_6), .CK(clk133), .CD(clk133_enable_38), 
            .Q(n13)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(61[16:23])
    defparam count_i_162_163__i1.GSR = "DISABLED";
    FD1S3AX PS_vivaz_state_FSM_i7 (.D(n470), .CK(clk133), .Q(n469));   // z:/github/lattice/vivaz lcd sender/main.vhd(108[4] 137[13])
    defparam PS_vivaz_state_FSM_i7.GSR = "ENABLED";
    FD1S3AX PS_vivaz_state_FSM_i6 (.D(n471), .CK(clk133), .Q(n470));   // z:/github/lattice/vivaz lcd sender/main.vhd(108[4] 137[13])
    defparam PS_vivaz_state_FSM_i6.GSR = "ENABLED";
    FD1S3AX PS_vivaz_state_FSM_i5 (.D(n472), .CK(clk133), .Q(n471));   // z:/github/lattice/vivaz lcd sender/main.vhd(108[4] 137[13])
    defparam PS_vivaz_state_FSM_i5.GSR = "ENABLED";
    FD1S3AX PS_vivaz_state_FSM_i4 (.D(n473), .CK(clk133), .Q(n472));   // z:/github/lattice/vivaz lcd sender/main.vhd(108[4] 137[13])
    defparam PS_vivaz_state_FSM_i4.GSR = "ENABLED";
    FD1S3AX PS_vivaz_state_FSM_i3 (.D(clk133_enable_20), .CK(clk133), .Q(n473));   // z:/github/lattice/vivaz lcd sender/main.vhd(108[4] 137[13])
    defparam PS_vivaz_state_FSM_i3.GSR = "ENABLED";
    FD1S3AX PS_vivaz_state_FSM_i2 (.D(clk133_enable_21), .CK(clk133), .Q(clk133_enable_20));   // z:/github/lattice/vivaz lcd sender/main.vhd(108[4] 137[13])
    defparam PS_vivaz_state_FSM_i2.GSR = "ENABLED";
    FD1P3AX tmp_167__i7 (.D(n38), .SP(clk133_enable_44), .CK(clk133), 
            .Q(tmp[7])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(97[13:16])
    defparam tmp_167__i7.GSR = "DISABLED";
    CCU2D count_i_162_163_add_4_11 (.A0(count_i[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_i[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n776), .COUT(n777), .S0(n66), .S1(n65));   // z:/github/lattice/vivaz lcd sender/main.vhd(61[16:23])
    defparam count_i_162_163_add_4_11.INIT0 = 16'hfaaa;
    defparam count_i_162_163_add_4_11.INIT1 = 16'hfaaa;
    defparam count_i_162_163_add_4_11.INJECT1_0 = "NO";
    defparam count_i_162_163_add_4_11.INJECT1_1 = "NO";
    CCU2D count_i_162_163_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n14), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n772), .S1(n75_adj_7));   // z:/github/lattice/vivaz lcd sender/main.vhd(61[16:23])
    defparam count_i_162_163_add_4_1.INIT0 = 16'hF000;
    defparam count_i_162_163_add_4_1.INIT1 = 16'h0555;
    defparam count_i_162_163_add_4_1.INJECT1_0 = "NO";
    defparam count_i_162_163_add_4_1.INJECT1_1 = "NO";
    CCU2D count_i_162_163_add_4_7 (.A0(count_i[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_i[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n774), .COUT(n775), .S0(n70_adj_2), .S1(n69));   // z:/github/lattice/vivaz lcd sender/main.vhd(61[16:23])
    defparam count_i_162_163_add_4_7.INIT0 = 16'hfaaa;
    defparam count_i_162_163_add_4_7.INIT1 = 16'hfaaa;
    defparam count_i_162_163_add_4_7.INJECT1_0 = "NO";
    defparam count_i_162_163_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_3 (.A(count[1]), .B(count[2]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_3.init = 16'heeee;
    LUT4 i219_2_lut (.A(n475), .B(PS_vivaz_state_2__N_166[1]), .Z(n624)) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(108[4] 137[13])
    defparam i219_2_lut.init = 16'h2222;
    CCU2D payload_164_add_4_9 (.A0(payload[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(payload[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n782), .COUT(n783), .S0(n78), .S1(n77));   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164_add_4_9.INIT0 = 16'hfaaa;
    defparam payload_164_add_4_9.INIT1 = 16'hfaaa;
    defparam payload_164_add_4_9.INJECT1_0 = "NO";
    defparam payload_164_add_4_9.INJECT1_1 = "NO";
    CCU2D payload_164_add_4_7 (.A0(payload[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(payload[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n781), .COUT(n782), .S0(n80), .S1(n79));   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164_add_4_7.INIT0 = 16'hfaaa;
    defparam payload_164_add_4_7.INIT1 = 16'hfaaa;
    defparam payload_164_add_4_7.INJECT1_0 = "NO";
    defparam payload_164_add_4_7.INJECT1_1 = "NO";
    CCU2D payload_164_add_4_5 (.A0(payload[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(payload[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n780), .COUT(n781), .S0(n82), .S1(n81));   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164_add_4_5.INIT0 = 16'hfaaa;
    defparam payload_164_add_4_5.INIT1 = 16'hfaaa;
    defparam payload_164_add_4_5.INJECT1_0 = "NO";
    defparam payload_164_add_4_5.INJECT1_1 = "NO";
    CCU2D payload_164_add_4_3 (.A0(payload[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(payload[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n779), .COUT(n780), .S0(n84), .S1(n83));   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164_add_4_3.INIT0 = 16'hfaaa;
    defparam payload_164_add_4_3.INIT1 = 16'hfaaa;
    defparam payload_164_add_4_3.INJECT1_0 = "NO";
    defparam payload_164_add_4_3.INJECT1_1 = "NO";
    CCU2D payload_164_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(payload[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n779), .S1(n85));   // z:/github/lattice/vivaz lcd sender/main.vhd(65[16:23])
    defparam payload_164_add_4_1.INIT0 = 16'hF000;
    defparam payload_164_add_4_1.INIT1 = 16'h0555;
    defparam payload_164_add_4_1.INJECT1_0 = "NO";
    defparam payload_164_add_4_1.INJECT1_1 = "NO";
    CCU2D count_i_162_163_add_4_15 (.A0(count_i[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n778), .S0(n62));   // z:/github/lattice/vivaz lcd sender/main.vhd(61[16:23])
    defparam count_i_162_163_add_4_15.INIT0 = 16'hfaaa;
    defparam count_i_162_163_add_4_15.INIT1 = 16'h0000;
    defparam count_i_162_163_add_4_15.INJECT1_0 = "NO";
    defparam count_i_162_163_add_4_15.INJECT1_1 = "NO";
    FD1P3AX tmp_167__i6 (.D(n39), .SP(clk133_enable_44), .CK(clk133), 
            .Q(tmp[6])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(97[13:16])
    defparam tmp_167__i6.GSR = "DISABLED";
    FD1P3AX tmp_167__i5 (.D(n40), .SP(clk133_enable_44), .CK(clk133), 
            .Q(tmp[5])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(97[13:16])
    defparam tmp_167__i5.GSR = "DISABLED";
    FD1P3AX tmp_167__i4 (.D(n41), .SP(clk133_enable_44), .CK(clk133), 
            .Q(tmp[4])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(97[13:16])
    defparam tmp_167__i4.GSR = "DISABLED";
    FD1P3AX tmp_167__i3 (.D(n42), .SP(clk133_enable_44), .CK(clk133), 
            .Q(tmp[3])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(97[13:16])
    defparam tmp_167__i3.GSR = "DISABLED";
    FD1P3AX tmp_167__i2 (.D(n43), .SP(clk133_enable_44), .CK(clk133), 
            .Q(tmp[2])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/vivaz lcd sender/main.vhd(97[13:16])
    defparam tmp_167__i2.GSR = "DISABLED";
    OB lcd_LCDBus_pad_10 (.I(lcd_LCDBus_c_10), .O(lcd_LCDBus[10]));   // z:/github/lattice/vivaz lcd sender/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_9 (.I(lcd_LCDBus_c_9), .O(lcd_LCDBus[9]));   // z:/github/lattice/vivaz lcd sender/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_8 (.I(lcd_LCDBus_c_8), .O(lcd_LCDBus[8]));   // z:/github/lattice/vivaz lcd sender/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_7 (.I(lcd_LCDBus_c_7), .O(lcd_LCDBus[7]));   // z:/github/lattice/vivaz lcd sender/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_6 (.I(lcd_LCDBus_c_6), .O(lcd_LCDBus[6]));   // z:/github/lattice/vivaz lcd sender/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_5 (.I(lcd_LCDBus_c_5), .O(lcd_LCDBus[5]));   // z:/github/lattice/vivaz lcd sender/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_4 (.I(lcd_LCDBus_c_4), .O(lcd_LCDBus[4]));   // z:/github/lattice/vivaz lcd sender/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_3 (.I(lcd_LCDBus_c_3), .O(lcd_LCDBus[3]));   // z:/github/lattice/vivaz lcd sender/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_2 (.I(lcd_LCDBus_c_2), .O(lcd_LCDBus[2]));   // z:/github/lattice/vivaz lcd sender/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_1 (.I(lcd_LCDBus_c_1), .O(lcd_LCDBus[1]));   // z:/github/lattice/vivaz lcd sender/main.vhd(13[3:13])
    OB lcd_LCDBus_pad_0 (.I(lcd_LCDBus_c_0), .O(lcd_LCDBus[0]));   // z:/github/lattice/vivaz lcd sender/main.vhd(13[3:13])
    OB lcd_wr_pad (.I(lcd_wr_c), .O(lcd_wr));   // z:/github/lattice/vivaz lcd sender/main.vhd(14[3:9])
    OB lcd_rs_pad (.I(lcd_rs_c), .O(lcd_rs));   // z:/github/lattice/vivaz lcd sender/main.vhd(16[3:9])
    OB synch_rst_pad (.I(synch_rst_c), .O(synch_rst));   // z:/github/lattice/vivaz lcd sender/main.vhd(17[3:12])
    VLO i1 (.Z(GND_net));
    LUT4 i272_2_lut (.A(n475), .B(PS_vivaz_state_2__N_166[1]), .Z(clk133_enable_21)) /* synthesis lut_function=(A (B)) */ ;
    defparam i272_2_lut.init = 16'h8888;
    VHI i393 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

