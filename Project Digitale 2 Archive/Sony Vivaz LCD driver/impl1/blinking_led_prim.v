// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.7.0.96.1
// Netlist written on Wed Mar 09 08:52:00 2016
//
// Verilog Description of module blinking_led
//

module blinking_led (led, leds);   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(7[8:20])
    output led;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(9[7:10])
    output [7:0]leds;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(10[4:8])
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(15[12:15])
    
    wire GND_net, VCC_net, led_c, leds_c, n175, clk_enable_2;
    wire [24:0]count;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(31[16:21])
    
    wire n9, led_N_61, n25, n24, n23, n22, n21, n245, n244, 
        n20, n243, n242, led_N_62, n8, n6, n10, n106, n107, 
        n108, n109, n110, n111, n112, n113, n114, n115, n116, 
        n117, n118, n119, n120, n121, n122, n123, n124, n125, 
        n126, n127, n128, n129, n130, n248, n226, n241, n240, 
        n239, n238, n237, n236, n235, n234;
    
    VHI i2 (.Z(VCC_net));
    FD1S3AX led_18 (.D(led_N_62), .CK(clk), .Q(led_c));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(33[7] 49[14])
    defparam led_18.GSR = "ENABLED";
    OB led_pad (.I(led_c), .O(led));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(9[7:10])
    FD1S3IX count_34__i0 (.D(n130), .CK(clk), .CD(clk_enable_2), .Q(n25)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i0.GSR = "ENABLED";
    OSCH OSCInst0 (.STDBY(GND_net), .OSC(clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCInst0.NOM_FREQ = "133.00";
    FD1P3AX leds__i1 (.D(led_c), .SP(clk_enable_2), .CK(clk), .Q(n175));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(33[7] 49[14])
    defparam leds__i1.GSR = "ENABLED";
    CCU2D count_34_add_4_25 (.A0(count[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n245), .S0(n107), .S1(n106));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34_add_4_25.INIT0 = 16'hfaaa;
    defparam count_34_add_4_25.INIT1 = 16'hfaaa;
    defparam count_34_add_4_25.INJECT1_0 = "NO";
    defparam count_34_add_4_25.INJECT1_1 = "NO";
    OB leds_pad_7 (.I(leds_c), .O(leds[7]));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(10[4:8])
    FD1P3AX leds__i2 (.D(led_N_61), .SP(clk_enable_2), .CK(clk), .Q(leds_c));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(33[7] 49[14])
    defparam leds__i2.GSR = "ENABLED";
    LUT4 i3_3_lut (.A(count[8]), .B(count[6]), .C(count[7]), .Z(n8)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i3_3_lut.init = 16'hfefe;
    CCU2D count_34_add_4_23 (.A0(count[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n244), .COUT(n245), .S0(n109), .S1(n108));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34_add_4_23.INIT0 = 16'hfaaa;
    defparam count_34_add_4_23.INIT1 = 16'hfaaa;
    defparam count_34_add_4_23.INJECT1_0 = "NO";
    defparam count_34_add_4_23.INJECT1_1 = "NO";
    CCU2D count_34_add_4_21 (.A0(count[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n243), .COUT(n244), .S0(n111), .S1(n110));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34_add_4_21.INIT0 = 16'hfaaa;
    defparam count_34_add_4_21.INIT1 = 16'hfaaa;
    defparam count_34_add_4_21.INJECT1_0 = "NO";
    defparam count_34_add_4_21.INJECT1_1 = "NO";
    CCU2D count_34_add_4_19 (.A0(count[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n242), .COUT(n243), .S0(n113), .S1(n112));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34_add_4_19.INIT0 = 16'hfaaa;
    defparam count_34_add_4_19.INIT1 = 16'hfaaa;
    defparam count_34_add_4_19.INJECT1_0 = "NO";
    defparam count_34_add_4_19.INJECT1_1 = "NO";
    LUT4 led_I_0_1_lut (.A(led_c), .Z(led_N_61)) /* synthesis lut_function=(!(A)) */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(47[15:22])
    defparam led_I_0_1_lut.init = 16'h5555;
    LUT4 i1_4_lut (.A(count[9]), .B(count[11]), .C(n8), .D(count[10]), 
         .Z(n6)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hccc8;
    CCU2D count_34_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n241), .COUT(n242), .S0(n115), .S1(n114));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34_add_4_17.INIT0 = 16'hfaaa;
    defparam count_34_add_4_17.INIT1 = 16'hfaaa;
    defparam count_34_add_4_17.INJECT1_0 = "NO";
    defparam count_34_add_4_17.INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(count[13]), .B(count[12]), .C(count[14]), .D(n6), 
         .Z(n248)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    FD1S3IX count_34__i1 (.D(n129), .CK(clk), .CD(clk_enable_2), .Q(n24)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i1.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(led_c), .B(clk_enable_2), .Z(led_N_62)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    TSALL TSALL_INST (.TSALL(GND_net));
    GSR GSR_INST (.GSR(VCC_net));
    FD1S3IX count_34__i24 (.D(n106), .CK(clk), .CD(clk_enable_2), .Q(count[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i24.GSR = "ENABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i4_4_lut_adj_1 (.A(n226), .B(count[19]), .C(count[21]), .D(count[20]), 
         .Z(n10)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_1.init = 16'h8000;
    VLO i1 (.Z(GND_net));
    LUT4 i105_4_lut (.A(n9), .B(count[24]), .C(count[23]), .D(n10), 
         .Z(clk_enable_2)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i105_4_lut.init = 16'hc8c0;
    CCU2D count_34_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n240), .COUT(n241), .S0(n117), .S1(n116));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34_add_4_15.INIT0 = 16'hfaaa;
    defparam count_34_add_4_15.INIT1 = 16'hfaaa;
    defparam count_34_add_4_15.INJECT1_0 = "NO";
    defparam count_34_add_4_15.INJECT1_1 = "NO";
    CCU2D count_34_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n239), .COUT(n240), .S0(n119), .S1(n118));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34_add_4_13.INIT0 = 16'hfaaa;
    defparam count_34_add_4_13.INIT1 = 16'hfaaa;
    defparam count_34_add_4_13.INJECT1_0 = "NO";
    defparam count_34_add_4_13.INJECT1_1 = "NO";
    CCU2D count_34_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n238), .COUT(n239), .S0(n121), .S1(n120));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34_add_4_11.INIT0 = 16'hfaaa;
    defparam count_34_add_4_11.INIT1 = 16'hfaaa;
    defparam count_34_add_4_11.INJECT1_0 = "NO";
    defparam count_34_add_4_11.INJECT1_1 = "NO";
    CCU2D count_34_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n237), .COUT(n238), .S0(n123), .S1(n122));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34_add_4_9.INIT0 = 16'hfaaa;
    defparam count_34_add_4_9.INIT1 = 16'hfaaa;
    defparam count_34_add_4_9.INJECT1_0 = "NO";
    defparam count_34_add_4_9.INJECT1_1 = "NO";
    CCU2D count_34_add_4_7 (.A0(n20), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n236), 
          .COUT(n237), .S0(n125), .S1(n124));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34_add_4_7.INIT0 = 16'hfaaa;
    defparam count_34_add_4_7.INIT1 = 16'hfaaa;
    defparam count_34_add_4_7.INJECT1_0 = "NO";
    defparam count_34_add_4_7.INJECT1_1 = "NO";
    CCU2D count_34_add_4_5 (.A0(n22), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n21), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n235), 
          .COUT(n236), .S0(n127), .S1(n126));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34_add_4_5.INIT0 = 16'hfaaa;
    defparam count_34_add_4_5.INIT1 = 16'hfaaa;
    defparam count_34_add_4_5.INJECT1_0 = "NO";
    defparam count_34_add_4_5.INJECT1_1 = "NO";
    CCU2D count_34_add_4_3 (.A0(n24), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n23), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n234), 
          .COUT(n235), .S0(n129), .S1(n128));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34_add_4_3.INIT0 = 16'hfaaa;
    defparam count_34_add_4_3.INIT1 = 16'hfaaa;
    defparam count_34_add_4_3.INJECT1_0 = "NO";
    defparam count_34_add_4_3.INJECT1_1 = "NO";
    CCU2D count_34_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n25), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n234), .S1(n130));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34_add_4_1.INIT0 = 16'hF000;
    defparam count_34_add_4_1.INIT1 = 16'h0555;
    defparam count_34_add_4_1.INJECT1_0 = "NO";
    defparam count_34_add_4_1.INJECT1_1 = "NO";
    FD1S3IX count_34__i23 (.D(n107), .CK(clk), .CD(clk_enable_2), .Q(count[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i23.GSR = "ENABLED";
    FD1S3IX count_34__i22 (.D(n108), .CK(clk), .CD(clk_enable_2), .Q(count[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i22.GSR = "ENABLED";
    FD1S3IX count_34__i21 (.D(n109), .CK(clk), .CD(clk_enable_2), .Q(count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i21.GSR = "ENABLED";
    FD1S3IX count_34__i20 (.D(n110), .CK(clk), .CD(clk_enable_2), .Q(count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i20.GSR = "ENABLED";
    FD1S3IX count_34__i19 (.D(n111), .CK(clk), .CD(clk_enable_2), .Q(count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i19.GSR = "ENABLED";
    FD1S3IX count_34__i18 (.D(n112), .CK(clk), .CD(clk_enable_2), .Q(count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i18.GSR = "ENABLED";
    FD1S3IX count_34__i17 (.D(n113), .CK(clk), .CD(clk_enable_2), .Q(count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i17.GSR = "ENABLED";
    FD1S3IX count_34__i16 (.D(n114), .CK(clk), .CD(clk_enable_2), .Q(count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i16.GSR = "ENABLED";
    FD1S3IX count_34__i15 (.D(n115), .CK(clk), .CD(clk_enable_2), .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i15.GSR = "ENABLED";
    FD1S3IX count_34__i14 (.D(n116), .CK(clk), .CD(clk_enable_2), .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i14.GSR = "ENABLED";
    FD1S3IX count_34__i13 (.D(n117), .CK(clk), .CD(clk_enable_2), .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i13.GSR = "ENABLED";
    FD1S3IX count_34__i12 (.D(n118), .CK(clk), .CD(clk_enable_2), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i12.GSR = "ENABLED";
    FD1S3IX count_34__i11 (.D(n119), .CK(clk), .CD(clk_enable_2), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i11.GSR = "ENABLED";
    FD1S3IX count_34__i10 (.D(n120), .CK(clk), .CD(clk_enable_2), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i10.GSR = "ENABLED";
    FD1S3IX count_34__i9 (.D(n121), .CK(clk), .CD(clk_enable_2), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i9.GSR = "ENABLED";
    FD1S3IX count_34__i8 (.D(n122), .CK(clk), .CD(clk_enable_2), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i8.GSR = "ENABLED";
    FD1S3IX count_34__i7 (.D(n123), .CK(clk), .CD(clk_enable_2), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i7.GSR = "ENABLED";
    FD1S3IX count_34__i6 (.D(n124), .CK(clk), .CD(clk_enable_2), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i6.GSR = "ENABLED";
    FD1S3IX count_34__i5 (.D(n125), .CK(clk), .CD(clk_enable_2), .Q(n20)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i5.GSR = "ENABLED";
    FD1S3IX count_34__i4 (.D(n126), .CK(clk), .CD(clk_enable_2), .Q(n21)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i4.GSR = "ENABLED";
    FD1S3IX count_34__i3 (.D(n127), .CK(clk), .CD(clk_enable_2), .Q(n22)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i3.GSR = "ENABLED";
    FD1S3IX count_34__i2 (.D(n128), .CK(clk), .CD(clk_enable_2), .Q(n23)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(35[22:27])
    defparam count_34__i2.GSR = "ENABLED";
    OB leds_pad_6 (.I(n175), .O(leds[6]));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(10[4:8])
    OB leds_pad_5 (.I(leds_c), .O(leds[5]));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(10[4:8])
    OB leds_pad_4 (.I(n175), .O(leds[4]));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(10[4:8])
    OB leds_pad_3 (.I(leds_c), .O(leds[3]));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(10[4:8])
    OB leds_pad_2 (.I(n175), .O(leds[2]));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(10[4:8])
    OB leds_pad_1 (.I(leds_c), .O(leds[1]));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(10[4:8])
    OB leds_pad_0 (.I(n175), .O(leds[0]));   // d:/github/lattice/sony vivaz lcd driver/blinky.vhd(10[4:8])
    LUT4 i3_2_lut (.A(count[18]), .B(count[22]), .Z(n9)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut.init = 16'h8888;
    LUT4 i99_4_lut (.A(n248), .B(count[17]), .C(count[16]), .D(count[15]), 
         .Z(n226)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i99_4_lut.init = 16'hfcec;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

