// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.7.1.502
// Netlist written on Wed May 18 19:01:13 2016
//
// Verilog Description of module lcd_sender
//

module lcd_sender (clk, rst, lcd_bus, lcd_write, lcd_rs, go, data1Command0, 
            busy, payload);   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(8[8:18])
    input clk;   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(10[3:6])
    input rst;   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(11[3:6])
    output [15:0]lcd_bus;   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(12[3:10])
    output lcd_write;   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(13[3:12])
    output lcd_rs;   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(14[3:9])
    input go;   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(15[3:5])
    input data1Command0;   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(16[3:16])
    output busy /* synthesis .original_dir=IN_OUT */ ;   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(17[3:7])
    input [15:0]payload;   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(18[3:10])
    
    wire clk_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_c */ ;   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(10[3:6])
    
    wire VCC_net, GND_net, rst_c, lcd_bus_c_15, lcd_bus_c_14, lcd_bus_c_13, 
        lcd_bus_c_12, lcd_bus_c_11, lcd_bus_c_10, lcd_bus_c_9, lcd_bus_c_8, 
        lcd_bus_c_7, lcd_bus_c_6, lcd_bus_c_5, lcd_bus_c_4, lcd_bus_c_3, 
        lcd_bus_c_2, lcd_bus_c_1, lcd_bus_c_0, lcd_write_c, lcd_rs_c, 
        go_c, data1Command0_c, busy_c, payload_c_15, payload_c_14, 
        payload_c_13, payload_c_12, payload_c_11, payload_c_10, payload_c_9, 
        payload_c_8, payload_c_7, payload_c_6, payload_c_5, payload_c_4, 
        payload_c_3, payload_c_2, payload_c_1, payload_c_0;
    wire [2:0]PS_vivaz_state;   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(24[9:23])
    
    wire lcd_write_N_23, clk_c_enable_18;
    wire [2:0]PS_vivaz_state_2__N_17;
    
    wire n304, clk_c_enable_1, n300, n324, n273, clk_c_enable_2, 
        clk_c_enable_19, n323;
    
    VLO i272 (.Z(GND_net));
    LUT4 i19_4_lut (.A(PS_vivaz_state[1]), .B(PS_vivaz_state[0]), .C(PS_vivaz_state[2]), 
         .D(n324), .Z(n300)) /* synthesis lut_function=(!(A (B)+!A !(B (C+(D))))) */ ;   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam i19_4_lut.init = 16'h6662;
    OB lcd_bus_pad_15 (.I(lcd_bus_c_15), .O(lcd_bus[15]));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(12[3:10])
    FD1P3AX busy_28 (.D(n323), .SP(clk_c_enable_1), .CK(clk_c), .Q(busy_c));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam busy_28.GSR = "ENABLED";
    FD1P3AX lcd_rs_29 (.D(data1Command0_c), .SP(clk_c_enable_2), .CK(clk_c), 
            .Q(lcd_rs_c));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam lcd_rs_29.GSR = "ENABLED";
    FD1S3AY PS_vivaz_state_i0 (.D(PS_vivaz_state_2__N_17[0]), .CK(clk_c), 
            .Q(PS_vivaz_state[0])) /* synthesis lse_init_val=0 */ ;   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam PS_vivaz_state_i0.GSR = "ENABLED";
    FD1P3AX lcd_bus_i2 (.D(payload_c_1), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_1));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam lcd_bus_i2.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut (.A(PS_vivaz_state[2]), .B(PS_vivaz_state[1]), .C(n324), 
         .D(PS_vivaz_state[0]), .Z(clk_c_enable_18)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam i1_4_lut_4_lut.init = 16'hdc00;
    OB lcd_bus_pad_11 (.I(lcd_bus_c_11), .O(lcd_bus[11]));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(12[3:10])
    OB lcd_bus_pad_12 (.I(lcd_bus_c_12), .O(lcd_bus[12]));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(12[3:10])
    OB lcd_bus_pad_13 (.I(lcd_bus_c_13), .O(lcd_bus[13]));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(12[3:10])
    OB lcd_bus_pad_14 (.I(lcd_bus_c_14), .O(lcd_bus[14]));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(12[3:10])
    OB lcd_bus_pad_10 (.I(lcd_bus_c_10), .O(lcd_bus[10]));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(12[3:10])
    OB lcd_bus_pad_9 (.I(lcd_bus_c_9), .O(lcd_bus[9]));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(12[3:10])
    OB lcd_bus_pad_8 (.I(lcd_bus_c_8), .O(lcd_bus[8]));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(12[3:10])
    OB lcd_bus_pad_7 (.I(lcd_bus_c_7), .O(lcd_bus[7]));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(12[3:10])
    OB lcd_bus_pad_6 (.I(lcd_bus_c_6), .O(lcd_bus[6]));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(12[3:10])
    OB lcd_bus_pad_5 (.I(lcd_bus_c_5), .O(lcd_bus[5]));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(12[3:10])
    OB lcd_bus_pad_4 (.I(lcd_bus_c_4), .O(lcd_bus[4]));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(12[3:10])
    OB lcd_bus_pad_3 (.I(lcd_bus_c_3), .O(lcd_bus[3]));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(12[3:10])
    OB lcd_bus_pad_2 (.I(lcd_bus_c_2), .O(lcd_bus[2]));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(12[3:10])
    OB lcd_bus_pad_1 (.I(lcd_bus_c_1), .O(lcd_bus[1]));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(12[3:10])
    OB lcd_bus_pad_0 (.I(lcd_bus_c_0), .O(lcd_bus[0]));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(12[3:10])
    OB lcd_write_pad (.I(lcd_write_c), .O(lcd_write));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(13[3:12])
    OB lcd_rs_pad (.I(lcd_rs_c), .O(lcd_rs));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(14[3:9])
    OB busy_pad (.I(busy_c), .O(busy));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(17[3:7])
    IB clk_pad (.I(clk), .O(clk_c));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(10[3:6])
    IB rst_pad (.I(rst), .O(rst_c));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(11[3:6])
    IB go_pad (.I(go), .O(go_c));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(15[3:5])
    IB data1Command0_pad (.I(data1Command0), .O(data1Command0_c));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(16[3:16])
    IB payload_pad_15 (.I(payload[15]), .O(payload_c_15));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(18[3:10])
    IB payload_pad_14 (.I(payload[14]), .O(payload_c_14));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(18[3:10])
    IB payload_pad_13 (.I(payload[13]), .O(payload_c_13));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(18[3:10])
    IB payload_pad_12 (.I(payload[12]), .O(payload_c_12));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(18[3:10])
    IB payload_pad_11 (.I(payload[11]), .O(payload_c_11));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(18[3:10])
    IB payload_pad_10 (.I(payload[10]), .O(payload_c_10));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(18[3:10])
    IB payload_pad_9 (.I(payload[9]), .O(payload_c_9));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(18[3:10])
    IB payload_pad_8 (.I(payload[8]), .O(payload_c_8));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(18[3:10])
    IB payload_pad_7 (.I(payload[7]), .O(payload_c_7));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(18[3:10])
    IB payload_pad_6 (.I(payload[6]), .O(payload_c_6));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(18[3:10])
    IB payload_pad_5 (.I(payload[5]), .O(payload_c_5));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(18[3:10])
    IB payload_pad_4 (.I(payload[4]), .O(payload_c_4));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(18[3:10])
    IB payload_pad_3 (.I(payload[3]), .O(payload_c_3));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(18[3:10])
    IB payload_pad_2 (.I(payload[2]), .O(payload_c_2));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(18[3:10])
    IB payload_pad_1 (.I(payload[1]), .O(payload_c_1));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(18[3:10])
    IB payload_pad_0 (.I(payload[0]), .O(payload_c_0));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(18[3:10])
    LUT4 i2_3_lut_4_lut_4_lut (.A(PS_vivaz_state[2]), .B(PS_vivaz_state[0]), 
         .C(n324), .D(PS_vivaz_state[1]), .Z(clk_c_enable_2)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i213_2_lut_2_lut (.A(PS_vivaz_state[2]), .B(PS_vivaz_state[1]), 
         .Z(lcd_write_N_23)) /* synthesis lut_function=(!(A+!(B))) */ ;   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam i213_2_lut_2_lut.init = 16'h4444;
    LUT4 PS_vivaz_state_2__I_0_33_Mux_0_i7_4_lut (.A(PS_vivaz_state[0]), .B(PS_vivaz_state[2]), 
         .C(PS_vivaz_state[1]), .D(n324), .Z(PS_vivaz_state_2__N_17[0])) /* synthesis lut_function=(A (B (C)+!B !(C+(D)))+!A (B+(C))) */ ;   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(34[4] 64[13])
    defparam PS_vivaz_state_2__I_0_33_Mux_0_i7_4_lut.init = 16'hd4d6;
    FD1P3AX lcd_bus_i3 (.D(payload_c_2), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_2));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam lcd_bus_i3.GSR = "ENABLED";
    FD1P3AX lcd_bus_i4 (.D(payload_c_3), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_3));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam lcd_bus_i4.GSR = "ENABLED";
    FD1P3AX lcd_bus_i5 (.D(payload_c_4), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_4));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam lcd_bus_i5.GSR = "ENABLED";
    FD1P3AX lcd_bus_i6 (.D(payload_c_5), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_5));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam lcd_bus_i6.GSR = "ENABLED";
    FD1P3AX lcd_bus_i7 (.D(payload_c_6), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_6));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam lcd_bus_i7.GSR = "ENABLED";
    FD1P3AX lcd_bus_i8 (.D(payload_c_7), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_7));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam lcd_bus_i8.GSR = "ENABLED";
    FD1P3AX lcd_bus_i9 (.D(payload_c_8), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_8));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam lcd_bus_i9.GSR = "ENABLED";
    FD1P3AX lcd_bus_i10 (.D(payload_c_9), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_9));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam lcd_bus_i10.GSR = "ENABLED";
    FD1P3AX lcd_bus_i11 (.D(payload_c_10), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_10));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam lcd_bus_i11.GSR = "ENABLED";
    FD1P3AX lcd_bus_i12 (.D(payload_c_11), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_11));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam lcd_bus_i12.GSR = "ENABLED";
    FD1P3AX lcd_bus_i13 (.D(payload_c_12), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_12));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam lcd_bus_i13.GSR = "ENABLED";
    FD1P3AX lcd_bus_i14 (.D(payload_c_13), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_13));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam lcd_bus_i14.GSR = "ENABLED";
    FD1P3AX lcd_bus_i15 (.D(payload_c_14), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_14));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam lcd_bus_i15.GSR = "ENABLED";
    FD1P3AX lcd_bus_i16 (.D(payload_c_15), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_15));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam lcd_bus_i16.GSR = "ENABLED";
    FD1S3AX PS_vivaz_state_i1 (.D(n300), .CK(clk_c), .Q(PS_vivaz_state[1])) /* synthesis lse_init_val=0 */ ;   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam PS_vivaz_state_i1.GSR = "ENABLED";
    FD1S3AX PS_vivaz_state_i2 (.D(n304), .CK(clk_c), .Q(PS_vivaz_state[2])) /* synthesis lse_init_val=0 */ ;   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam PS_vivaz_state_i2.GSR = "ENABLED";
    LUT4 i19_2_lut_3_lut (.A(PS_vivaz_state[1]), .B(PS_vivaz_state[0]), 
         .C(PS_vivaz_state[2]), .Z(n304)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam i19_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_3_lut_rep_6 (.A(go_c), .B(busy_c), .C(rst_c), .Z(n324)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_3_lut_rep_6.init = 16'h0202;
    LUT4 i220_1_lut (.A(rst_c), .Z(n273)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(11[3:6])
    defparam i220_1_lut.init = 16'h5555;
    LUT4 i271_3_lut (.A(PS_vivaz_state[2]), .B(PS_vivaz_state[1]), .C(PS_vivaz_state[0]), 
         .Z(clk_c_enable_19)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(34[4] 64[13])
    defparam i271_3_lut.init = 16'h0404;
    FD1P3AX lcd_write_27 (.D(lcd_write_N_23), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(lcd_write_c));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam lcd_write_27.GSR = "ENABLED";
    VHI i273 (.Z(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    FD1P3AX lcd_bus_i1 (.D(payload_c_0), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(lcd_bus_c_0));   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam lcd_bus_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_1 (.A(PS_vivaz_state[1]), .B(n324), .C(PS_vivaz_state[2]), 
         .D(PS_vivaz_state[0]), .Z(clk_c_enable_1)) /* synthesis lut_function=(A (C (D))+!A !((C+!(D))+!B)) */ ;
    defparam i1_4_lut_4_lut_adj_1.init = 16'ha400;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    GSR GSR_INST (.GSR(n273));
    LUT4 i94_1_lut_rep_5 (.A(PS_vivaz_state[2]), .Z(n323)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/machxo2700hetestproject/lcd_sender.vhd(33[3] 65[10])
    defparam i94_1_lut_rep_5.init = 16'h5555;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

