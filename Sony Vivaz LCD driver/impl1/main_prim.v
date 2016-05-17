// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.7.1.502
// Netlist written on Tue May 17 22:45:21 2016
//
// Verilog Description of module main
//

module main (leds, lcd_LCDBus, lcd_wr, lcd_reset, lcd_rs, synch_rst);   // z:/github/lattice/sony vivaz lcd driver/main.vhd(10[8:12])
    output [7:0]leds;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:7])
    output [15:0]lcd_LCDBus;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(14[3:13])
    output lcd_wr /* synthesis .original_dir=IN_OUT */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(15[3:9])
    output lcd_reset /* synthesis .original_dir=IN_OUT */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(16[3:12])
    output lcd_rs /* synthesis .original_dir=IN_OUT */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(17[3:9])
    input synch_rst;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(18[3:12])
    
    wire clk133 /* synthesis SET_AS_NETWORK=clk133, is_clock=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(23[9:15])
    wire synch_rst_c_derived_9 /* synthesis is_clock=1, SET_AS_NETWORK=synch_rst_c_derived_9 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(18[3:12])
    wire PS_lcd_state_1_derived_3 /* synthesis is_clock=1, SET_AS_NETWORK=PS_lcd_state[1]_derived_3 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(54[9:21])
    wire lcd_dataTrue_commandFalse_i_N_146_derived_3 /* synthesis is_clock=1, SET_AS_NETWORK=lcd_dataTrue_commandFalse_i_N_146_derived_3 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(48[9:36])
    
    wire GND_net, VCC_net, leds_c_7, leds_c_6, leds_c_4, leds_c_3, 
        leds_c_2, leds_c_1, lcd_LCDBus_c_15, lcd_LCDBus_c_14, lcd_LCDBus_c_13, 
        lcd_LCDBus_c_12, lcd_LCDBus_c_11, lcd_LCDBus_c_10, lcd_LCDBus_c_9, 
        lcd_LCDBus_c_8, lcd_LCDBus_c_7, lcd_LCDBus_c_6, lcd_LCDBus_c_3, 
        lcd_LCDBus_c_2, lcd_LCDBus_c_1, lcd_LCDBus_c_0, lcd_wr_c, lcd_reset_c, 
        lcd_rs_c, synch_rst_c;
    wire [2:0]PS_vivaz_state;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(40[9:23])
    wire [2:0]NS_vivaz_state;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(41[9:23])
    
    wire lcd_go_i, lcd_busy_i;
    wire [15:0]lcd_payload_i;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(47[9:22])
    
    wire lcd_dataTrue_commandFalse_i;
    wire [3:0]NS_lcd_state;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(53[9:21])
    wire [3:0]PS_lcd_state;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(54[9:21])
    wire [23:0]count;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(55[18:23])
    wire [23:0]waitcounter;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(56[18:29])
    
    wire n6702, lcd_busy_i_derived_2, lcd_wr_N_7, lcd_busy_i_N_16;
    wire [2:0]NS_vivaz_state_2__N_35;
    
    wire n5714;
    wire [23:0]waitcounter_23__N_86;
    
    wire lcd_go_i_N_5;
    wire [3:0]NS_lcd_state_3__N_54;
    
    wire lcd_reset_N_14, lcd_dataTrue_commandFalse_i_N_146, n6116, n1257, 
        n6847, n93, n5715, n6, n5713, n125, n124, n123, n122, 
        n121, n120, n119, n118, n117, n116, n115, n114, n113, 
        n112, n111, n110, n109, n108, n107, n5707, n106, n105, 
        n104, n103, n102, n164, n6844, n6_adj_1, clk133_enable_4, 
        n5716, n5705, n5907, n6701, n6835, n3293, n5711, n6696, 
        n5712, n6832, n5709, n5708, n5704, n5303, n6706, n5703, 
        n6699, n6666, n6665, lcd_busy_i_derived_1, n6700, n6705, 
        n6704, n5295, n5710, n6659, synch_rst_c_derived_17, n6012, 
        n5701, n5702, n6655, n6654, n173, n6653, PS_lcd_state_1_derived_5, 
        n5696, n5284, n3344, n5700, n6652, PS_vivaz_state_0_derived_1, 
        n6713, n6711, n6710, n6708, n6011, n5280, n6707, n6703, 
        n5695, n6658, n4018, n5698, n4126, n5552, n5699, synch_rst_c_derived_15, 
        n5706, n5694, n5903, n5697, lcd_dataTrue_commandFalse_i_N_146_derived_4, 
        n5693, n5364, synch_rst_c_derived_4;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i1_2_lut_rep_36 (.A(synch_rst_c), .B(PS_vivaz_state[2]), .Z(n6705)) /* synthesis lut_function=(A+(B)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(18[3:12])
    defparam i1_2_lut_rep_36.init = 16'heeee;
    CCU2D count_728_add_4_25 (.A0(count[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5716), .S0(n102));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728_add_4_25.INIT0 = 16'hfaaa;
    defparam count_728_add_4_25.INIT1 = 16'h0000;
    defparam count_728_add_4_25.INJECT1_0 = "NO";
    defparam count_728_add_4_25.INJECT1_1 = "NO";
    OB leds_pad_7 (.I(leds_c_7), .O(leds[7]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:7])
    FD1S3AY PS_vivaz_state_i0 (.D(NS_vivaz_state[0]), .CK(clk133), .Q(PS_vivaz_state[0])) /* synthesis lse_init_val=0 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(68[4] 70[11])
    defparam PS_vivaz_state_i0.GSR = "ENABLED";
    CCU2D count_728_add_4_23 (.A0(count[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5715), .COUT(n5716), .S0(n104), .S1(n103));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728_add_4_23.INIT0 = 16'hfaaa;
    defparam count_728_add_4_23.INIT1 = 16'hfaaa;
    defparam count_728_add_4_23.INJECT1_0 = "NO";
    defparam count_728_add_4_23.INJECT1_1 = "NO";
    LUT4 i3_1_lut (.A(synch_rst_c), .Z(n5295)) /* synthesis lut_function=(!(A)) */ ;
    defparam i3_1_lut.init = 16'h5555;
    LUT4 lcd_rs_I_0_1_lut (.A(lcd_rs_c), .Z(leds_c_2)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(223[14:24])
    defparam lcd_rs_I_0_1_lut.init = 16'h5555;
    LUT4 i3446_2_lut (.A(lcd_payload_i[6]), .B(lcd_dataTrue_commandFalse_i_N_146_derived_3), 
         .Z(lcd_payload_i[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(246[3] 253[10])
    defparam i3446_2_lut.init = 16'h2222;
    FD1S1I i2830 (.D(lcd_payload_i[6]), .CK(synch_rst_c_derived_17), .CD(synch_rst_c), 
           .Q(lcd_LCDBus_c_6));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(118[3] 124[10])
    defparam i2830.GSR = "DISABLED";
    FD1S1A i2827 (.D(n6011), .CK(PS_lcd_state_1_derived_3), .Q(waitcounter[18]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(246[3] 253[10])
    defparam i2827.GSR = "DISABLED";
    LUT4 lcd_wr_I_0_1_lut (.A(lcd_wr_c), .Z(leds_c_3)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(224[14:24])
    defparam lcd_wr_I_0_1_lut.init = 16'h5555;
    LUT4 i3467_3_lut_4_lut (.A(PS_lcd_state[0]), .B(PS_lcd_state[1]), .C(PS_lcd_state[2]), 
         .D(lcd_dataTrue_commandFalse_i_N_146), .Z(NS_lcd_state_3__N_54[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(54[9:21])
    defparam i3467_3_lut_4_lut.init = 16'h7f80;
    FD1S1I i2866 (.D(lcd_payload_i[2]), .CK(synch_rst_c_derived_17), .CD(synch_rst_c), 
           .Q(lcd_LCDBus_c_2));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(118[3] 124[10])
    defparam i2866.GSR = "DISABLED";
    FD1S3IX count_728__i0 (.D(n125), .CK(clk133), .CD(clk133_enable_4), 
            .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728__i0.GSR = "ENABLED";
    LUT4 i3928_3_lut (.A(PS_vivaz_state[2]), .B(PS_vivaz_state[0]), .C(PS_vivaz_state[1]), 
         .Z(NS_vivaz_state_2__N_35[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(40[9:23])
    defparam i3928_3_lut.init = 16'h6a6a;
    LUT4 PS_vivaz_state_0__bdd_4_lut_then_4_lut (.A(lcd_busy_i), .B(PS_vivaz_state[1]), 
         .C(PS_vivaz_state[2]), .D(lcd_go_i), .Z(n6708)) /* synthesis lut_function=(!(A (B+!(C))+!A (C+!(D)))) */ ;
    defparam PS_vivaz_state_0__bdd_4_lut_then_4_lut.init = 16'h2520;
    LUT4 i1_3_lut_4_lut (.A(PS_lcd_state[2]), .B(n6701), .C(PS_lcd_state[0]), 
         .D(synch_rst_c), .Z(n1257)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(130[3] 137[10])
    defparam i1_3_lut_4_lut.init = 16'hff04;
    LUT4 i1_2_lut (.A(lcd_dataTrue_commandFalse_i_N_146_derived_3), .B(lcd_payload_i[0]), 
         .Z(lcd_payload_i[0])) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut.init = 16'h4444;
    FD1S1I i2821 (.D(lcd_payload_i[4]), .CK(synch_rst_c_derived_17), .CD(synch_rst_c), 
           .Q(lcd_LCDBus_c_7));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(118[3] 124[10])
    defparam i2821.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(PS_lcd_state[0]), .B(PS_lcd_state[1]), .C(n3344), 
         .D(PS_lcd_state[2]), .Z(n6011)) /* synthesis lut_function=(!((B (C+(D))+!B (C+!(D)))+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(246[3] 253[10])
    defparam i1_4_lut.init = 16'h0208;
    FD1S1J i2863 (.D(lcd_busy_i_N_16), .CK(synch_rst_c_derived_4), .PD(synch_rst_c), 
           .Q(lcd_busy_i));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(118[3] 124[10])
    defparam i2863.GSR = "DISABLED";
    LUT4 PS_vivaz_state_0__bdd_4_lut_else_4_lut (.A(lcd_busy_i), .B(PS_vivaz_state[2]), 
         .Z(n6707)) /* synthesis lut_function=(A (B)) */ ;
    defparam PS_vivaz_state_0__bdd_4_lut_else_4_lut.init = 16'h8888;
    FD1S1A i2818 (.D(n6713), .CK(PS_lcd_state_1_derived_3), .Q(waitcounter[16]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(246[3] 253[10])
    defparam i2818.GSR = "DISABLED";
    FD1S1I i2794 (.D(lcd_payload_i[10]), .CK(synch_rst_c_derived_17), .CD(synch_rst_c), 
           .Q(lcd_LCDBus_c_10));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(118[3] 124[10])
    defparam i2794.GSR = "DISABLED";
    LUT4 lcd_go_i_I_0_68_1_lut (.A(lcd_go_i), .Z(leds_c_4)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(226[14:26])
    defparam lcd_go_i_I_0_68_1_lut.init = 16'h5555;
    CCU2D count_728_add_4_21 (.A0(count[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5714), .COUT(n5715), .S0(n106), .S1(n105));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728_add_4_21.INIT0 = 16'hfaaa;
    defparam count_728_add_4_21.INIT1 = 16'hfaaa;
    defparam count_728_add_4_21.INJECT1_0 = "NO";
    defparam count_728_add_4_21.INJECT1_1 = "NO";
    FD1S1I i2860 (.D(n1257), .CK(lcd_dataTrue_commandFalse_i_N_146_derived_3), 
           .CD(synch_rst_c), .Q(lcd_payload_i[2]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(246[3] 253[10])
    defparam i2860.GSR = "DISABLED";
    LUT4 i4328_2_lut (.A(synch_rst_c), .B(lcd_dataTrue_commandFalse_i_N_146), 
         .Z(n3344)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4328_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_1 (.A(lcd_dataTrue_commandFalse_i_N_146_derived_3), 
         .B(lcd_payload_i[3]), .Z(lcd_payload_i[3])) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_1.init = 16'h4444;
    OSCH inst_clk (.STDBY(GND_net), .OSC(clk133)) /* synthesis syn_instantiated=1 */ ;
    defparam inst_clk.NOM_FREQ = "20.46";
    FD1S1I i2857 (.D(lcd_payload_i[3]), .CK(synch_rst_c_derived_17), .CD(synch_rst_c), 
           .Q(lcd_LCDBus_c_3));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(118[3] 124[10])
    defparam i2857.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut_adj_2 (.A(PS_lcd_state[1]), .B(lcd_dataTrue_commandFalse_i_N_146), 
         .C(n6706), .D(synch_rst_c), .Z(n4126)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A (D))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(54[9:21])
    defparam i1_3_lut_4_lut_adj_2.init = 16'h00f7;
    FD1S1I i2854 (.D(lcd_go_i_N_5), .CK(lcd_busy_i_derived_1), .CD(n3293), 
           .Q(lcd_go_i));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(246[3] 253[10])
    defparam i2854.GSR = "DISABLED";
    LUT4 i3766_1_lut_rep_35 (.A(lcd_busy_i), .Z(n6704)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(118[3] 124[10])
    defparam i3766_1_lut_rep_35.init = 16'h5555;
    CCU2D count_728_add_4_19 (.A0(count[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5713), .COUT(n5714), .S0(n108), .S1(n107));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728_add_4_19.INIT0 = 16'hfaaa;
    defparam count_728_add_4_19.INIT1 = 16'hfaaa;
    defparam count_728_add_4_19.INJECT1_0 = "NO";
    defparam count_728_add_4_19.INJECT1_1 = "NO";
    LUT4 i4567_4_lut_then_4_lut (.A(synch_rst_c), .B(PS_lcd_state[1]), .C(PS_lcd_state[0]), 
         .D(PS_lcd_state[2]), .Z(n6711)) /* synthesis lut_function=(A+!((C+(D))+!B)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(18[3:12])
    defparam i4567_4_lut_then_4_lut.init = 16'haaae;
    LUT4 i4567_4_lut_else_4_lut (.A(synch_rst_c), .B(PS_lcd_state[1]), .C(PS_lcd_state[0]), 
         .D(PS_lcd_state[2]), .Z(n6710)) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(18[3:12])
    defparam i4567_4_lut_else_4_lut.init = 16'heaaa;
    LUT4 n3344_bdd_4_lut (.A(n3344), .B(PS_lcd_state[1]), .C(PS_lcd_state[2]), 
         .D(PS_lcd_state[0]), .Z(n6713)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !((D)+!C)))) */ ;
    defparam n3344_bdd_4_lut.init = 16'h1501;
    LUT4 i1_4_lut_adj_3 (.A(PS_lcd_state[2]), .B(n6701), .C(lcd_busy_i), 
         .D(NS_lcd_state[0]), .Z(n164)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(54[9:21])
    defparam i1_4_lut_adj_3.init = 16'hc888;
    FD1S1A i2842 (.D(n4126), .CK(lcd_dataTrue_commandFalse_i_N_146_derived_3), 
           .Q(lcd_payload_i[4]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(246[3] 253[10])
    defparam i2842.GSR = "DISABLED";
    FD1S1I i2809 (.D(lcd_payload_i[8]), .CK(synch_rst_c_derived_17), .CD(synch_rst_c), 
           .Q(lcd_LCDBus_c_8));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(118[3] 124[10])
    defparam i2809.GSR = "DISABLED";
    LUT4 i3704_4_lut (.A(n3344), .B(n6701), .C(PS_lcd_state[2]), .D(n6), 
         .Z(n5364)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(54[9:21])
    defparam i3704_4_lut.init = 16'hc5c0;
    FD1S3IX count_728__i23 (.D(n102), .CK(clk133), .CD(clk133_enable_4), 
            .Q(count[23])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728__i23.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_28_4_lut (.A(PS_lcd_state[2]), .B(n6703), .C(PS_lcd_state[0]), 
         .D(synch_rst_c), .Z(synch_rst_c_derived_9)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_rep_28_4_lut.init = 16'hfffe;
    CCU2D count_728_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5712), .COUT(n5713), .S0(n110), .S1(n109));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728_add_4_17.INIT0 = 16'hfaaa;
    defparam count_728_add_4_17.INIT1 = 16'hfaaa;
    defparam count_728_add_4_17.INJECT1_0 = "NO";
    defparam count_728_add_4_17.INJECT1_1 = "NO";
    IB synch_rst_pad (.I(synch_rst), .O(synch_rst_c));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(18[3:12])
    OB lcd_rs_pad (.I(lcd_rs_c), .O(lcd_rs));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(17[3:9])
    OB lcd_reset_pad (.I(lcd_reset_c), .O(lcd_reset));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(16[3:12])
    OB lcd_wr_pad (.I(lcd_wr_c), .O(lcd_wr));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(15[3:9])
    OB lcd_LCDBus_pad_0 (.I(lcd_LCDBus_c_0), .O(lcd_LCDBus[0]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(14[3:13])
    OB lcd_LCDBus_pad_1 (.I(lcd_LCDBus_c_1), .O(lcd_LCDBus[1]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(14[3:13])
    OB lcd_LCDBus_pad_2 (.I(lcd_LCDBus_c_2), .O(lcd_LCDBus[2]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(14[3:13])
    OB lcd_LCDBus_pad_3 (.I(lcd_LCDBus_c_3), .O(lcd_LCDBus[3]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(14[3:13])
    OB lcd_LCDBus_pad_4 (.I(lcd_LCDBus_c_7), .O(lcd_LCDBus[4]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(14[3:13])
    OB lcd_LCDBus_pad_5 (.I(lcd_LCDBus_c_7), .O(lcd_LCDBus[5]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(14[3:13])
    OB lcd_LCDBus_pad_6 (.I(lcd_LCDBus_c_6), .O(lcd_LCDBus[6]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(14[3:13])
    OB lcd_LCDBus_pad_7 (.I(lcd_LCDBus_c_7), .O(lcd_LCDBus[7]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(14[3:13])
    OB lcd_LCDBus_pad_8 (.I(lcd_LCDBus_c_8), .O(lcd_LCDBus[8]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(14[3:13])
    OB lcd_LCDBus_pad_9 (.I(lcd_LCDBus_c_9), .O(lcd_LCDBus[9]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(14[3:13])
    OB lcd_LCDBus_pad_10 (.I(lcd_LCDBus_c_10), .O(lcd_LCDBus[10]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(14[3:13])
    OB lcd_LCDBus_pad_11 (.I(lcd_LCDBus_c_11), .O(lcd_LCDBus[11]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(14[3:13])
    OB lcd_LCDBus_pad_12 (.I(lcd_LCDBus_c_12), .O(lcd_LCDBus[12]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(14[3:13])
    OB lcd_LCDBus_pad_13 (.I(lcd_LCDBus_c_13), .O(lcd_LCDBus[13]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(14[3:13])
    OB lcd_LCDBus_pad_14 (.I(lcd_LCDBus_c_14), .O(lcd_LCDBus[14]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(14[3:13])
    OB lcd_LCDBus_pad_15 (.I(lcd_LCDBus_c_15), .O(lcd_LCDBus[15]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(14[3:13])
    OB leds_pad_0 (.I(n6704), .O(leds[0]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:7])
    OB leds_pad_1 (.I(leds_c_1), .O(leds[1]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:7])
    OB leds_pad_2 (.I(leds_c_2), .O(leds[2]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:7])
    OB leds_pad_3 (.I(leds_c_3), .O(leds[3]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:7])
    OB leds_pad_4 (.I(leds_c_4), .O(leds[4]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:7])
    OB leds_pad_5 (.I(VCC_net), .O(leds[5]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:7])
    LUT4 i2_2_lut (.A(n6847), .B(PS_lcd_state[1]), .Z(n6)) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(130[3] 137[10])
    defparam i2_2_lut.init = 16'h2222;
    CCU2D count_728_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5711), .COUT(n5712), .S0(n112), .S1(n111));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728_add_4_15.INIT0 = 16'hfaaa;
    defparam count_728_add_4_15.INIT1 = 16'hfaaa;
    defparam count_728_add_4_15.INJECT1_0 = "NO";
    defparam count_728_add_4_15.INJECT1_1 = "NO";
    LUT4 n5907_bdd_4_lut (.A(n5907), .B(n164), .C(PS_lcd_state[0]), .D(n5284), 
         .Z(NS_lcd_state[0])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n5907_bdd_4_lut.init = 16'hffca;
    LUT4 i1_3_lut (.A(synch_rst_c), .B(PS_lcd_state[0]), .C(PS_lcd_state[1]), 
         .Z(n5284)) /* synthesis lut_function=(A+!(B+!(C))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(18[3:12])
    defparam i1_3_lut.init = 16'hbaba;
    CCU2D count_728_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5710), .COUT(n5711), .S0(n114), .S1(n113));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728_add_4_13.INIT0 = 16'hfaaa;
    defparam count_728_add_4_13.INIT1 = 16'hfaaa;
    defparam count_728_add_4_13.INJECT1_0 = "NO";
    defparam count_728_add_4_13.INJECT1_1 = "NO";
    LUT4 i3450_2_lut (.A(lcd_payload_i[11]), .B(lcd_dataTrue_commandFalse_i_N_146_derived_3), 
         .Z(lcd_payload_i[11])) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(246[3] 253[10])
    defparam i3450_2_lut.init = 16'h2222;
    LUT4 i1_3_lut_4_lut_adj_4 (.A(synch_rst_c), .B(n6699), .C(n5303), 
         .D(n6835), .Z(n6835)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_4.init = 16'h1110;
    LUT4 i2_3_lut_4_lut (.A(PS_lcd_state[2]), .B(n6701), .C(synch_rst_c), 
         .D(PS_lcd_state[0]), .Z(n4018)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(130[3] 137[10])
    defparam i2_3_lut_4_lut.init = 16'h0008;
    CCU2D count_728_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5709), .COUT(n5710), .S0(n116), .S1(n115));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728_add_4_11.INIT0 = 16'hfaaa;
    defparam count_728_add_4_11.INIT1 = 16'hfaaa;
    defparam count_728_add_4_11.INJECT1_0 = "NO";
    defparam count_728_add_4_11.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut_adj_5 (.A(PS_lcd_state[0]), .B(PS_lcd_state[2]), 
         .C(n3344), .D(PS_lcd_state[1]), .Z(PS_lcd_state_1_derived_3)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(130[3] 137[10])
    defparam i2_3_lut_4_lut_adj_5.init = 16'hfffe;
    LUT4 lcd_busy_i_bdd_4_lut_4692 (.A(lcd_dataTrue_commandFalse_i_N_146), 
         .B(NS_lcd_state[2]), .C(PS_lcd_state[0]), .D(PS_lcd_state[1]), 
         .Z(n6652)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (C (D))) */ ;
    defparam lcd_busy_i_bdd_4_lut_4692.init = 16'hd008;
    LUT4 lcd_busy_i_bdd_2_lut_4691 (.A(PS_lcd_state[0]), .B(PS_lcd_state[1]), 
         .Z(n6653)) /* synthesis lut_function=(A (B)) */ ;
    defparam lcd_busy_i_bdd_2_lut_4691.init = 16'h8888;
    CCU2D count_728_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5708), .COUT(n5709), .S0(n118), .S1(n117));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728_add_4_9.INIT0 = 16'hfaaa;
    defparam count_728_add_4_9.INIT1 = 16'hfaaa;
    defparam count_728_add_4_9.INJECT1_0 = "NO";
    defparam count_728_add_4_9.INJECT1_1 = "NO";
    FD1S3IX count_728__i22 (.D(n103), .CK(clk133), .CD(clk133_enable_4), 
            .Q(count[22])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728__i22.GSR = "ENABLED";
    FD1S3IX count_728__i21 (.D(n104), .CK(clk133), .CD(clk133_enable_4), 
            .Q(count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728__i21.GSR = "ENABLED";
    FD1S3IX count_728__i20 (.D(n105), .CK(clk133), .CD(clk133_enable_4), 
            .Q(count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728__i20.GSR = "ENABLED";
    FD1S3IX count_728__i19 (.D(n106), .CK(clk133), .CD(clk133_enable_4), 
            .Q(count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728__i19.GSR = "ENABLED";
    FD1S3IX count_728__i18 (.D(n107), .CK(clk133), .CD(clk133_enable_4), 
            .Q(count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728__i18.GSR = "ENABLED";
    FD1S3IX count_728__i17 (.D(n108), .CK(clk133), .CD(clk133_enable_4), 
            .Q(count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728__i17.GSR = "ENABLED";
    FD1S3IX count_728__i16 (.D(n109), .CK(clk133), .CD(clk133_enable_4), 
            .Q(count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728__i16.GSR = "ENABLED";
    FD1S3IX count_728__i15 (.D(n110), .CK(clk133), .CD(clk133_enable_4), 
            .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728__i15.GSR = "ENABLED";
    FD1S3IX count_728__i14 (.D(n111), .CK(clk133), .CD(clk133_enable_4), 
            .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728__i14.GSR = "ENABLED";
    FD1S3IX count_728__i13 (.D(n112), .CK(clk133), .CD(clk133_enable_4), 
            .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728__i13.GSR = "ENABLED";
    FD1S3IX count_728__i12 (.D(n113), .CK(clk133), .CD(clk133_enable_4), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728__i12.GSR = "ENABLED";
    FD1S3IX count_728__i11 (.D(n114), .CK(clk133), .CD(clk133_enable_4), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728__i11.GSR = "ENABLED";
    FD1S3IX count_728__i10 (.D(n115), .CK(clk133), .CD(clk133_enable_4), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728__i10.GSR = "ENABLED";
    FD1S3IX count_728__i9 (.D(n116), .CK(clk133), .CD(clk133_enable_4), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728__i9.GSR = "ENABLED";
    FD1S3IX count_728__i8 (.D(n117), .CK(clk133), .CD(clk133_enable_4), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728__i8.GSR = "ENABLED";
    FD1S3IX count_728__i7 (.D(n118), .CK(clk133), .CD(clk133_enable_4), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728__i7.GSR = "ENABLED";
    FD1S3IX count_728__i6 (.D(n119), .CK(clk133), .CD(clk133_enable_4), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728__i6.GSR = "ENABLED";
    FD1S3IX count_728__i5 (.D(n120), .CK(clk133), .CD(clk133_enable_4), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728__i5.GSR = "ENABLED";
    FD1S3IX count_728__i4 (.D(n121), .CK(clk133), .CD(clk133_enable_4), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728__i4.GSR = "ENABLED";
    FD1S3IX count_728__i3 (.D(n122), .CK(clk133), .CD(clk133_enable_4), 
            .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728__i3.GSR = "ENABLED";
    FD1S3IX count_728__i2 (.D(n123), .CK(clk133), .CD(clk133_enable_4), 
            .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728__i2.GSR = "ENABLED";
    FD1S3IX count_728__i1 (.D(n124), .CK(clk133), .CD(clk133_enable_4), 
            .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728__i1.GSR = "ENABLED";
    FD1S3AX PS_vivaz_state_i2 (.D(NS_vivaz_state[2]), .CK(clk133), .Q(PS_vivaz_state[2])) /* synthesis lse_init_val=0 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(68[4] 70[11])
    defparam PS_vivaz_state_i2.GSR = "ENABLED";
    CCU2D count_728_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5707), .COUT(n5708), .S0(n120), .S1(n119));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728_add_4_7.INIT0 = 16'hfaaa;
    defparam count_728_add_4_7.INIT1 = 16'hfaaa;
    defparam count_728_add_4_7.INJECT1_0 = "NO";
    defparam count_728_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_6 (.A(PS_lcd_state[2]), .B(PS_lcd_state[1]), .Z(n173)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_6.init = 16'heeee;
    LUT4 n6655_bdd_2_lut (.A(n6655), .B(synch_rst_c), .Z(NS_lcd_state[2])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n6655_bdd_2_lut.init = 16'h2222;
    CCU2D count_728_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5706), .COUT(n5707), .S0(n122), .S1(n121));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728_add_4_5.INIT0 = 16'hfaaa;
    defparam count_728_add_4_5.INIT1 = 16'hfaaa;
    defparam count_728_add_4_5.INJECT1_0 = "NO";
    defparam count_728_add_4_5.INJECT1_1 = "NO";
    FD1S3AX PS_vivaz_state_i1 (.D(NS_vivaz_state[1]), .CK(clk133), .Q(PS_vivaz_state[1])) /* synthesis lse_init_val=0 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(68[4] 70[11])
    defparam PS_vivaz_state_i1.GSR = "ENABLED";
    FD1S1I i2788 (.D(lcd_payload_i[11]), .CK(synch_rst_c_derived_17), .CD(synch_rst_c), 
           .Q(lcd_LCDBus_c_11));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(118[3] 124[10])
    defparam i2788.GSR = "DISABLED";
    LUT4 PS_lcd_state_1__bdd_4_lut_4706 (.A(PS_lcd_state[1]), .B(PS_lcd_state[0]), 
         .C(lcd_dataTrue_commandFalse_i_N_146), .D(PS_lcd_state[2]), .Z(n5303)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A ((C)+!B))) */ ;
    defparam PS_lcd_state_1__bdd_4_lut_4706.init = 16'h240c;
    LUT4 lcd_dataTrue_commandFalse_i_N_146_bdd_4_lut_4720 (.A(PS_lcd_state[2]), 
         .B(PS_lcd_state[0]), .C(lcd_reset_c), .D(PS_lcd_state[1]), .Z(n6658)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;
    defparam lcd_dataTrue_commandFalse_i_N_146_bdd_4_lut_4720.init = 16'h70f0;
    LUT4 lcd_dataTrue_commandFalse_i_N_146_bdd_2_lut_4719 (.A(PS_lcd_state[2]), 
         .B(PS_lcd_state[1]), .Z(n6659)) /* synthesis lut_function=((B)+!A) */ ;
    defparam lcd_dataTrue_commandFalse_i_N_146_bdd_2_lut_4719.init = 16'hdddd;
    LUT4 i2_2_lut_4_lut (.A(n6702), .B(PS_lcd_state[0]), .C(PS_lcd_state[1]), 
         .D(n6116), .Z(PS_lcd_state_1_derived_5)) /* synthesis lut_function=((B ((D)+!C)+!B (C+(D)))+!A) */ ;
    defparam i2_2_lut_4_lut.init = 16'hff7d;
    LUT4 i1_2_lut_4_lut (.A(synch_rst_c), .B(n6699), .C(PS_lcd_state[0]), 
         .D(waitcounter[0]), .Z(waitcounter[0])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0100;
    LUT4 i1_4_lut_adj_7 (.A(synch_rst_c), .B(PS_vivaz_state[1]), .C(n6_adj_1), 
         .D(PS_vivaz_state[0]), .Z(synch_rst_c_derived_15)) /* synthesis lut_function=(A+!(B+!(C (D)))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(18[3:12])
    defparam i1_4_lut_adj_7.init = 16'hbaaa;
    LUT4 i3451_2_lut (.A(lcd_payload_i[12]), .B(lcd_dataTrue_commandFalse_i_N_146_derived_3), 
         .Z(lcd_payload_i[12])) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(246[3] 253[10])
    defparam i3451_2_lut.init = 16'h2222;
    OB leds_pad_6 (.I(leds_c_6), .O(leds[6]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(13[3:7])
    CCU2D count_728_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5705), .COUT(n5706), .S0(n124), .S1(n123));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728_add_4_3.INIT0 = 16'hfaaa;
    defparam count_728_add_4_3.INIT1 = 16'hfaaa;
    defparam count_728_add_4_3.INJECT1_0 = "NO";
    defparam count_728_add_4_3.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(lcd_dataTrue_commandFalse_i_N_146_derived_3), .B(lcd_busy_i), 
         .C(n173), .D(n6012), .Z(lcd_busy_i_derived_1)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;
    defparam i2_4_lut.init = 16'hefee;
    LUT4 i3453_2_lut (.A(lcd_payload_i[14]), .B(lcd_dataTrue_commandFalse_i_N_146_derived_3), 
         .Z(lcd_payload_i[14])) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(246[3] 253[10])
    defparam i3453_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_adj_8 (.A(synch_rst_c), .B(lcd_busy_i), .Z(n3293)) /* synthesis lut_function=(A+(B)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(18[3:12])
    defparam i1_2_lut_adj_8.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_9 (.A(synch_rst_c), .B(n6699), .C(n5303), 
         .D(n6844), .Z(n6844)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_9.init = 16'h1110;
    LUT4 i2979_2_lut (.A(PS_lcd_state[2]), .B(lcd_dataTrue_commandFalse_i_N_146), 
         .Z(lcd_go_i_N_5)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2979_2_lut.init = 16'heeee;
    FD1P3AY PS_lcd_state_i0_i0 (.D(NS_lcd_state[0]), .SP(clk133_enable_4), 
            .CK(clk133), .Q(PS_lcd_state[0])) /* synthesis lse_init_val=0 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(130[3] 137[10])
    defparam PS_lcd_state_i0_i0.GSR = "ENABLED";
    CCU2D count_728_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n5705), .S1(n125));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(132[14:19])
    defparam count_728_add_4_1.INIT0 = 16'hF000;
    defparam count_728_add_4_1.INIT1 = 16'h0555;
    defparam count_728_add_4_1.INJECT1_0 = "NO";
    defparam count_728_add_4_1.INJECT1_1 = "NO";
    LUT4 i3449_2_lut (.A(lcd_payload_i[10]), .B(lcd_dataTrue_commandFalse_i_N_146_derived_3), 
         .Z(lcd_payload_i[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(246[3] 253[10])
    defparam i3449_2_lut.init = 16'h2222;
    LUT4 synch_rst_c_bdd_4_lut (.A(synch_rst_c), .B(PS_lcd_state[0]), .C(waitcounter_23__N_86[12]), 
         .D(PS_lcd_state[1]), .Z(n6666)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B !((D)+!C))) */ ;
    defparam synch_rst_c_bdd_4_lut.init = 16'hcc10;
    CCU2D sub_713_add_2_25 (.A0(count[23]), .B0(waitcounter[6]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5704), .S1(clk133_enable_4));
    defparam sub_713_add_2_25.INIT0 = 16'h5999;
    defparam sub_713_add_2_25.INIT1 = 16'h0000;
    defparam sub_713_add_2_25.INJECT1_0 = "NO";
    defparam sub_713_add_2_25.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_33 (.A(lcd_dataTrue_commandFalse_i_N_146), .B(lcd_busy_i), 
         .Z(n6702)) /* synthesis lut_function=(A (B)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(54[9:21])
    defparam i1_2_lut_rep_33.init = 16'h8888;
    FD1S1A i2782 (.D(n6696), .CK(synch_rst_c_derived_9), .Q(waitcounter[7]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(246[3] 253[10])
    defparam i2782.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_10 (.A(PS_lcd_state[0]), .B(lcd_dataTrue_commandFalse_i_N_146), 
         .Z(n6012)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_10.init = 16'h2222;
    LUT4 i2_3_lut (.A(synch_rst_c), .B(PS_vivaz_state[0]), .C(n5552), 
         .Z(NS_vivaz_state[0])) /* synthesis lut_function=(A+((C)+!B)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(18[3:12])
    defparam i2_3_lut.init = 16'hfbfb;
    FD1S1I i2779 (.D(lcd_payload_i[12]), .CK(synch_rst_c_derived_17), .CD(synch_rst_c), 
           .Q(lcd_LCDBus_c_12));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(118[3] 124[10])
    defparam i2779.GSR = "DISABLED";
    CCU2D sub_713_add_2_23 (.A0(count[21]), .B0(waitcounter[21]), .C0(GND_net), 
          .D0(GND_net), .A1(count[22]), .B1(waitcounter[22]), .C1(GND_net), 
          .D1(GND_net), .CIN(n5703), .COUT(n5704));
    defparam sub_713_add_2_23.INIT0 = 16'h5999;
    defparam sub_713_add_2_23.INIT1 = 16'h5999;
    defparam sub_713_add_2_23.INJECT1_0 = "NO";
    defparam sub_713_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_713_add_2_21 (.A0(count[19]), .B0(n6847), .C0(n5280), .D0(synch_rst_c), 
          .A1(count[20]), .B1(waitcounter[6]), .C1(GND_net), .D1(GND_net), 
          .CIN(n5702), .COUT(n5703));
    defparam sub_713_add_2_21.INIT0 = 16'h55a9;
    defparam sub_713_add_2_21.INIT1 = 16'h5999;
    defparam sub_713_add_2_21.INJECT1_0 = "NO";
    defparam sub_713_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_713_add_2_19 (.A0(count[17]), .B0(waitcounter[18]), .C0(GND_net), 
          .D0(GND_net), .A1(count[18]), .B1(waitcounter[18]), .C1(GND_net), 
          .D1(GND_net), .CIN(n5701), .COUT(n5702));
    defparam sub_713_add_2_19.INIT0 = 16'h5999;
    defparam sub_713_add_2_19.INIT1 = 16'h5999;
    defparam sub_713_add_2_19.INJECT1_0 = "NO";
    defparam sub_713_add_2_19.INJECT1_1 = "NO";
    FD1S1A i2776 (.D(n4018), .CK(PS_lcd_state_1_derived_3), .Q(waitcounter[6]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(246[3] 253[10])
    defparam i2776.GSR = "DISABLED";
    LUT4 PS_lcd_state_2__bdd_3_lut (.A(PS_lcd_state[0]), .B(PS_lcd_state[1]), 
         .C(lcd_dataTrue_commandFalse_i_N_146), .Z(n6665)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)))) */ ;
    defparam PS_lcd_state_2__bdd_3_lut.init = 16'h4242;
    LUT4 i2_3_lut_adj_11 (.A(PS_vivaz_state[2]), .B(PS_vivaz_state[0]), 
         .C(PS_vivaz_state[1]), .Z(leds_c_6)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(40[9:23])
    defparam i2_3_lut_adj_11.init = 16'hfbfb;
    LUT4 i1_2_lut_rep_32 (.A(PS_lcd_state[1]), .B(lcd_dataTrue_commandFalse_i_N_146), 
         .Z(n6701)) /* synthesis lut_function=(A (B)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(54[9:21])
    defparam i1_2_lut_rep_32.init = 16'h8888;
    LUT4 i3452_2_lut (.A(lcd_payload_i[13]), .B(lcd_dataTrue_commandFalse_i_N_146_derived_3), 
         .Z(lcd_payload_i[13])) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(246[3] 253[10])
    defparam i3452_2_lut.init = 16'h2222;
    CCU2D sub_713_add_2_17 (.A0(count[15]), .B0(n6844), .C0(n5303), .D0(synch_rst_c), 
          .A1(count[16]), .B1(waitcounter[16]), .C1(GND_net), .D1(GND_net), 
          .CIN(n5700), .COUT(n5701));
    defparam sub_713_add_2_17.INIT0 = 16'h55a9;
    defparam sub_713_add_2_17.INIT1 = 16'h5999;
    defparam sub_713_add_2_17.INJECT1_0 = "NO";
    defparam sub_713_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_713_add_2_15 (.A0(count[13]), .B0(waitcounter[6]), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(waitcounter[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n5699), .COUT(n5700));
    defparam sub_713_add_2_15.INIT0 = 16'h5999;
    defparam sub_713_add_2_15.INIT1 = 16'h5999;
    defparam sub_713_add_2_15.INJECT1_0 = "NO";
    defparam sub_713_add_2_15.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_adj_12 (.A(synch_rst_c), .B(n6699), .C(n5303), 
         .D(n6832), .Z(n6832)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_12.init = 16'h1110;
    CCU2D sub_713_add_2_13 (.A0(count[11]), .B0(waitcounter[16]), .C0(GND_net), 
          .D0(GND_net), .A1(waitcounter_23__N_86[12]), .B1(synch_rst_c), 
          .C1(count[12]), .D1(GND_net), .CIN(n5698), .COUT(n5699));
    defparam sub_713_add_2_13.INIT0 = 16'h5999;
    defparam sub_713_add_2_13.INIT1 = 16'h2d2d;
    defparam sub_713_add_2_13.INJECT1_0 = "NO";
    defparam sub_713_add_2_13.INJECT1_1 = "NO";
    LUT4 lcd_reset_I_0_1_lut (.A(lcd_reset_c), .Z(leds_c_1)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(222[14:27])
    defparam lcd_reset_I_0_1_lut.init = 16'h5555;
    CCU2D sub_713_add_2_11 (.A0(count[9]), .B0(waitcounter[7]), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(waitcounter[16]), .C1(GND_net), 
          .D1(GND_net), .CIN(n5697), .COUT(n5698));
    defparam sub_713_add_2_11.INIT0 = 16'h5999;
    defparam sub_713_add_2_11.INIT1 = 16'h5999;
    defparam sub_713_add_2_11.INJECT1_0 = "NO";
    defparam sub_713_add_2_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_13 (.A(lcd_dataTrue_commandFalse_i_N_146_derived_3), 
         .B(lcd_payload_i[1]), .Z(lcd_payload_i[1])) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_13.init = 16'h4444;
    LUT4 i3893_4_lut (.A(NS_vivaz_state[0]), .B(PS_vivaz_state[2]), .C(PS_vivaz_state[1]), 
         .D(n6700), .Z(n5552)) /* synthesis lut_function=(A (B (C)+!B !(C+(D)))+!A (B (C))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(40[9:23])
    defparam i3893_4_lut.init = 16'hc0c2;
    LUT4 i2_3_lut_4_lut_adj_14 (.A(PS_lcd_state[1]), .B(lcd_dataTrue_commandFalse_i_N_146), 
         .C(PS_lcd_state[0]), .D(PS_lcd_state[2]), .Z(n5280)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(130[3] 137[10])
    defparam i2_3_lut_4_lut_adj_14.init = 16'h0020;
    FD1S1I i2773 (.D(lcd_payload_i[13]), .CK(synch_rst_c_derived_17), .CD(synch_rst_c), 
           .Q(lcd_LCDBus_c_13));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(118[3] 124[10])
    defparam i2773.GSR = "DISABLED";
    CCU2D sub_713_add_2_9 (.A0(count[7]), .B0(waitcounter[7]), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(waitcounter[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n5696), .COUT(n5697));
    defparam sub_713_add_2_9.INIT0 = 16'h5999;
    defparam sub_713_add_2_9.INIT1 = 16'h5999;
    defparam sub_713_add_2_9.INJECT1_0 = "NO";
    defparam sub_713_add_2_9.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut_4_lut (.A(lcd_busy_i), .B(NS_vivaz_state[1]), .C(PS_vivaz_state[2]), 
         .D(lcd_go_i), .Z(n5903)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(118[3] 124[10])
    defparam i2_3_lut_4_lut_4_lut.init = 16'hfdfc;
    PFUMX i4689 (.BLUT(n6659), .ALUT(n6658), .C0(lcd_dataTrue_commandFalse_i_N_146), 
          .Z(lcd_reset_N_14));
    FD1S1I i2770 (.D(lcd_payload_i[14]), .CK(synch_rst_c_derived_17), .CD(synch_rst_c), 
           .Q(lcd_LCDBus_c_14));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(118[3] 124[10])
    defparam i2770.GSR = "DISABLED";
    LUT4 i2_4_lut_adj_15 (.A(n5284), .B(lcd_dataTrue_commandFalse_i_N_146), 
         .C(PS_lcd_state[0]), .D(PS_lcd_state[2]), .Z(lcd_dataTrue_commandFalse_i_N_146_derived_4)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(18[3:12])
    defparam i2_4_lut_adj_15.init = 16'hefee;
    LUT4 i3_4_lut_4_lut (.A(lcd_busy_i), .B(lcd_dataTrue_commandFalse_i_N_146), 
         .C(NS_lcd_state[0]), .D(PS_lcd_state[2]), .Z(n5907)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(118[3] 124[10])
    defparam i3_4_lut_4_lut.init = 16'hfff7;
    LUT4 i1_4_lut_adj_16 (.A(synch_rst_c), .B(n5903), .C(PS_vivaz_state[1]), 
         .D(PS_vivaz_state[0]), .Z(NS_vivaz_state[1])) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(40[9:23])
    defparam i1_4_lut_adj_16.init = 16'h0450;
    CCU2D sub_713_add_2_7 (.A0(count[5]), .B0(waitcounter[5]), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(waitcounter[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n5695), .COUT(n5696));
    defparam sub_713_add_2_7.INIT0 = 16'h5999;
    defparam sub_713_add_2_7.INIT1 = 16'h5999;
    defparam sub_713_add_2_7.INJECT1_0 = "NO";
    defparam sub_713_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_713_add_2_5 (.A0(count[3]), .B0(n6832), .C0(n5303), .D0(synch_rst_c), 
          .A1(count[4]), .B1(n6835), .C1(n5303), .D1(synch_rst_c), .CIN(n5694), 
          .COUT(n5695));
    defparam sub_713_add_2_5.INIT0 = 16'h55a9;
    defparam sub_713_add_2_5.INIT1 = 16'h55a9;
    defparam sub_713_add_2_5.INJECT1_0 = "NO";
    defparam sub_713_add_2_5.INJECT1_1 = "NO";
    LUT4 n6666_bdd_4_lut (.A(n6666), .B(lcd_dataTrue_commandFalse_i_N_146), 
         .C(n6665), .D(PS_lcd_state[2]), .Z(waitcounter_23__N_86[12])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;
    defparam n6666_bdd_4_lut.init = 16'hf022;
    PFUMX i4687 (.BLUT(n6653), .ALUT(n6652), .C0(lcd_busy_i), .Z(n6654));
    CCU2D sub_713_add_2_3 (.A0(count[1]), .B0(waitcounter[1]), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(waitcounter[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n5693), .COUT(n5694));
    defparam sub_713_add_2_3.INIT0 = 16'h5999;
    defparam sub_713_add_2_3.INIT1 = 16'h5999;
    defparam sub_713_add_2_3.INJECT1_0 = "NO";
    defparam sub_713_add_2_3.INJECT1_1 = "NO";
    LUT4 i199_2_lut_rep_34 (.A(lcd_dataTrue_commandFalse_i_N_146), .B(PS_lcd_state[1]), 
         .Z(n6703)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i199_2_lut_rep_34.init = 16'heeee;
    FD1S1I i2803 (.D(lcd_payload_i[9]), .CK(synch_rst_c_derived_17), .CD(synch_rst_c), 
           .Q(lcd_LCDBus_c_9));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(118[3] 124[10])
    defparam i2803.GSR = "DISABLED";
    LUT4 i2_3_lut_4_lut_4_lut_adj_17 (.A(lcd_busy_i), .B(leds_c_6), .C(synch_rst_c), 
         .D(lcd_go_i), .Z(lcd_busy_i_derived_2)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(118[3] 124[10])
    defparam i2_3_lut_4_lut_4_lut_adj_17.init = 16'hfdfc;
    LUT4 i4570_2_lut_rep_27_3_lut_4_lut (.A(lcd_dataTrue_commandFalse_i_N_146), 
         .B(PS_lcd_state[1]), .C(synch_rst_c), .D(PS_lcd_state[2]), .Z(n6696)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i4570_2_lut_rep_27_3_lut_4_lut.init = 16'h0001;
    LUT4 i2_2_lut_3_lut_3_lut (.A(lcd_busy_i), .B(PS_vivaz_state[2]), .C(lcd_go_i), 
         .Z(n6_adj_1)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(118[3] 124[10])
    defparam i2_2_lut_3_lut_3_lut.init = 16'h1010;
    FD1S1I i2764 (.D(lcd_payload_i[15]), .CK(synch_rst_c_derived_17), .CD(synch_rst_c), 
           .Q(lcd_LCDBus_c_15));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(118[3] 124[10])
    defparam i2764.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(lcd_dataTrue_commandFalse_i_N_146), .B(PS_lcd_state[1]), 
         .C(PS_lcd_state[0]), .D(PS_lcd_state[2]), .Z(leds_c_7)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_31_2_lut (.A(lcd_busy_i), .B(lcd_go_i), .Z(n6700)) /* synthesis lut_function=(!(A+!(B))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(118[3] 124[10])
    defparam i1_2_lut_rep_31_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_4_lut_adj_18 (.A(synch_rst_c), .B(n6699), .C(PS_lcd_state[0]), 
         .D(waitcounter[1]), .Z(waitcounter[1])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut_adj_18.init = 16'h0100;
    PFUMX i3706 (.BLUT(n5364), .ALUT(n93), .C0(PS_lcd_state[0]), .Z(n6847));
    LUT4 i1_2_lut_4_lut_adj_19 (.A(synch_rst_c), .B(n6699), .C(PS_lcd_state[0]), 
         .D(waitcounter[21]), .Z(waitcounter[21])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut_adj_19.init = 16'h0100;
    LUT4 i1_2_lut_rep_30_3_lut (.A(lcd_dataTrue_commandFalse_i_N_146), .B(PS_lcd_state[1]), 
         .C(PS_lcd_state[2]), .Z(n6699)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_30_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_4_lut_adj_20 (.A(synch_rst_c), .B(n6699), .C(PS_lcd_state[0]), 
         .D(waitcounter[22]), .Z(waitcounter[22])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut_adj_20.init = 16'h0100;
    FD1P3AX PS_lcd_state_i0_i1 (.D(NS_lcd_state[1]), .SP(clk133_enable_4), 
            .CK(clk133), .Q(PS_lcd_state[1])) /* synthesis lse_init_val=0 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(130[3] 137[10])
    defparam PS_lcd_state_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_37 (.A(PS_lcd_state[0]), .B(PS_lcd_state[2]), .Z(n6706)) /* synthesis lut_function=(A+(B)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(130[3] 137[10])
    defparam i1_2_lut_rep_37.init = 16'heeee;
    LUT4 i18_4_lut_4_lut (.A(PS_vivaz_state[1]), .B(PS_vivaz_state[0]), 
         .C(PS_vivaz_state[2]), .D(lcd_wr_c), .Z(lcd_wr_N_7)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A !(C (D)))) */ ;
    defparam i18_4_lut_4_lut.init = 16'h7a0a;
    LUT4 i1_2_lut_3_lut (.A(synch_rst_c), .B(PS_vivaz_state[2]), .C(PS_vivaz_state[1]), 
         .Z(synch_rst_c_derived_4)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(18[3:12])
    defparam i1_2_lut_3_lut.init = 16'hefef;
    CCU2D sub_713_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[0]), .B1(waitcounter[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n5693));
    defparam sub_713_add_2_1.INIT0 = 16'h0000;
    defparam sub_713_add_2_1.INIT1 = 16'h5999;
    defparam sub_713_add_2_1.INJECT1_0 = "NO";
    defparam sub_713_add_2_1.INJECT1_1 = "NO";
    FD1P3AX PS_lcd_state_i0_i2 (.D(NS_lcd_state[2]), .SP(clk133_enable_4), 
            .CK(clk133), .Q(PS_lcd_state[2])) /* synthesis lse_init_val=0 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(130[3] 137[10])
    defparam PS_lcd_state_i0_i2.GSR = "ENABLED";
    FD1P3AX PS_lcd_state_i0_i3 (.D(NS_lcd_state[3]), .SP(clk133_enable_4), 
            .CK(clk133), .Q(lcd_dataTrue_commandFalse_i_N_146)) /* synthesis lse_init_val=0 */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(130[3] 137[10])
    defparam PS_lcd_state_i0_i3.GSR = "ENABLED";
    FD1S1I i2761 (.D(lcd_dataTrue_commandFalse_i), .CK(synch_rst_c_derived_15), 
           .CD(synch_rst_c), .Q(lcd_rs_c));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(118[3] 124[10])
    defparam i2761.GSR = "DISABLED";
    LUT4 n6654_bdd_3_lut_4_lut (.A(PS_lcd_state[0]), .B(PS_lcd_state[1]), 
         .C(PS_lcd_state[2]), .D(n6654), .Z(n6655)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam n6654_bdd_3_lut_4_lut.init = 16'h7f70;
    FD1S1I i2758 (.D(lcd_dataTrue_commandFalse_i_N_146), .CK(lcd_dataTrue_commandFalse_i_N_146_derived_3), 
           .CD(synch_rst_c), .Q(lcd_dataTrue_commandFalse_i));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(246[3] 253[10])
    defparam i2758.GSR = "DISABLED";
    FD1S1I i2752 (.D(NS_vivaz_state_2__N_35[2]), .CK(lcd_busy_i_derived_2), 
           .CD(synch_rst_c), .Q(NS_vivaz_state[2]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(118[3] 124[10])
    defparam i2752.GSR = "DISABLED";
    LUT4 i3448_2_lut (.A(lcd_payload_i[9]), .B(lcd_dataTrue_commandFalse_i_N_146_derived_3), 
         .Z(lcd_payload_i[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(246[3] 253[10])
    defparam i3448_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_4_lut_adj_21 (.A(synch_rst_c), .B(n6699), .C(PS_lcd_state[0]), 
         .D(waitcounter[5]), .Z(waitcounter[5])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut_adj_21.init = 16'h0100;
    FD1S1I i2749 (.D(lcd_reset_N_14), .CK(lcd_dataTrue_commandFalse_i_N_146_derived_4), 
           .CD(synch_rst_c), .Q(lcd_reset_c));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(246[3] 253[10])
    defparam i2749.GSR = "DISABLED";
    LUT4 i3447_2_lut (.A(lcd_payload_i[8]), .B(lcd_dataTrue_commandFalse_i_N_146_derived_3), 
         .Z(lcd_payload_i[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(246[3] 253[10])
    defparam i3447_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_22 (.A(synch_rst_c), .B(PS_vivaz_state[0]), .C(PS_vivaz_state[1]), 
         .D(PS_vivaz_state[2]), .Z(synch_rst_c_derived_17)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(18[3:12])
    defparam i1_4_lut_adj_22.init = 16'haaba;
    FD1S1I i2743 (.D(NS_lcd_state_3__N_54[1]), .CK(PS_lcd_state_1_derived_5), 
           .CD(synch_rst_c), .Q(NS_lcd_state[1]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(246[3] 253[10])
    defparam i2743.GSR = "DISABLED";
    LUT4 i15_2_lut (.A(PS_lcd_state[0]), .B(PS_lcd_state[1]), .Z(NS_lcd_state_3__N_54[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i15_2_lut.init = 16'h6666;
    FD1S1J i2740 (.D(lcd_wr_N_7), .CK(PS_vivaz_state_0_derived_1), .PD(synch_rst_c), 
           .Q(lcd_wr_c));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(118[3] 124[10])
    defparam i2740.GSR = "DISABLED";
    PFUMX i4713 (.BLUT(n6710), .ALUT(n6711), .C0(lcd_dataTrue_commandFalse_i_N_146), 
          .Z(lcd_dataTrue_commandFalse_i_N_146_derived_3));
    VLO i1 (.Z(GND_net));
    FD1S1I i2735 (.D(lcd_payload_i[0]), .CK(synch_rst_c_derived_17), .CD(synch_rst_c), 
           .Q(lcd_LCDBus_c_0));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(118[3] 124[10])
    defparam i2735.GSR = "DISABLED";
    FD1S1I i2728 (.D(lcd_payload_i[1]), .CK(synch_rst_c_derived_17), .CD(synch_rst_c), 
           .Q(lcd_LCDBus_c_1));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(118[3] 124[10])
    defparam i2728.GSR = "DISABLED";
    GSR GSR_INST (.GSR(n5295));
    PFUMX i4711 (.BLUT(n6707), .ALUT(n6708), .C0(PS_vivaz_state[0]), .Z(lcd_busy_i_N_16));
    FD1S1I i2732 (.D(NS_lcd_state_3__N_54[3]), .CK(PS_lcd_state_1_derived_5), 
           .CD(synch_rst_c), .Q(NS_lcd_state[3]));   // z:/github/lattice/sony vivaz lcd driver/main.vhd(246[3] 253[10])
    defparam i2732.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_23 (.A(lcd_dataTrue_commandFalse_i_N_146), .B(PS_lcd_state[1]), 
         .C(PS_lcd_state[2]), .Z(n93)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_23.init = 16'h1010;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i4330_2_lut (.A(PS_lcd_state[2]), .B(synch_rst_c), .Z(n6116)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4330_2_lut.init = 16'heeee;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1_4_lut_adj_24 (.A(PS_vivaz_state[1]), .B(n6705), .C(PS_vivaz_state[0]), 
         .D(n6700), .Z(PS_vivaz_state_0_derived_1)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(18[3:12])
    defparam i1_4_lut_adj_24.init = 16'hfcec;
    LUT4 i3454_2_lut (.A(lcd_payload_i[15]), .B(lcd_dataTrue_commandFalse_i_N_146_derived_3), 
         .Z(lcd_payload_i[15])) /* synthesis lut_function=(!((B)+!A)) */ ;   // z:/github/lattice/sony vivaz lcd driver/main.vhd(246[3] 253[10])
    defparam i3454_2_lut.init = 16'h2222;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

