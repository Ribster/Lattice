// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.7.1.502
// Netlist written on Fri May 20 12:43:12 2016
//
// Verilog Description of module lcd_sender
//

module lcd_sender (command_data, clk, rst, go, data_in, fsm_state, 
            busy, lcd_wr, lcd_rs, data_out);   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(8[8:18])
    input command_data;   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(11[3:15])
    input clk;   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(11[17:20])
    input rst;   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(11[22:25])
    input go;   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(11[27:29])
    input [15:0]data_in;   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(12[3:10])
    output [1:0]fsm_state;   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(15[3:12])
    output busy;   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(18[3:7])
    output lcd_wr;   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(18[9:15])
    output lcd_rs;   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(18[17:23])
    output [15:0]data_out;   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(19[3:11])
    
    wire clk_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_c */ ;   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(11[17:20])
    
    wire VCC_net, GND_net, command_data_c, rst_c, go_c, data_in_c_15, 
        data_in_c_14, data_in_c_13, data_in_c_12, data_in_c_11, data_in_c_10, 
        data_in_c_9, data_in_c_8, data_in_c_7, data_in_c_6, data_in_c_5, 
        data_in_c_4, data_in_c_3, data_in_c_2, data_in_c_1, data_in_c_0, 
        fsm_state_c_1, busy_c, lcd_wr_c, lcd_rs_c, data_out_c_15, 
        data_out_c_14, data_out_c_13, data_out_c_12, data_out_c_11, 
        data_out_c_10, data_out_c_9, data_out_c_8, data_out_c_7, data_out_c_6, 
        data_out_c_5, data_out_c_4, data_out_c_3, data_out_c_2, data_out_c_1, 
        data_out_c_0;
    wire [1:0]fsm_state_ps_i;   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(25[9:23])
    
    wire last_go, n263, clk_c_enable_19, n257, clk_c_enable_18, clk_c_enable_2, 
        n235, n249;
    
    VLO i202 (.Z(GND_net));
    LUT4 i164_1_lut_rep_3 (.A(fsm_state_c_1), .Z(n263)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(36[3] 55[12])
    defparam i164_1_lut_rep_3.init = 16'h5555;
    FD1S3AX fsm_state_ps_i_i0 (.D(n257), .CK(clk_c), .Q(fsm_state_ps_i[0])) /* synthesis lse_init_val=0 */ ;   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(34[3] 57[10])
    defparam fsm_state_ps_i_i0.GSR = "ENABLED";
    FD1P3AX lcd_rs_28 (.D(command_data_c), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(lcd_rs_c));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(34[3] 57[10])
    defparam lcd_rs_28.GSR = "ENABLED";
    LUT4 i12_4_lut_3_lut_4_lut (.A(last_go), .B(go_c), .C(fsm_state_ps_i[0]), 
         .D(fsm_state_c_1), .Z(clk_c_enable_2)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)+!C !(D))+!B (C (D)))) */ ;   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(38[8:34])
    defparam i12_4_lut_3_lut_4_lut.init = 16'hf004;
    FD1P3AX lcd_wr_31 (.D(n263), .SP(fsm_state_ps_i[0]), .CK(clk_c), .Q(lcd_wr_c));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(34[3] 57[10])
    defparam lcd_wr_31.GSR = "ENABLED";
    FD1P3AX busy_26 (.D(n263), .SP(clk_c_enable_2), .CK(clk_c), .Q(busy_c));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(34[3] 57[10])
    defparam busy_26.GSR = "ENABLED";
    FD1P3AX data_out_i2 (.D(data_in_c_1), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(data_out_c_1));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(34[3] 57[10])
    defparam data_out_i2.GSR = "ENABLED";
    OB fsm_state_pad_1 (.I(fsm_state_c_1), .O(fsm_state[1]));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(15[3:12])
    LUT4 i201_2_lut (.A(fsm_state_ps_i[0]), .B(fsm_state_c_1), .Z(clk_c_enable_19)) /* synthesis lut_function=(!(A+(B))) */ ;   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(36[3] 55[12])
    defparam i201_2_lut.init = 16'h1111;
    OB fsm_state_pad_0 (.I(fsm_state_ps_i[0]), .O(fsm_state[0]));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(15[3:12])
    OB busy_pad (.I(busy_c), .O(busy));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(18[3:7])
    OB lcd_wr_pad (.I(lcd_wr_c), .O(lcd_wr));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(18[9:15])
    OB lcd_rs_pad (.I(lcd_rs_c), .O(lcd_rs));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(18[17:23])
    OB data_out_pad_15 (.I(data_out_c_15), .O(data_out[15]));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(19[3:11])
    OB data_out_pad_14 (.I(data_out_c_14), .O(data_out[14]));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(19[3:11])
    OB data_out_pad_13 (.I(data_out_c_13), .O(data_out[13]));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(19[3:11])
    OB data_out_pad_12 (.I(data_out_c_12), .O(data_out[12]));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(19[3:11])
    OB data_out_pad_11 (.I(data_out_c_11), .O(data_out[11]));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(19[3:11])
    OB data_out_pad_10 (.I(data_out_c_10), .O(data_out[10]));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(19[3:11])
    OB data_out_pad_9 (.I(data_out_c_9), .O(data_out[9]));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(19[3:11])
    OB data_out_pad_8 (.I(data_out_c_8), .O(data_out[8]));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(19[3:11])
    OB data_out_pad_7 (.I(data_out_c_7), .O(data_out[7]));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(19[3:11])
    OB data_out_pad_6 (.I(data_out_c_6), .O(data_out[6]));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(19[3:11])
    OB data_out_pad_5 (.I(data_out_c_5), .O(data_out[5]));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(19[3:11])
    OB data_out_pad_4 (.I(data_out_c_4), .O(data_out[4]));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(19[3:11])
    OB data_out_pad_3 (.I(data_out_c_3), .O(data_out[3]));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(19[3:11])
    OB data_out_pad_2 (.I(data_out_c_2), .O(data_out[2]));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(19[3:11])
    OB data_out_pad_1 (.I(data_out_c_1), .O(data_out[1]));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(19[3:11])
    OB data_out_pad_0 (.I(data_out_c_0), .O(data_out[0]));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(19[3:11])
    IB command_data_pad (.I(command_data), .O(command_data_c));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(11[3:15])
    IB clk_pad (.I(clk), .O(clk_c));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(11[17:20])
    IB rst_pad (.I(rst), .O(rst_c));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(11[22:25])
    IB go_pad (.I(go), .O(go_c));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(11[27:29])
    IB data_in_pad_15 (.I(data_in[15]), .O(data_in_c_15));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(12[3:10])
    IB data_in_pad_14 (.I(data_in[14]), .O(data_in_c_14));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(12[3:10])
    IB data_in_pad_13 (.I(data_in[13]), .O(data_in_c_13));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(12[3:10])
    IB data_in_pad_12 (.I(data_in[12]), .O(data_in_c_12));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(12[3:10])
    IB data_in_pad_11 (.I(data_in[11]), .O(data_in_c_11));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(12[3:10])
    IB data_in_pad_10 (.I(data_in[10]), .O(data_in_c_10));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(12[3:10])
    IB data_in_pad_9 (.I(data_in[9]), .O(data_in_c_9));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(12[3:10])
    IB data_in_pad_8 (.I(data_in[8]), .O(data_in_c_8));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(12[3:10])
    IB data_in_pad_7 (.I(data_in[7]), .O(data_in_c_7));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(12[3:10])
    IB data_in_pad_6 (.I(data_in[6]), .O(data_in_c_6));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(12[3:10])
    IB data_in_pad_5 (.I(data_in[5]), .O(data_in_c_5));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(12[3:10])
    IB data_in_pad_4 (.I(data_in[4]), .O(data_in_c_4));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(12[3:10])
    IB data_in_pad_3 (.I(data_in[3]), .O(data_in_c_3));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(12[3:10])
    IB data_in_pad_2 (.I(data_in[2]), .O(data_in_c_2));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(12[3:10])
    IB data_in_pad_1 (.I(data_in[1]), .O(data_in_c_1));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(12[3:10])
    IB data_in_pad_0 (.I(data_in[0]), .O(data_in_c_0));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(12[3:10])
    VHI i203 (.Z(VCC_net));
    FD1P3AX data_out_i3 (.D(data_in_c_2), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(data_out_c_2));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(34[3] 57[10])
    defparam data_out_i3.GSR = "ENABLED";
    FD1P3AX data_out_i4 (.D(data_in_c_3), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(data_out_c_3));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(34[3] 57[10])
    defparam data_out_i4.GSR = "ENABLED";
    FD1P3AX data_out_i5 (.D(data_in_c_4), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(data_out_c_4));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(34[3] 57[10])
    defparam data_out_i5.GSR = "ENABLED";
    FD1P3AX data_out_i6 (.D(data_in_c_5), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(data_out_c_5));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(34[3] 57[10])
    defparam data_out_i6.GSR = "ENABLED";
    FD1P3AX data_out_i7 (.D(data_in_c_6), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(data_out_c_6));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(34[3] 57[10])
    defparam data_out_i7.GSR = "ENABLED";
    FD1P3AX data_out_i8 (.D(data_in_c_7), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(data_out_c_7));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(34[3] 57[10])
    defparam data_out_i8.GSR = "ENABLED";
    FD1P3AX data_out_i9 (.D(data_in_c_8), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(data_out_c_8));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(34[3] 57[10])
    defparam data_out_i9.GSR = "ENABLED";
    FD1P3AX data_out_i10 (.D(data_in_c_9), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(data_out_c_9));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(34[3] 57[10])
    defparam data_out_i10.GSR = "ENABLED";
    FD1P3AX data_out_i11 (.D(data_in_c_10), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(data_out_c_10));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(34[3] 57[10])
    defparam data_out_i11.GSR = "ENABLED";
    FD1P3AX data_out_i12 (.D(data_in_c_11), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(data_out_c_11));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(34[3] 57[10])
    defparam data_out_i12.GSR = "ENABLED";
    FD1P3AX data_out_i13 (.D(data_in_c_12), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(data_out_c_12));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(34[3] 57[10])
    defparam data_out_i13.GSR = "ENABLED";
    FD1P3AX data_out_i14 (.D(data_in_c_13), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(data_out_c_13));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(34[3] 57[10])
    defparam data_out_i14.GSR = "ENABLED";
    FD1P3AX data_out_i15 (.D(data_in_c_14), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(data_out_c_14));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(34[3] 57[10])
    defparam data_out_i15.GSR = "ENABLED";
    FD1P3AX data_out_i16 (.D(data_in_c_15), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(data_out_c_15));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(34[3] 57[10])
    defparam data_out_i16.GSR = "ENABLED";
    FD1S3AX fsm_state_ps_i_i1 (.D(n249), .CK(clk_c), .Q(fsm_state_c_1)) /* synthesis lse_init_val=0 */ ;   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(34[3] 57[10])
    defparam fsm_state_ps_i_i1.GSR = "ENABLED";
    LUT4 i196_3_lut_4_lut (.A(last_go), .B(go_c), .C(fsm_state_c_1), .D(fsm_state_ps_i[0]), 
         .Z(n257)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (D)+!B ((D)+!C)))) */ ;   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(38[8:34])
    defparam i196_3_lut_4_lut.init = 16'h00f4;
    LUT4 i15_2_lut (.A(fsm_state_ps_i[0]), .B(fsm_state_c_1), .Z(n249)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(34[3] 57[10])
    defparam i15_2_lut.init = 16'h6666;
    FD1P3AX data_out_i1 (.D(data_in_c_0), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(data_out_c_0));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(34[3] 57[10])
    defparam data_out_i1.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(last_go), .B(go_c), .C(fsm_state_ps_i[0]), 
         .D(fsm_state_c_1), .Z(clk_c_enable_18)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(38[8:34])
    defparam i2_3_lut_4_lut.init = 16'h0004;
    GSR GSR_INST (.GSR(n235));
    FD1P3AX last_go_30 (.D(go_c), .SP(clk_c_enable_19), .CK(clk_c), .Q(last_go));   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(34[3] 57[10])
    defparam last_go_30.GSR = "ENABLED";
    LUT4 i170_1_lut (.A(rst_c), .Z(n235)) /* synthesis lut_function=(!(A)) */ ;   // z:/github/lattice/vhdl-lcd_sender/lcd_sender.vhd(11[22:25])
    defparam i170_1_lut.init = 16'h5555;
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

