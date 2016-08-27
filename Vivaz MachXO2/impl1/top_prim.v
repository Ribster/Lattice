// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.7.0.96.1
// Netlist written on Tue Aug 23 16:38:46 2016
//
// Verilog Description of module top
//

module top (pb1, pb2, main_reset, led30, led67, CH1, CH2, CH3, 
            CH4, vivaz_TE, vivaz_RS, vivaz_RESET, vivaz_WR, vivaz_D015, 
            tb_clk);   // d:/github/lattice/vivaz machxo2/top.vhdl(47[8:11])
    input pb1;   // d:/github/lattice/vivaz machxo2/top.vhdl(49[7:10])
    input pb2;   // d:/github/lattice/vivaz machxo2/top.vhdl(50[4:7])
    input main_reset;   // d:/github/lattice/vivaz machxo2/top.vhdl(51[4:14])
    output [3:0]led30;   // d:/github/lattice/vivaz machxo2/top.vhdl(52[4:9])
    output [1:0]led67;   // d:/github/lattice/vivaz machxo2/top.vhdl(53[4:9])
    output CH1;   // d:/github/lattice/vivaz machxo2/top.vhdl(54[4:7])
    output CH2;   // d:/github/lattice/vivaz machxo2/top.vhdl(55[4:7])
    output CH3;   // d:/github/lattice/vivaz machxo2/top.vhdl(56[4:7])
    output CH4;   // d:/github/lattice/vivaz machxo2/top.vhdl(57[4:7])
    input vivaz_TE;   // d:/github/lattice/vivaz machxo2/top.vhdl(58[4:12])
    output vivaz_RS;   // d:/github/lattice/vivaz machxo2/top.vhdl(59[4:12])
    output vivaz_RESET;   // d:/github/lattice/vivaz machxo2/top.vhdl(60[4:15])
    output vivaz_WR;   // d:/github/lattice/vivaz machxo2/top.vhdl(61[4:12])
    output [15:0]vivaz_D015;   // d:/github/lattice/vivaz machxo2/top.vhdl(62[4:14])
    input tb_clk;   // d:/github/lattice/vivaz machxo2/top.vhdl(63[4:10])
    
    wire CH1_c /* synthesis is_clock=1, SET_AS_NETWORK=CH1_c */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(54[4:7])
    wire CH4_c /* synthesis is_inv_clock=1 */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(57[4:7])
    wire tb_clk_c /* synthesis SET_AS_NETWORK=tb_clk_c, is_clock=1 */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(63[4:10])
    wire clk /* synthesis is_clock=1, SET_AS_NETWORK=clk */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(68[12:15])
    wire clk1k_i /* synthesis is_clock=1, SET_AS_NETWORK=clk1k_i */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(252[9:16])
    wire resetroutine_go_i /* synthesis is_clock=1, SET_AS_NETWORK=resetroutine_go_i */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(267[9:26])
    wire setbacklight_go_i /* synthesis is_clock=1, SET_AS_NETWORK=setbacklight_go_i */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(294[9:26])
    
    wire GND_net, VCC_net, pb1_c, main_reset_c, CH2_c, vivaz_WR_c, 
        vivaz_RS_c, vivaz_RESET_c, vivaz_D015_c_7, vivaz_D015_c_6, vivaz_D015_c_5, 
        vivaz_D015_c_4, vivaz_D015_c_3, vivaz_D015_c_2, vivaz_D015_c_1, 
        vivaz_D015_c_0, main_reset_i, resetroutine_done_i;
    wire [15:0]writecommanddataroutine_value_i;   // d:/github/lattice/vivaz machxo2/top.vhdl(272[9:40])
    
    wire writecommanddataroutine_done_i, movetopoint_commanddata_i, movetopoint_start_i;
    wire [15:0]movetopoint_value_i;   // d:/github/lattice/vivaz machxo2/top.vhdl(281[9:28])
    
    wire setbacklight_commanddata_i, setbacklight_start_i;
    wire [15:0]setbacklight_value_i;   // d:/github/lattice/vivaz machxo2/top.vhdl(292[9:29])
    
    wire setbacklight_done_i, fillcolor_commanddata_i, fillcolor_start_i, 
        n124;
    wire [15:0]fillcolor_value_i;   // d:/github/lattice/vivaz machxo2/top.vhdl(300[9:26])
    
    wire passthrough_commanddata_i, passthrough_start_i;
    wire [15:0]passthrough_value_i;   // d:/github/lattice/vivaz machxo2/top.vhdl(309[9:28])
    
    wire n8177, n5718;
    wire [1:0]fsm_state_i;   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(22[8:19])
    
    wire start_i;
    wire [5:0]counter;   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(25[8:15])
    
    wire counter_5__N_64, vivaz_RESET_N_69, n9027;
    wire [2:0]fsm_state_i_adj_1229;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(50[8:19])
    
    wire n7, n10297, n6507, n8, n6, n9767, n6536;
    wire [3:0]fsm_state_i_adj_1230;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(27[9:20])
    
    wire n11, n8176, n6_adj_1212, tb_clk_c_enable_89, n9122, n9779, 
        n9589;
    wire [2:0]fsm_state_i_adj_1238;   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(24[9:20])
    
    wire executed_i, n9852, n9, tb_clk_c_enable_111, n9026, n8919, 
        n12, n9775, start_N_652, n10, n131, n8_adj_1216, n6361;
    wire [4:0]fsm_state_i_adj_1260;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(34[8:19])
    
    wire executing_i, executed_i_adj_1221;
    wire [6:0]counter_i_adj_1261;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(37[8:17])
    
    wire n118, n4440, n8288, n321;
    wire [4:0]fsm_state_i_4__N_683;
    wire [6:0]counter_i_6__N_688;
    
    wire n13, n8276, n14, tb_clk_c_enable_83, n8_adj_1222, n10_adj_1223, 
        n9_adj_1224, n1612, n1611, n1610, n1609, n1608, n143, 
        n1607, n1606, n9436, n9771, executing_i_N_913, tb_clk_c_enable_82, 
        n10306, n9808, n9727, n7793, n9695, n9769, n8255, n6394, 
        n9788, n8178, n9786;
    
    VHI i2 (.Z(VCC_net));
    OSCH OSCInst0 (.STDBY(GND_net), .OSC(clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCInst0.NOM_FREQ = "53.20";
    OB led30_pad_0 (.I(VCC_net), .O(led30[0]));   // d:/github/lattice/vivaz machxo2/top.vhdl(52[4:9])
    OB led30_pad_1 (.I(VCC_net), .O(led30[1]));   // d:/github/lattice/vivaz machxo2/top.vhdl(52[4:9])
    OB led30_pad_2 (.I(VCC_net), .O(led30[2]));   // d:/github/lattice/vivaz machxo2/top.vhdl(52[4:9])
    OB led30_pad_3 (.I(VCC_net), .O(led30[3]));   // d:/github/lattice/vivaz machxo2/top.vhdl(52[4:9])
    OB led67_pad_1 (.I(VCC_net), .O(led67[1]));   // d:/github/lattice/vivaz machxo2/top.vhdl(53[4:9])
    TSALL TSALL_INST (.TSALL(GND_net));
    OB led67_pad_0 (.I(VCC_net), .O(led67[0]));   // d:/github/lattice/vivaz machxo2/top.vhdl(53[4:9])
    OB CH1_pad (.I(CH1_c), .O(CH1));   // d:/github/lattice/vivaz machxo2/top.vhdl(54[4:7])
    OB CH2_pad (.I(CH2_c), .O(CH2));   // d:/github/lattice/vivaz machxo2/top.vhdl(55[4:7])
    OB CH3_pad (.I(vivaz_WR_c), .O(CH3));   // d:/github/lattice/vivaz machxo2/top.vhdl(56[4:7])
    OB CH4_pad (.I(CH4_c), .O(CH4));   // d:/github/lattice/vivaz machxo2/top.vhdl(57[4:7])
    OB vivaz_RS_pad (.I(vivaz_RS_c), .O(vivaz_RS));   // d:/github/lattice/vivaz machxo2/top.vhdl(59[4:12])
    OB vivaz_RESET_pad (.I(vivaz_RESET_c), .O(vivaz_RESET));   // d:/github/lattice/vivaz machxo2/top.vhdl(60[4:15])
    OB vivaz_WR_pad (.I(vivaz_WR_c), .O(vivaz_WR));   // d:/github/lattice/vivaz machxo2/top.vhdl(61[4:12])
    OB vivaz_D015_pad_15 (.I(GND_net), .O(vivaz_D015[15]));   // d:/github/lattice/vivaz machxo2/top.vhdl(62[4:14])
    OB vivaz_D015_pad_14 (.I(GND_net), .O(vivaz_D015[14]));   // d:/github/lattice/vivaz machxo2/top.vhdl(62[4:14])
    OB vivaz_D015_pad_13 (.I(GND_net), .O(vivaz_D015[13]));   // d:/github/lattice/vivaz machxo2/top.vhdl(62[4:14])
    OB vivaz_D015_pad_12 (.I(GND_net), .O(vivaz_D015[12]));   // d:/github/lattice/vivaz machxo2/top.vhdl(62[4:14])
    OB vivaz_D015_pad_11 (.I(GND_net), .O(vivaz_D015[11]));   // d:/github/lattice/vivaz machxo2/top.vhdl(62[4:14])
    OB vivaz_D015_pad_10 (.I(GND_net), .O(vivaz_D015[10]));   // d:/github/lattice/vivaz machxo2/top.vhdl(62[4:14])
    OB vivaz_D015_pad_9 (.I(GND_net), .O(vivaz_D015[9]));   // d:/github/lattice/vivaz machxo2/top.vhdl(62[4:14])
    OB vivaz_D015_pad_8 (.I(GND_net), .O(vivaz_D015[8]));   // d:/github/lattice/vivaz machxo2/top.vhdl(62[4:14])
    OB vivaz_D015_pad_7 (.I(vivaz_D015_c_7), .O(vivaz_D015[7]));   // d:/github/lattice/vivaz machxo2/top.vhdl(62[4:14])
    OB vivaz_D015_pad_6 (.I(vivaz_D015_c_6), .O(vivaz_D015[6]));   // d:/github/lattice/vivaz machxo2/top.vhdl(62[4:14])
    OB vivaz_D015_pad_5 (.I(vivaz_D015_c_5), .O(vivaz_D015[5]));   // d:/github/lattice/vivaz machxo2/top.vhdl(62[4:14])
    OB vivaz_D015_pad_4 (.I(vivaz_D015_c_4), .O(vivaz_D015[4]));   // d:/github/lattice/vivaz machxo2/top.vhdl(62[4:14])
    OB vivaz_D015_pad_3 (.I(vivaz_D015_c_3), .O(vivaz_D015[3]));   // d:/github/lattice/vivaz machxo2/top.vhdl(62[4:14])
    OB vivaz_D015_pad_2 (.I(vivaz_D015_c_2), .O(vivaz_D015[2]));   // d:/github/lattice/vivaz machxo2/top.vhdl(62[4:14])
    OB vivaz_D015_pad_1 (.I(vivaz_D015_c_1), .O(vivaz_D015[1]));   // d:/github/lattice/vivaz machxo2/top.vhdl(62[4:14])
    OB vivaz_D015_pad_0 (.I(vivaz_D015_c_0), .O(vivaz_D015[0]));   // d:/github/lattice/vivaz machxo2/top.vhdl(62[4:14])
    IB pb1_pad (.I(pb1), .O(pb1_c));   // d:/github/lattice/vivaz machxo2/top.vhdl(49[7:10])
    IB main_reset_pad (.I(main_reset), .O(main_reset_c));   // d:/github/lattice/vivaz machxo2/top.vhdl(51[4:14])
    IB tb_clk_pad (.I(tb_clk), .O(tb_clk_c));   // d:/github/lattice/vivaz machxo2/top.vhdl(63[4:10])
    VLO i1 (.Z(GND_net));
    GSR GSR_INST (.GSR(n6507));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2D add_847_7 (.A0(counter_i_adj_1261[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter_i_adj_1261[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8178), .S0(n1607), .S1(n1606));   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam add_847_7.INIT0 = 16'h5aaa;
    defparam add_847_7.INIT1 = 16'h5aaa;
    defparam add_847_7.INJECT1_0 = "NO";
    defparam add_847_7.INJECT1_1 = "NO";
    CCU2D add_847_5 (.A0(counter_i_adj_1261[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter_i_adj_1261[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8177), .COUT(n8178), .S0(n1609), .S1(n1608));   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam add_847_5.INIT0 = 16'h5aaa;
    defparam add_847_5.INIT1 = 16'h5aaa;
    defparam add_847_5.INJECT1_0 = "NO";
    defparam add_847_5.INJECT1_1 = "NO";
    CCU2D add_847_3 (.A0(counter_i_adj_1261[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter_i_adj_1261[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8176), .COUT(n8177), .S0(n1611), .S1(n1610));   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam add_847_3.INIT0 = 16'h5aaa;
    defparam add_847_3.INIT1 = 16'h5aaa;
    defparam add_847_3.INJECT1_0 = "NO";
    defparam add_847_3.INJECT1_1 = "NO";
    CCU2D add_847_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n118), .B1(n9767), .C1(counter_i_adj_1261[0]), .D1(GND_net), 
          .COUT(n8176), .S1(n1612));   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam add_847_1.INIT0 = 16'hF000;
    defparam add_847_1.INIT1 = 16'he1e1;
    defparam add_847_1.INJECT1_0 = "NO";
    defparam add_847_1.INJECT1_1 = "NO";
    commanddataarbiter inst_commanddataarbiter (.\writecommanddataroutine_value_i[0] (writecommanddataroutine_value_i[0]), 
            .tb_clk_c(tb_clk_c), .fsm_state_i({fsm_state_i_adj_1229}), .n9852(n9852), 
            .writecommanddataroutine_done_i(writecommanddataroutine_done_i), 
            .n10306(n10306), .movetopoint_start_i(movetopoint_start_i), 
            .n10297(n10297), .n9436(n9436), .start_N_652(start_N_652), 
            .\writecommanddataroutine_value_i[5] (writecommanddataroutine_value_i[5]), 
            .\writecommanddataroutine_value_i[3] (writecommanddataroutine_value_i[3]), 
            .\writecommanddataroutine_value_i[1] (writecommanddataroutine_value_i[1]), 
            .fsm_state_i_adj_24({fsm_state_i_adj_1230}), .n9589(n9589), 
            .n9769(n9769), .vivaz_RS_c(vivaz_RS_c), .n9779(n9779), .n9727(n9727), 
            .main_reset_i(main_reset_i), .tb_clk_c_enable_83(tb_clk_c_enable_83), 
            .\fillcolor_value_i[5] (fillcolor_value_i[5]), .\passthrough_value_i[2] (passthrough_value_i[2]), 
            .\setbacklight_value_i[4] (setbacklight_value_i[4]), .\passthrough_value_i[4] (passthrough_value_i[4]), 
            .\passthrough_value_i[6] (passthrough_value_i[6]), .n6536(n6536), 
            .tb_clk_c_enable_82(tb_clk_c_enable_82), .\setbacklight_value_i[7] (setbacklight_value_i[7]), 
            .\passthrough_value_i[7] (passthrough_value_i[7]), .GND_net(GND_net), 
            .n7793(n7793), .n8255(n8255), .\movetopoint_value_i[1] (movetopoint_value_i[1]), 
            .\passthrough_value_i[3] (passthrough_value_i[3]), .CH1_c(CH1_c), 
            .\writecommanddataroutine_value_i[2] (writecommanddataroutine_value_i[2]), 
            .\writecommanddataroutine_value_i[4] (writecommanddataroutine_value_i[4]), 
            .\writecommanddataroutine_value_i[6] (writecommanddataroutine_value_i[6]), 
            .\writecommanddataroutine_value_i[7] (writecommanddataroutine_value_i[7]), 
            .\passthrough_value_i[5] (passthrough_value_i[5]), .movetopoint_commanddata_i(movetopoint_commanddata_i), 
            .setbacklight_commanddata_i(setbacklight_commanddata_i), .fillcolor_commanddata_i(fillcolor_commanddata_i), 
            .passthrough_commanddata_i(passthrough_commanddata_i), .\passthrough_value_i[1] (passthrough_value_i[1]), 
            .setbacklight_start_i(setbacklight_start_i), .fillcolor_start_i(fillcolor_start_i), 
            .passthrough_start_i(passthrough_start_i), .executed_i(executed_i), 
            .fsm_state_i_adj_25({fsm_state_i_adj_1238}), .n9026(n9026), 
            .n9027(n9027), .n9695(n9695), .\movetopoint_value_i[0] (movetopoint_value_i[0]), 
            .\setbacklight_value_i[0] (setbacklight_value_i[0]), .\passthrough_value_i[0] (passthrough_value_i[0]));   // d:/github/lattice/vivaz machxo2/top.vhdl(359[28:46])
    debounce_U0 inst_debounce1 (.CH4_c(CH4_c), .GND_net(GND_net), .clk(clk), 
            .pb1_c(pb1_c));   // d:/github/lattice/vivaz machxo2/top.vhdl(504[19:27])
    reset_routine inst_resetroutine (.start_i(start_i), .clk1k_i(clk1k_i), 
            .resetroutine_go_i(resetroutine_go_i), .n10297(n10297), .tb_clk_c(tb_clk_c), 
            .tb_clk_c_enable_111(tb_clk_c_enable_111), .n5718(n5718), .\counter[3] (counter[3]), 
            .n6361(n6361), .\counter[2] (counter[2]), .\counter[1] (counter[1]), 
            .fsm_state_i({fsm_state_i}), .tb_clk_c_enable_89(tb_clk_c_enable_89), 
            .n8288(n8288), .resetroutine_done_i(resetroutine_done_i), .counter_5__N_64(counter_5__N_64), 
            .GND_net(GND_net), .\counter[0] (counter[0]), .vivaz_RESET_c(vivaz_RESET_c), 
            .vivaz_RESET_N_69(vivaz_RESET_N_69), .n9788(n9788), .n124(n124), 
            .n9775(n9775), .n6394(n6394), .n8(n8_adj_1216), .n143(n143), 
            .n8919(n8919), .n131(n131));   // d:/github/lattice/vivaz machxo2/top.vhdl(332[22:35])
    setbacklight inst_setbacklight (.\setbacklight_value_i[7] (setbacklight_value_i[7]), 
            .tb_clk_c(tb_clk_c), .n9027(n9027), .\setbacklight_value_i[4] (setbacklight_value_i[4]), 
            .fsm_state_i({fsm_state_i_adj_1238}), .setbacklight_go_i(setbacklight_go_i), 
            .n10297(n10297), .executed_i(executed_i), .n9695(n9695), .setbacklight_done_i(setbacklight_done_i), 
            .start_N_652(start_N_652), .setbacklight_commanddata_i(setbacklight_commanddata_i), 
            .setbacklight_start_i(setbacklight_start_i), .\setbacklight_value_i[0] (setbacklight_value_i[0]), 
            .n9026(n9026));   // d:/github/lattice/vivaz machxo2/top.vhdl(410[22:34])
    write_command_data inst_writecommanddata (.tb_clk_c(tb_clk_c), .main_reset_i(main_reset_i), 
            .CH1_c(CH1_c), .n10297(n10297), .vivaz_D015_c_0(vivaz_D015_c_0), 
            .\writecommanddataroutine_value_i[0] (writecommanddataroutine_value_i[0]), 
            .GND_net(GND_net), .writecommanddataroutine_done_i(writecommanddataroutine_done_i), 
            .vivaz_D015_c_7(vivaz_D015_c_7), .\writecommanddataroutine_value_i[7] (writecommanddataroutine_value_i[7]), 
            .vivaz_D015_c_6(vivaz_D015_c_6), .\writecommanddataroutine_value_i[6] (writecommanddataroutine_value_i[6]), 
            .vivaz_D015_c_5(vivaz_D015_c_5), .\writecommanddataroutine_value_i[5] (writecommanddataroutine_value_i[5]), 
            .vivaz_D015_c_4(vivaz_D015_c_4), .\writecommanddataroutine_value_i[4] (writecommanddataroutine_value_i[4]), 
            .vivaz_D015_c_3(vivaz_D015_c_3), .\writecommanddataroutine_value_i[3] (writecommanddataroutine_value_i[3]), 
            .vivaz_D015_c_2(vivaz_D015_c_2), .\writecommanddataroutine_value_i[2] (writecommanddataroutine_value_i[2]), 
            .vivaz_D015_c_1(vivaz_D015_c_1), .\writecommanddataroutine_value_i[1] (writecommanddataroutine_value_i[1]), 
            .vivaz_WR_c(vivaz_WR_c), .n9769(n9769), .fsm_state_i({fsm_state_i_adj_1229}), 
            .n9436(n9436), .n7793(n7793), .n9852(n9852), .n8255(n8255));   // d:/github/lattice/vivaz machxo2/top.vhdl(343[26:44])
    LUT4 m1_lut (.Z(n10297)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i4_4_lut (.A(counter_i_adj_1261[6]), .B(n8276), .C(counter_i_adj_1261[4]), 
         .D(n6_adj_1212), .Z(n321)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    fsm_init inst_fsm_init (.fsm_state_i({fsm_state_i_adj_1260}), .resetroutine_done_i(resetroutine_done_i), 
            .n10306(n10306), .tb_clk_c(tb_clk_c), .n12_adj_17({n6, n7, 
            n8, n9_adj_1224, n10_adj_1223}), .n10297(n10297), .counter_i({counter_i_adj_1261}), 
            .\passthrough_value_i[6] (passthrough_value_i[6]), .\passthrough_value_i[5] (passthrough_value_i[5]), 
            .counter_i_6__N_688({counter_i_6__N_688}), .executed_i(executed_i_adj_1221), 
            .n9771(n9771), .fsm_state_i_4__N_683({fsm_state_i_4__N_683}), 
            .CH4_c(CH4_c), .n9786(n9786), .CH2_c(CH2_c), .setbacklight_go_i(setbacklight_go_i), 
            .resetroutine_go_i(resetroutine_go_i), .executing_i(executing_i), 
            .executing_i_N_913(executing_i_N_913), .n9122(n9122), .passthrough_start_i(passthrough_start_i), 
            .n321(n321), .n118(n118), .n9808(n9808), .\passthrough_value_i[0] (passthrough_value_i[0]), 
            .start_N_652(start_N_652), .setbacklight_done_i(setbacklight_done_i), 
            .n16({n8_adj_1222, n9, n10, n11, n12, n13, n14}), 
            .passthrough_commanddata_i(passthrough_commanddata_i), .\passthrough_value_i[1] (passthrough_value_i[1]), 
            .\passthrough_value_i[2] (passthrough_value_i[2]), .\passthrough_value_i[3] (passthrough_value_i[3]), 
            .\passthrough_value_i[4] (passthrough_value_i[4]), .\passthrough_value_i[7] (passthrough_value_i[7]), 
            .main_reset_i(main_reset_i), .n4440(n4440));   // d:/github/lattice/vivaz machxo2/top.vhdl(441[18:26])
    LUT4 i2_3_lut (.A(counter_i_adj_1261[2]), .B(counter_i_adj_1261[1]), 
         .C(counter_i_adj_1261[0]), .Z(n8276)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    fillcolor inst_fillcolor (.GND_net(GND_net), .\fillcolor_value_i[5] (fillcolor_value_i[5]), 
            .tb_clk_c(tb_clk_c), .start_N_652(start_N_652), .n10306(n10306), 
            .fillcolor_commanddata_i(fillcolor_commanddata_i), .fillcolor_start_i(fillcolor_start_i));   // d:/github/lattice/vivaz machxo2/top.vhdl(425[19:28])
    LUT4 i1_2_lut (.A(counter_i_adj_1261[3]), .B(counter_i_adj_1261[5]), 
         .Z(n6_adj_1212)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    clk_divider inst_clkdivider (.GND_net(GND_net), .n9775(n9775), .clk1k_i(clk1k_i), 
            .tb_clk_c_enable_111(tb_clk_c_enable_111), .counter_i_6__N_688({counter_i_6__N_688}), 
            .n1605({n1606, n1607, n1608, n1609, n1610, n1611, n1612}), 
            .n16({n8_adj_1222, n9, n10, n11, n12, n13, n14}), 
            .fsm_state_i({fsm_state_i}), .n8919(n8919), .n131(n131), .vivaz_RESET_N_69(vivaz_RESET_N_69), 
            .tb_clk_c(tb_clk_c), .n9767(n9767), .n321(n321), .fsm_state_i_adj_12({fsm_state_i_adj_1260}), 
            .fsm_state_i_4__N_683({fsm_state_i_4__N_683}), .n12_adj_13({n6, 
            n7, n8, n9_adj_1224, n10_adj_1223}), .n6394(n6394), .tb_clk_c_enable_89(tb_clk_c_enable_89), 
            .n143(n143), .n8288(n8288), .n6361(n6361), .n8_adj_11(n8_adj_1216), 
            .n9788(n9788), .\counter[0] (counter[0]), .\counter[3] (counter[3]), 
            .\counter[2] (counter[2]), .\counter[1] (counter[1]), .n124(n124), 
            .n5718(n5718), .start_i(start_i), .counter_5__N_64(counter_5__N_64));   // d:/github/lattice/vivaz machxo2/top.vhdl(321[19:30])
    movetopoint inst_movetopoint (.fsm_state_i({fsm_state_i_adj_1230}), .tb_clk_c(tb_clk_c), 
            .main_reset_i(main_reset_i), .start_N_652(start_N_652), .\movetopoint_value_i[1] (movetopoint_value_i[1]), 
            .n9808(n9808), .executing_i(executing_i), .executed_i(executed_i_adj_1221), 
            .fsm_state_i_adj_5({fsm_state_i_adj_1260}), .movetopoint_commanddata_i(movetopoint_commanddata_i), 
            .movetopoint_start_i(movetopoint_start_i), .tb_clk_c_enable_82(tb_clk_c_enable_82), 
            .tb_clk_c_enable_83(tb_clk_c_enable_83), .\movetopoint_value_i[0] (movetopoint_value_i[0]), 
            .n9727(n9727), .n9779(n9779), .n9589(n9589), .n6536(n6536), 
            .n9786(n9786), .n4440(n4440), .n9122(n9122), .n9771(n9771), 
            .executing_i_N_913(executing_i_N_913));   // d:/github/lattice/vivaz machxo2/top.vhdl(392[21:32])
    debounce inst_debounce3 (.clk(clk), .GND_net(GND_net), .main_reset_c(main_reset_c), 
            .main_reset_i(main_reset_i), .n6507(n6507));   // d:/github/lattice/vivaz machxo2/top.vhdl(518[19:27])
    
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
// Verilog Description of module commanddataarbiter
//

module commanddataarbiter (\writecommanddataroutine_value_i[0] , tb_clk_c, 
            fsm_state_i, n9852, writecommanddataroutine_done_i, n10306, 
            movetopoint_start_i, n10297, n9436, start_N_652, \writecommanddataroutine_value_i[5] , 
            \writecommanddataroutine_value_i[3] , \writecommanddataroutine_value_i[1] , 
            fsm_state_i_adj_24, n9589, n9769, vivaz_RS_c, n9779, n9727, 
            main_reset_i, tb_clk_c_enable_83, \fillcolor_value_i[5] , 
            \passthrough_value_i[2] , \setbacklight_value_i[4] , \passthrough_value_i[4] , 
            \passthrough_value_i[6] , n6536, tb_clk_c_enable_82, \setbacklight_value_i[7] , 
            \passthrough_value_i[7] , GND_net, n7793, n8255, \movetopoint_value_i[1] , 
            \passthrough_value_i[3] , CH1_c, \writecommanddataroutine_value_i[2] , 
            \writecommanddataroutine_value_i[4] , \writecommanddataroutine_value_i[6] , 
            \writecommanddataroutine_value_i[7] , \passthrough_value_i[5] , 
            movetopoint_commanddata_i, setbacklight_commanddata_i, fillcolor_commanddata_i, 
            passthrough_commanddata_i, \passthrough_value_i[1] , setbacklight_start_i, 
            fillcolor_start_i, passthrough_start_i, executed_i, fsm_state_i_adj_25, 
            n9026, n9027, n9695, \movetopoint_value_i[0] , \setbacklight_value_i[0] , 
            \passthrough_value_i[0] );
    output \writecommanddataroutine_value_i[0] ;
    input tb_clk_c;
    output [2:0]fsm_state_i;
    output n9852;
    input writecommanddataroutine_done_i;
    output n10306;
    input movetopoint_start_i;
    input n10297;
    input n9436;
    output start_N_652;
    output \writecommanddataroutine_value_i[5] ;
    output \writecommanddataroutine_value_i[3] ;
    output \writecommanddataroutine_value_i[1] ;
    input [3:0]fsm_state_i_adj_24;
    output n9589;
    output n9769;
    output vivaz_RS_c;
    input n9779;
    input n9727;
    input main_reset_i;
    output tb_clk_c_enable_83;
    input \fillcolor_value_i[5] ;
    input \passthrough_value_i[2] ;
    input \setbacklight_value_i[4] ;
    input \passthrough_value_i[4] ;
    input \passthrough_value_i[6] ;
    input n6536;
    output tb_clk_c_enable_82;
    input \setbacklight_value_i[7] ;
    input \passthrough_value_i[7] ;
    input GND_net;
    input n7793;
    input n8255;
    input \movetopoint_value_i[1] ;
    input \passthrough_value_i[3] ;
    output CH1_c;
    output \writecommanddataroutine_value_i[2] ;
    output \writecommanddataroutine_value_i[4] ;
    output \writecommanddataroutine_value_i[6] ;
    output \writecommanddataroutine_value_i[7] ;
    input \passthrough_value_i[5] ;
    input movetopoint_commanddata_i;
    input setbacklight_commanddata_i;
    input fillcolor_commanddata_i;
    input passthrough_commanddata_i;
    input \passthrough_value_i[1] ;
    input setbacklight_start_i;
    input fillcolor_start_i;
    input passthrough_start_i;
    input executed_i;
    input [2:0]fsm_state_i_adj_25;
    output n9026;
    output n9027;
    output n9695;
    input \movetopoint_value_i[0] ;
    input \setbacklight_value_i[0] ;
    input \passthrough_value_i[0] ;
    
    wire tb_clk_c /* synthesis SET_AS_NETWORK=tb_clk_c, is_clock=1 */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(63[4:10])
    wire clksynth_i /* synthesis is_clock=1, SET_AS_NETWORK=\inst_commanddataarbiter/clksynth_i */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(52[8:18])
    wire CH1_c /* synthesis is_clock=1, SET_AS_NETWORK=CH1_c */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(54[4:7])
    
    wire tb_clk_c_enable_96;
    wire [15:0]valueout_arbiter_15__N_227;
    
    wire n8174;
    wire [16:0]counter;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(47[8:15])
    wire [16:0]n73;
    wire [1:0]switchselect_i_1__N_184;
    
    wire n9842, n9022, tb_clk_c_enable_10, n5570;
    wire [1:0]n14;
    
    wire start_i, start_i_N_276, tb_clk_c_enable_60;
    wire [2:0]fsm_state_i_2__N_203;
    
    wire n8173;
    wire [1:0]switchselect_i;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(40[8:22])
    
    wire start_i_N_279, n8172, n9764, n8171, n9435, n9437, n8170, 
        n8169, n9762, n9750, n894, n19, n29, n26, n32, n5673, 
        tb_clk_c_enable_81, n9871, n9870, n28, n20, n8168, n132, 
        commanddata_arbiter_N_261, n5, n9902, n9901, n2, n4442, 
        n8135, n8167, n4446, n113, tb_clk_c_enable_61, n1, n2_adj_1197, 
        n7750, n9144, n9145, n8980, n28_adj_1198, n24, n16_adj_1199, 
        n9147, n9148, n9141, n9142, n9830, n26_adj_1203, n20_adj_1204, 
        n9772;
    
    FD1P3AX cdroutine_value_i_i0_i0 (.D(valueout_arbiter_15__N_227[0]), .SP(tb_clk_c_enable_96), 
            .CK(tb_clk_c), .Q(\writecommanddataroutine_value_i[0] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=28, LSE_RCOL=46, LSE_LLINE=359, LSE_RLINE=359 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam cdroutine_value_i_i0_i0.GSR = "ENABLED";
    CCU2D counter_1685_add_4_17 (.A0(fsm_state_i[1]), .B0(n9852), .C0(writecommanddataroutine_done_i), 
          .D0(counter[15]), .A1(fsm_state_i[1]), .B1(n9852), .C1(writecommanddataroutine_done_i), 
          .D1(counter[16]), .CIN(n8174), .S0(n73[15]), .S1(n73[16]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685_add_4_17.INIT0 = 16'hfd00;
    defparam counter_1685_add_4_17.INIT1 = 16'hfd00;
    defparam counter_1685_add_4_17.INJECT1_0 = "NO";
    defparam counter_1685_add_4_17.INJECT1_1 = "NO";
    FD1S3IX switchselect_i_76__i1 (.D(n9022), .CK(clksynth_i), .CD(n9842), 
            .Q(switchselect_i_1__N_184[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=28, LSE_RCOL=46, LSE_LLINE=359, LSE_RLINE=359 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(65[4] 76[11])
    defparam switchselect_i_76__i1.GSR = "DISABLED";
    FD1P3AY done_i_92_rep_248 (.D(n5570), .SP(tb_clk_c_enable_10), .CK(tb_clk_c), 
            .Q(n10306));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam done_i_92_rep_248.GSR = "ENABLED";
    FD1S3IX switchselect_i_76__i0 (.D(n14[0]), .CK(clksynth_i), .CD(movetopoint_start_i), 
            .Q(switchselect_i_1__N_184[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=28, LSE_RCOL=46, LSE_LLINE=359, LSE_RLINE=359 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(65[4] 76[11])
    defparam switchselect_i_76__i0.GSR = "DISABLED";
    FD1S3AX start_i_88 (.D(start_i_N_276), .CK(tb_clk_c), .Q(start_i)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=28, LSE_RCOL=46, LSE_LLINE=359, LSE_RLINE=359 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam start_i_88.GSR = "ENABLED";
    FD1P3AX fsm_state_i_i0 (.D(fsm_state_i_2__N_203[0]), .SP(tb_clk_c_enable_60), 
            .CK(tb_clk_c), .Q(fsm_state_i[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=28, LSE_RCOL=46, LSE_LLINE=359, LSE_RLINE=359 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam fsm_state_i_i0.GSR = "ENABLED";
    CCU2D counter_1685_add_4_15 (.A0(fsm_state_i[1]), .B0(n9852), .C0(writecommanddataroutine_done_i), 
          .D0(counter[13]), .A1(fsm_state_i[1]), .B1(n9852), .C1(writecommanddataroutine_done_i), 
          .D1(counter[14]), .CIN(n8173), .COUT(n8174), .S0(n73[13]), 
          .S1(n73[14]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685_add_4_15.INIT0 = 16'hfd00;
    defparam counter_1685_add_4_15.INIT1 = 16'hfd00;
    defparam counter_1685_add_4_15.INJECT1_0 = "NO";
    defparam counter_1685_add_4_15.INJECT1_1 = "NO";
    FD1S3AY switchselect_i_i0 (.D(switchselect_i_1__N_184[0]), .CK(tb_clk_c), 
            .Q(switchselect_i[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=28, LSE_RCOL=46, LSE_LLINE=359, LSE_RLINE=359 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam switchselect_i_i0.GSR = "ENABLED";
    FD1S3DX start_i_74_86 (.D(n10297), .CK(clksynth_i), .CD(start_i_N_279), 
            .Q(start_i_N_276)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=28, LSE_RCOL=46, LSE_LLINE=359, LSE_RLINE=359 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(65[4] 76[11])
    defparam start_i_74_86.GSR = "DISABLED";
    CCU2D counter_1685_add_4_13 (.A0(fsm_state_i[1]), .B0(n9852), .C0(writecommanddataroutine_done_i), 
          .D0(counter[11]), .A1(fsm_state_i[1]), .B1(n9852), .C1(n9764), 
          .D1(counter[12]), .CIN(n8172), .COUT(n8173), .S0(n73[11]), 
          .S1(n73[12]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685_add_4_13.INIT0 = 16'hfd00;
    defparam counter_1685_add_4_13.INIT1 = 16'hfd00;
    defparam counter_1685_add_4_13.INJECT1_0 = "NO";
    defparam counter_1685_add_4_13.INJECT1_1 = "NO";
    CCU2D counter_1685_add_4_11 (.A0(fsm_state_i[1]), .B0(n9852), .C0(n9764), 
          .D0(counter[9]), .A1(fsm_state_i[1]), .B1(n9852), .C1(n9764), 
          .D1(counter[10]), .CIN(n8171), .COUT(n8172), .S0(n73[9]), 
          .S1(n73[10]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685_add_4_11.INIT0 = 16'hfd00;
    defparam counter_1685_add_4_11.INIT1 = 16'hfd00;
    defparam counter_1685_add_4_11.INJECT1_0 = "NO";
    defparam counter_1685_add_4_11.INJECT1_1 = "NO";
    PFUMX i7341 (.BLUT(n9436), .ALUT(n9435), .C0(fsm_state_i[0]), .Z(n9437));
    CCU2D counter_1685_add_4_9 (.A0(fsm_state_i[1]), .B0(n9852), .C0(writecommanddataroutine_done_i), 
          .D0(counter[7]), .A1(fsm_state_i[1]), .B1(n9852), .C1(n9764), 
          .D1(counter[8]), .CIN(n8170), .COUT(n8171), .S0(n73[7]), .S1(n73[8]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685_add_4_9.INIT0 = 16'hfd00;
    defparam counter_1685_add_4_9.INIT1 = 16'hfd00;
    defparam counter_1685_add_4_9.INJECT1_0 = "NO";
    defparam counter_1685_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_1685_add_4_7 (.A0(fsm_state_i[1]), .B0(n9852), .C0(n9764), 
          .D0(counter[5]), .A1(fsm_state_i[1]), .B1(n9852), .C1(n9764), 
          .D1(counter[6]), .CIN(n8169), .COUT(n8170), .S0(n73[5]), .S1(n73[6]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685_add_4_7.INIT0 = 16'hfd00;
    defparam counter_1685_add_4_7.INIT1 = 16'hfd00;
    defparam counter_1685_add_4_7.INJECT1_0 = "NO";
    defparam counter_1685_add_4_7.INJECT1_1 = "NO";
    LUT4 counter_16__N_225_bdd_4_lut (.A(fsm_state_i[2]), .B(fsm_state_i[0]), 
         .C(fsm_state_i[1]), .D(n9762), .Z(n9750)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C (D))))) */ ;
    defparam counter_16__N_225_bdd_4_lut.init = 16'h1606;
    FD1P3AY done_i_92 (.D(n5570), .SP(tb_clk_c_enable_10), .CK(tb_clk_c), 
            .Q(start_N_652));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam done_i_92.GSR = "ENABLED";
    FD1S3IX counter_1685__i0 (.D(n73[0]), .CK(tb_clk_c), .CD(n894), .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685__i0.GSR = "DISABLED";
    FD1P3AX cdroutine_value_i_i0_i5 (.D(valueout_arbiter_15__N_227[5]), .SP(tb_clk_c_enable_96), 
            .CK(tb_clk_c), .Q(\writecommanddataroutine_value_i[5] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=28, LSE_RCOL=46, LSE_LLINE=359, LSE_RLINE=359 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam cdroutine_value_i_i0_i5.GSR = "ENABLED";
    LUT4 i2_2_lut (.A(counter[6]), .B(counter[1]), .Z(n19)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    FD1P3AX cdroutine_value_i_i0_i3 (.D(valueout_arbiter_15__N_227[3]), .SP(tb_clk_c_enable_96), 
            .CK(tb_clk_c), .Q(\writecommanddataroutine_value_i[3] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=28, LSE_RCOL=46, LSE_LLINE=359, LSE_RLINE=359 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam cdroutine_value_i_i0_i3.GSR = "ENABLED";
    LUT4 i15_4_lut (.A(n29), .B(counter[14]), .C(n26), .D(counter[9]), 
         .Z(n32)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i15_4_lut.init = 16'h8000;
    FD1P3AX cdroutine_value_i_i0_i1 (.D(valueout_arbiter_15__N_227[1]), .SP(tb_clk_c_enable_96), 
            .CK(tb_clk_c), .Q(\writecommanddataroutine_value_i[1] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=28, LSE_RCOL=46, LSE_LLINE=359, LSE_RLINE=359 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam cdroutine_value_i_i0_i1.GSR = "ENABLED";
    LUT4 i377_3_lut_4_lut_4_lut (.A(fsm_state_i[1]), .B(start_i), .C(fsm_state_i[2]), 
         .D(fsm_state_i[0]), .Z(n894)) /* synthesis lut_function=(!(A+(B (C)+!B (C+!(D))))) */ ;
    defparam i377_3_lut_4_lut_4_lut.init = 16'h0504;
    LUT4 i3758_2_lut_4_lut (.A(fsm_state_i[1]), .B(start_i), .C(n9852), 
         .D(switchselect_i[1]), .Z(n5673)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i3758_2_lut_4_lut.init = 16'h0004;
    LUT4 n9750_bdd_2_lut_4_lut (.A(fsm_state_i[1]), .B(start_i), .C(n9852), 
         .D(n9750), .Z(tb_clk_c_enable_81)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;
    defparam n9750_bdd_2_lut_4_lut.init = 16'hff04;
    LUT4 n6499_bdd_4_lut_7406 (.A(fsm_state_i_adj_24[2]), .B(fsm_state_i_adj_24[0]), 
         .C(fsm_state_i_adj_24[1]), .D(fsm_state_i_adj_24[3]), .Z(n9589)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A !(B (C)))) */ ;
    defparam n6499_bdd_4_lut_7406.init = 16'h406a;
    LUT4 i1_4_lut_then_4_lut (.A(fsm_state_i[2]), .B(fsm_state_i[0]), .C(n9769), 
         .D(writecommanddataroutine_done_i), .Z(n9871)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h0100;
    LUT4 i1_4_lut_else_4_lut (.A(fsm_state_i[2]), .B(fsm_state_i[0]), .C(start_i), 
         .Z(n9870)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h3232;
    LUT4 i11_4_lut (.A(counter[16]), .B(counter[5]), .C(counter[13]), 
         .D(counter[10]), .Z(n28)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i11_4_lut.init = 16'h8000;
    LUT4 i3_2_lut (.A(counter[4]), .B(counter[8]), .Z(n20)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut.init = 16'h8888;
    CCU2D counter_1685_add_4_5 (.A0(n132), .B0(fsm_state_i[1]), .C0(fsm_state_i[0]), 
          .D0(counter[3]), .A1(fsm_state_i[1]), .B1(n9852), .C1(n9764), 
          .D1(counter[4]), .CIN(n8168), .COUT(n8169), .S0(n73[3]), .S1(n73[4]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685_add_4_5.INIT0 = 16'hfb00;
    defparam counter_1685_add_4_5.INIT1 = 16'hfd00;
    defparam counter_1685_add_4_5.INJECT1_0 = "NO";
    defparam counter_1685_add_4_5.INJECT1_1 = "NO";
    FD1P3AX cdroutine_commanddata_i_95 (.D(commanddata_arbiter_N_261), .SP(tb_clk_c_enable_96), 
            .CK(tb_clk_c), .Q(vivaz_RS_c));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam cdroutine_commanddata_i_95.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_4_lut (.A(start_N_652), .B(n9779), .C(n9727), 
         .D(main_reset_i), .Z(tb_clk_c_enable_83)) /* synthesis lut_function=(A (B+(C+(D)))+!A (D)) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam i1_3_lut_4_lut_4_lut.init = 16'hffa8;
    LUT4 i1_2_lut_4_lut_then_4_lut (.A(fsm_state_i[1]), .B(writecommanddataroutine_done_i), 
         .C(n5), .D(fsm_state_i[2]), .Z(n9902)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (D))) */ ;
    defparam i1_2_lut_4_lut_then_4_lut.init = 16'h00fd;
    LUT4 i1_2_lut_4_lut_else_4_lut (.A(fsm_state_i[1]), .B(start_i), .C(fsm_state_i[2]), 
         .D(n9764), .Z(n9901)) /* synthesis lut_function=(!(A (C+(D))+!A !(B+(C)))) */ ;
    defparam i1_2_lut_4_lut_else_4_lut.init = 16'h545e;
    LUT4 mux_1186_Mux_2_i2_3_lut (.A(\fillcolor_value_i[5] ), .B(\passthrough_value_i[2] ), 
         .C(switchselect_i[0]), .Z(n2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(86[5] 98[12])
    defparam mux_1186_Mux_2_i2_3_lut.init = 16'hcaca;
    LUT4 i2569_3_lut (.A(\setbacklight_value_i[4] ), .B(\passthrough_value_i[4] ), 
         .C(switchselect_i[1]), .Z(n4442)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(86[5] 98[12])
    defparam i2569_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut (.A(switchselect_i[1]), .B(\passthrough_value_i[6] ), 
         .C(switchselect_i[0]), .Z(valueout_arbiter_15__N_227[6])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut (.A(start_N_652), .B(n9779), .C(n6536), 
         .D(main_reset_i), .Z(tb_clk_c_enable_82)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfff8;
    LUT4 i1_2_lut_4_lut (.A(fsm_state_i[1]), .B(start_i), .C(n9852), .D(switchselect_i[0]), 
         .Z(n8135)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0004;
    CCU2D counter_1685_add_4_3 (.A0(fsm_state_i[1]), .B0(n9852), .C0(n9764), 
          .D0(counter[1]), .A1(fsm_state_i[1]), .B1(n9852), .C1(n9764), 
          .D1(counter[2]), .CIN(n8167), .COUT(n8168), .S0(n73[1]), .S1(n73[2]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685_add_4_3.INIT0 = 16'hfd00;
    defparam counter_1685_add_4_3.INIT1 = 16'hfd00;
    defparam counter_1685_add_4_3.INJECT1_0 = "NO";
    defparam counter_1685_add_4_3.INJECT1_1 = "NO";
    LUT4 i2573_3_lut (.A(\setbacklight_value_i[7] ), .B(\passthrough_value_i[7] ), 
         .C(switchselect_i[1]), .Z(n4446)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(86[5] 98[12])
    defparam i2573_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_rep_151 (.A(n113), .B(counter[16]), .C(counter[3]), 
         .Z(n9769)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam i2_3_lut_rep_151.init = 16'hefef;
    FD1S3AY switchselect_i_i1 (.D(switchselect_i_1__N_184[1]), .CK(tb_clk_c), 
            .Q(switchselect_i[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=28, LSE_RCOL=46, LSE_LLINE=359, LSE_RLINE=359 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam switchselect_i_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_146_4_lut (.A(n113), .B(counter[16]), .C(counter[3]), 
         .D(writecommanddataroutine_done_i), .Z(n9764)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam i1_2_lut_rep_146_4_lut.init = 16'hef00;
    FD1P3AX fsm_state_i_i2 (.D(fsm_state_i_2__N_203[2]), .SP(tb_clk_c_enable_60), 
            .CK(tb_clk_c), .Q(fsm_state_i[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=28, LSE_RCOL=46, LSE_LLINE=359, LSE_RLINE=359 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam fsm_state_i_i2.GSR = "ENABLED";
    FD1P3AX fsm_state_i_i1 (.D(fsm_state_i_2__N_203[1]), .SP(tb_clk_c_enable_61), 
            .CK(tb_clk_c), .Q(fsm_state_i[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=28, LSE_RCOL=46, LSE_LLINE=359, LSE_RLINE=359 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam fsm_state_i_i1.GSR = "ENABLED";
    CCU2D counter_1685_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(fsm_state_i[1]), .B1(n7793), .C1(counter[0]), 
          .D1(n8255), .COUT(n8167), .S1(n73[0]));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685_add_4_1.INIT0 = 16'hF000;
    defparam counter_1685_add_4_1.INIT1 = 16'h7888;
    defparam counter_1685_add_4_1.INJECT1_0 = "NO";
    defparam counter_1685_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_144_4_lut (.A(n113), .B(counter[16]), .C(counter[3]), 
         .D(writecommanddataroutine_done_i), .Z(n9762)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam i1_2_lut_rep_144_4_lut.init = 16'h1000;
    PFUMX mux_1186_Mux_0_i3 (.BLUT(n1), .ALUT(n2_adj_1197), .C0(switchselect_i[1]), 
          .Z(valueout_arbiter_15__N_227[0]));
    FD1S3IX counter_1685__i1 (.D(n73[1]), .CK(tb_clk_c), .CD(n894), .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685__i1.GSR = "DISABLED";
    LUT4 i1_2_lut_4_lut_adj_349 (.A(n113), .B(counter[16]), .C(counter[3]), 
         .D(n7750), .Z(start_i_N_279)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam i1_2_lut_4_lut_adj_349.init = 16'hff10;
    FD1S3IX counter_1685__i2 (.D(n73[2]), .CK(tb_clk_c), .CD(n894), .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685__i2.GSR = "DISABLED";
    FD1S3IX counter_1685__i3 (.D(n73[3]), .CK(tb_clk_c), .CD(n894), .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685__i3.GSR = "DISABLED";
    FD1S3IX counter_1685__i4 (.D(n73[4]), .CK(tb_clk_c), .CD(n894), .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685__i4.GSR = "DISABLED";
    FD1S3IX counter_1685__i5 (.D(n73[5]), .CK(tb_clk_c), .CD(n894), .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685__i5.GSR = "DISABLED";
    FD1S3IX counter_1685__i6 (.D(n73[6]), .CK(tb_clk_c), .CD(n894), .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685__i6.GSR = "DISABLED";
    FD1S3IX counter_1685__i7 (.D(n73[7]), .CK(tb_clk_c), .CD(n894), .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685__i7.GSR = "DISABLED";
    FD1S3IX counter_1685__i8 (.D(n73[8]), .CK(tb_clk_c), .CD(n894), .Q(counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685__i8.GSR = "DISABLED";
    FD1S3IX counter_1685__i9 (.D(n73[9]), .CK(tb_clk_c), .CD(n894), .Q(counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685__i9.GSR = "DISABLED";
    FD1S3IX counter_1685__i10 (.D(n73[10]), .CK(tb_clk_c), .CD(n894), 
            .Q(counter[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685__i10.GSR = "DISABLED";
    FD1S3IX counter_1685__i11 (.D(n73[11]), .CK(tb_clk_c), .CD(n894), 
            .Q(counter[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685__i11.GSR = "DISABLED";
    FD1S3IX counter_1685__i12 (.D(n73[12]), .CK(tb_clk_c), .CD(n894), 
            .Q(counter[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685__i12.GSR = "DISABLED";
    FD1S3IX counter_1685__i13 (.D(n73[13]), .CK(tb_clk_c), .CD(n894), 
            .Q(counter[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685__i13.GSR = "DISABLED";
    FD1S3IX counter_1685__i14 (.D(n73[14]), .CK(tb_clk_c), .CD(n894), 
            .Q(counter[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685__i14.GSR = "DISABLED";
    FD1S3IX counter_1685__i15 (.D(n73[15]), .CK(tb_clk_c), .CD(n894), 
            .Q(counter[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685__i15.GSR = "DISABLED";
    FD1S3IX counter_1685__i16 (.D(n73[16]), .CK(tb_clk_c), .CD(n894), 
            .Q(counter[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam counter_1685__i16.GSR = "DISABLED";
    LUT4 i12_4_lut (.A(counter[12]), .B(counter[7]), .C(counter[2]), .D(counter[11]), 
         .Z(n29)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_2_lut_4_lut (.A(fsm_state_i[1]), .B(fsm_state_i[2]), .C(fsm_state_i[0]), 
         .Z(fsm_state_i_2__N_203[2])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i2_3_lut_2_lut_4_lut.init = 16'h2020;
    LUT4 i7176_3_lut (.A(\movetopoint_value_i[1] ), .B(\setbacklight_value_i[4] ), 
         .C(switchselect_i[0]), .Z(n9144)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7176_3_lut.init = 16'hcaca;
    LUT4 i7177_3_lut (.A(\fillcolor_value_i[5] ), .B(\passthrough_value_i[3] ), 
         .C(switchselect_i[0]), .Z(n9145)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7177_3_lut.init = 16'hcaca;
    LUT4 fsm_state_i_0__bdd_3_lut_7343 (.A(fsm_state_i[1]), .B(n5), .C(writecommanddataroutine_done_i), 
         .Z(n9435)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam fsm_state_i_0__bdd_3_lut_7343.init = 16'hfdfd;
    FD1P3AX cdroutine_go_i_91 (.D(n8980), .SP(tb_clk_c_enable_81), .CK(tb_clk_c), 
            .Q(CH1_c));   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam cdroutine_go_i_91.GSR = "ENABLED";
    FD1P3IX cdroutine_value_i_i0_i2 (.D(n2), .SP(tb_clk_c_enable_96), .CD(n5673), 
            .CK(tb_clk_c), .Q(\writecommanddataroutine_value_i[2] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=28, LSE_RCOL=46, LSE_LLINE=359, LSE_RLINE=359 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam cdroutine_value_i_i0_i2.GSR = "ENABLED";
    FD1P3IX cdroutine_value_i_i0_i4 (.D(n4442), .SP(tb_clk_c_enable_96), 
            .CD(n8135), .CK(tb_clk_c), .Q(\writecommanddataroutine_value_i[4] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=28, LSE_RCOL=46, LSE_LLINE=359, LSE_RLINE=359 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam cdroutine_value_i_i0_i4.GSR = "ENABLED";
    FD1P3AX cdroutine_value_i_i0_i6 (.D(valueout_arbiter_15__N_227[6]), .SP(tb_clk_c_enable_96), 
            .CK(tb_clk_c), .Q(\writecommanddataroutine_value_i[6] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=28, LSE_RCOL=46, LSE_LLINE=359, LSE_RLINE=359 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam cdroutine_value_i_i0_i6.GSR = "ENABLED";
    FD1P3IX cdroutine_value_i_i0_i7 (.D(n4446), .SP(tb_clk_c_enable_96), 
            .CD(n8135), .CK(tb_clk_c), .Q(\writecommanddataroutine_value_i[7] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=28, LSE_RCOL=46, LSE_LLINE=359, LSE_RLINE=359 */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam cdroutine_value_i_i0_i7.GSR = "ENABLED";
    PFUMX i7178 (.BLUT(n9144), .ALUT(n9145), .C0(switchselect_i[1]), .Z(valueout_arbiter_15__N_227[3]));
    LUT4 i9_3_lut (.A(counter[15]), .B(counter[3]), .C(counter[0]), .Z(n26)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9_3_lut.init = 16'h8080;
    LUT4 i14_4_lut (.A(counter[12]), .B(n28_adj_1198), .C(n24), .D(n16_adj_1199), 
         .Z(n113)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i7179_3_lut (.A(\movetopoint_value_i[1] ), .B(\setbacklight_value_i[7] ), 
         .C(switchselect_i[0]), .Z(n9147)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7179_3_lut.init = 16'hcaca;
    LUT4 i7180_3_lut (.A(\fillcolor_value_i[5] ), .B(\passthrough_value_i[5] ), 
         .C(switchselect_i[0]), .Z(n9148)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7180_3_lut.init = 16'hcaca;
    LUT4 i7173_3_lut (.A(movetopoint_commanddata_i), .B(setbacklight_commanddata_i), 
         .C(switchselect_i[0]), .Z(n9141)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7173_3_lut.init = 16'hcaca;
    LUT4 i7174_3_lut (.A(fillcolor_commanddata_i), .B(passthrough_commanddata_i), 
         .C(switchselect_i[0]), .Z(n9142)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7174_3_lut.init = 16'hcaca;
    LUT4 i6240_4_lut (.A(switchselect_i[1]), .B(\passthrough_value_i[1] ), 
         .C(switchselect_i[0]), .D(\movetopoint_value_i[1] ), .Z(valueout_arbiter_15__N_227[1])) /* synthesis lut_function=(A (B (C))+!A !(C+!(D))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(40[8:22])
    defparam i6240_4_lut.init = 16'h8580;
    LUT4 i5198_4_lut (.A(switchselect_i[0]), .B(setbacklight_start_i), .C(fillcolor_start_i), 
         .D(passthrough_start_i), .Z(n14[0])) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(67[5] 75[12])
    defparam i5198_4_lut.init = 16'hcfce;
    LUT4 i7121_2_lut_rep_212 (.A(fsm_state_i[0]), .B(fsm_state_i[1]), .Z(n9830)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7121_2_lut_rep_212.init = 16'heeee;
    LUT4 i1_3_lut_4_lut (.A(fsm_state_i[0]), .B(fsm_state_i[1]), .C(start_i), 
         .D(fsm_state_i[2]), .Z(n7750)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h1110;
    LUT4 i1_2_lut_3_lut_4_lut_adj_350 (.A(executed_i), .B(start_N_652), 
         .C(fsm_state_i_adj_25[0]), .D(fsm_state_i_adj_25[2]), .Z(n9026)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam i1_2_lut_3_lut_4_lut_adj_350.init = 16'hbfff;
    LUT4 i1_3_lut_4_lut_adj_351 (.A(executed_i), .B(start_N_652), .C(fsm_state_i_adj_25[0]), 
         .D(fsm_state_i_adj_25[2]), .Z(n9027)) /* synthesis lut_function=(A+!(B (C+(D)))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam i1_3_lut_4_lut_adj_351.init = 16'hbbbf;
    LUT4 n6833_bdd_4_lut (.A(fsm_state_i_adj_25[0]), .B(start_N_652), .C(fsm_state_i_adj_25[2]), 
         .D(fsm_state_i_adj_25[1]), .Z(n9695)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A !(B (C+!(D))))) */ ;
    defparam n6833_bdd_4_lut.init = 16'h48c4;
    LUT4 i1_2_lut_3_lut (.A(passthrough_start_i), .B(fillcolor_start_i), 
         .C(switchselect_i[1]), .Z(n9022)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(162[16:83])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i2398_2_lut_rep_224 (.A(setbacklight_start_i), .B(movetopoint_start_i), 
         .Z(n9842)) /* synthesis lut_function=(A+(B)) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(65[4] 76[11])
    defparam i2398_2_lut_rep_224.init = 16'heeee;
    LUT4 i2_2_lut_3_lut_4_lut (.A(setbacklight_start_i), .B(movetopoint_start_i), 
         .C(fillcolor_start_i), .D(passthrough_start_i), .Z(clksynth_i)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(65[4] 76[11])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_234 (.A(fsm_state_i[2]), .B(fsm_state_i[0]), .Z(n9852)) /* synthesis lut_function=(A+(B)) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam i1_2_lut_rep_234.init = 16'heeee;
    LUT4 i7293_2_lut_3_lut_4_lut (.A(fsm_state_i[2]), .B(fsm_state_i[0]), 
         .C(start_i), .D(fsm_state_i[1]), .Z(n5570)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C+(D))))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam i7293_2_lut_3_lut_4_lut.init = 16'h00ef;
    LUT4 i147_4_lut (.A(fsm_state_i[2]), .B(writecommanddataroutine_done_i), 
         .C(counter[16]), .D(n113), .Z(n132)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(50[8:19])
    defparam i147_4_lut.init = 16'heeea;
    LUT4 i13_4_lut (.A(counter[6]), .B(n26_adj_1203), .C(n20_adj_1204), 
         .D(counter[2]), .Z(n28_adj_1198)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i16_4_lut (.A(n19), .B(n32), .C(n28), .D(n20), .Z(n5)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i16_4_lut.init = 16'h8000;
    LUT4 i7123_2_lut_rep_154_4_lut_4_lut (.A(fsm_state_i[2]), .B(fsm_state_i[0]), 
         .C(start_i), .D(fsm_state_i[1]), .Z(n9772)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam i7123_2_lut_rep_154_4_lut_4_lut.init = 16'haaba;
    LUT4 i5203_3_lut_3_lut_4_lut (.A(fsm_state_i[2]), .B(fsm_state_i[0]), 
         .C(start_i), .D(fsm_state_i[1]), .Z(fsm_state_i_2__N_203[0])) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam i5203_3_lut_3_lut_4_lut.init = 16'h1110;
    LUT4 i1_3_lut_rep_235 (.A(fsm_state_i[2]), .B(fsm_state_i[0]), .C(start_i), 
         .D(fsm_state_i[1]), .Z(tb_clk_c_enable_96)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam i1_3_lut_rep_235.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_2_lut (.A(fsm_state_i[2]), .B(fsm_state_i[0]), .Z(n8980)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(63[3] 148[10])
    defparam i1_2_lut_3_lut_2_lut.init = 16'h4444;
    LUT4 i9_4_lut (.A(counter[4]), .B(counter[11]), .C(counter[14]), .D(counter[10]), 
         .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(counter[15]), .B(counter[13]), .Z(n16_adj_1199)) /* synthesis lut_function=(A+(B)) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i11_4_lut_adj_352 (.A(counter[9]), .B(counter[1]), .C(counter[5]), 
         .D(counter[8]), .Z(n26_adj_1203)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam i11_4_lut_adj_352.init = 16'hfffe;
    LUT4 i5_2_lut (.A(counter[7]), .B(counter[0]), .Z(n20_adj_1204)) /* synthesis lut_function=(A+(B)) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[4] 146[11])
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i1_4_lut (.A(tb_clk_c_enable_96), .B(n9437), .C(n9830), .D(fsm_state_i[2]), 
         .Z(tb_clk_c_enable_61)) /* synthesis lut_function=(A+!(B (C (D))+!B (C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'hafee;
    PFUMX i7517 (.BLUT(n9901), .ALUT(n9902), .C0(fsm_state_i[0]), .Z(tb_clk_c_enable_60));
    LUT4 i1_4_lut_adj_353 (.A(fsm_state_i[0]), .B(n9772), .C(writecommanddataroutine_done_i), 
         .D(fsm_state_i[1]), .Z(fsm_state_i_2__N_203[1])) /* synthesis lut_function=(!(A (B+(D))+!A (B+(C+!(D))))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(78[7:47])
    defparam i1_4_lut_adj_353.init = 16'h0122;
    LUT4 mux_1186_Mux_0_i1_3_lut (.A(\movetopoint_value_i[0] ), .B(\setbacklight_value_i[0] ), 
         .C(switchselect_i[0]), .Z(n1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(86[5] 98[12])
    defparam mux_1186_Mux_0_i1_3_lut.init = 16'hcaca;
    LUT4 i5404_2_lut (.A(\passthrough_value_i[0] ), .B(switchselect_i[0]), 
         .Z(n2_adj_1197)) /* synthesis lut_function=(A (B)) */ ;   // d:/github/lattice/vivaz machxo2/commanddataarbiter.vhd(86[5] 98[12])
    defparam i5404_2_lut.init = 16'h8888;
    PFUMX i7181 (.BLUT(n9147), .ALUT(n9148), .C0(switchselect_i[1]), .Z(valueout_arbiter_15__N_227[5]));
    PFUMX i7497 (.BLUT(n9870), .ALUT(n9871), .C0(fsm_state_i[1]), .Z(tb_clk_c_enable_10));
    PFUMX i7175 (.BLUT(n9141), .ALUT(n9142), .C0(switchselect_i[1]), .Z(commanddata_arbiter_N_261));
    
endmodule
//
// Verilog Description of module debounce_U0
//

module debounce_U0 (CH4_c, GND_net, clk, pb1_c);
    output CH4_c;
    input GND_net;
    input clk;
    input pb1_c;
    
    wire CH4_c /* synthesis is_inv_clock=1 */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(57[4:7])
    wire pb1_i /* synthesis is_clock=1 */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(255[9:14])
    wire clk /* synthesis is_clock=1, SET_AS_NETWORK=clk */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(68[12:15])
    
    wire n8188;
    wire [20:0]count;   // d:/github/lattice/vivaz machxo2/debounce.vhd(18[12:17])
    wire [20:0]n66;
    
    wire n8189, output_N_1154, n9836;
    wire [20:0]n5;
    wire [1:0]inff;   // d:/github/lattice/vivaz machxo2/debounce.vhd(16[12:16])
    
    wire n8187, n8186, n8185, n8184, n8183, n8182, n8181, clk_enable_16, 
        clk_enable_17, n8180, n12, n8, n8_adj_1193, n8297, n6, 
        n10;
    
    INV i7713 (.A(pb1_i), .Z(CH4_c));
    CCU2D add_5_19 (.A0(count[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8188), .COUT(n8189), .S0(n66[17]), .S1(n66[18]));   // d:/github/lattice/vivaz machxo2/debounce.vhd(27[18:23])
    defparam add_5_19.INIT0 = 16'h5aaa;
    defparam add_5_19.INIT1 = 16'h5aaa;
    defparam add_5_19.INJECT1_0 = "NO";
    defparam add_5_19.INJECT1_1 = "NO";
    FD1P3IX count__i0 (.D(n5[0]), .SP(output_N_1154), .CD(n9836), .CK(clk), 
            .Q(count[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=504, LSE_RLINE=504 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i0.GSR = "DISABLED";
    FD1S3AX inff_i0 (.D(pb1_c), .CK(clk), .Q(inff[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=504, LSE_RLINE=504 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam inff_i0.GSR = "DISABLED";
    CCU2D add_5_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8187), .COUT(n8188), .S0(n66[15]), .S1(n66[16]));   // d:/github/lattice/vivaz machxo2/debounce.vhd(27[18:23])
    defparam add_5_17.INIT0 = 16'h5aaa;
    defparam add_5_17.INIT1 = 16'h5aaa;
    defparam add_5_17.INJECT1_0 = "NO";
    defparam add_5_17.INJECT1_1 = "NO";
    CCU2D add_5_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8186), .COUT(n8187), .S0(n66[13]), .S1(n66[14]));   // d:/github/lattice/vivaz machxo2/debounce.vhd(27[18:23])
    defparam add_5_15.INIT0 = 16'h5aaa;
    defparam add_5_15.INIT1 = 16'h5aaa;
    defparam add_5_15.INJECT1_0 = "NO";
    defparam add_5_15.INJECT1_1 = "NO";
    CCU2D add_5_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8185), .COUT(n8186), .S0(n66[11]), .S1(n66[12]));   // d:/github/lattice/vivaz machxo2/debounce.vhd(27[18:23])
    defparam add_5_13.INIT0 = 16'h5aaa;
    defparam add_5_13.INIT1 = 16'h5aaa;
    defparam add_5_13.INJECT1_0 = "NO";
    defparam add_5_13.INJECT1_1 = "NO";
    CCU2D add_5_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8184), .COUT(n8185), .S0(n66[9]), .S1(n66[10]));   // d:/github/lattice/vivaz machxo2/debounce.vhd(27[18:23])
    defparam add_5_11.INIT0 = 16'h5aaa;
    defparam add_5_11.INIT1 = 16'h5aaa;
    defparam add_5_11.INJECT1_0 = "NO";
    defparam add_5_11.INJECT1_1 = "NO";
    CCU2D add_5_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8183), 
          .COUT(n8184), .S0(n66[7]), .S1(n66[8]));   // d:/github/lattice/vivaz machxo2/debounce.vhd(27[18:23])
    defparam add_5_9.INIT0 = 16'h5aaa;
    defparam add_5_9.INIT1 = 16'h5aaa;
    defparam add_5_9.INJECT1_0 = "NO";
    defparam add_5_9.INJECT1_1 = "NO";
    CCU2D add_5_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8182), 
          .COUT(n8183), .S0(n66[5]), .S1(n66[6]));   // d:/github/lattice/vivaz machxo2/debounce.vhd(27[18:23])
    defparam add_5_7.INIT0 = 16'h5aaa;
    defparam add_5_7.INIT1 = 16'h5aaa;
    defparam add_5_7.INJECT1_0 = "NO";
    defparam add_5_7.INJECT1_1 = "NO";
    CCU2D add_5_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8181), 
          .COUT(n8182), .S0(n66[3]), .S1(n66[4]));   // d:/github/lattice/vivaz machxo2/debounce.vhd(27[18:23])
    defparam add_5_5.INIT0 = 16'h5aaa;
    defparam add_5_5.INIT1 = 16'h5aaa;
    defparam add_5_5.INJECT1_0 = "NO";
    defparam add_5_5.INJECT1_1 = "NO";
    FD1P3IX count__i1 (.D(n5[1]), .SP(output_N_1154), .CD(n9836), .CK(clk), 
            .Q(count[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=504, LSE_RLINE=504 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i1.GSR = "DISABLED";
    FD1P3IX count__i2 (.D(n5[2]), .SP(output_N_1154), .CD(n9836), .CK(clk), 
            .Q(count[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=504, LSE_RLINE=504 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i2.GSR = "DISABLED";
    FD1P3IX count__i3 (.D(n66[3]), .SP(output_N_1154), .CD(n9836), .CK(clk), 
            .Q(count[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=504, LSE_RLINE=504 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i3.GSR = "DISABLED";
    FD1P3IX count__i4 (.D(n66[4]), .SP(output_N_1154), .CD(n9836), .CK(clk), 
            .Q(count[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=504, LSE_RLINE=504 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i4.GSR = "DISABLED";
    FD1P3IX count__i5 (.D(n66[5]), .SP(clk_enable_16), .CD(n9836), .CK(clk), 
            .Q(count[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=504, LSE_RLINE=504 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i5.GSR = "DISABLED";
    FD1P3IX count__i6 (.D(n66[6]), .SP(clk_enable_16), .CD(n9836), .CK(clk), 
            .Q(count[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=504, LSE_RLINE=504 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i6.GSR = "DISABLED";
    FD1P3IX count__i7 (.D(n66[7]), .SP(clk_enable_16), .CD(n9836), .CK(clk), 
            .Q(count[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=504, LSE_RLINE=504 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i7.GSR = "DISABLED";
    FD1P3IX count__i8 (.D(n66[8]), .SP(clk_enable_16), .CD(n9836), .CK(clk), 
            .Q(count[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=504, LSE_RLINE=504 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i8.GSR = "DISABLED";
    FD1P3IX count__i9 (.D(n66[9]), .SP(clk_enable_16), .CD(n9836), .CK(clk), 
            .Q(count[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=504, LSE_RLINE=504 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i9.GSR = "DISABLED";
    FD1P3IX count__i10 (.D(n66[10]), .SP(clk_enable_16), .CD(n9836), .CK(clk), 
            .Q(count[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=504, LSE_RLINE=504 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i10.GSR = "DISABLED";
    FD1P3IX count__i11 (.D(n66[11]), .SP(clk_enable_16), .CD(n9836), .CK(clk), 
            .Q(count[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=504, LSE_RLINE=504 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i11.GSR = "DISABLED";
    FD1P3IX count__i12 (.D(n66[12]), .SP(clk_enable_16), .CD(n9836), .CK(clk), 
            .Q(count[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=504, LSE_RLINE=504 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i12.GSR = "DISABLED";
    FD1P3IX count__i13 (.D(n66[13]), .SP(clk_enable_16), .CD(n9836), .CK(clk), 
            .Q(count[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=504, LSE_RLINE=504 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i13.GSR = "DISABLED";
    FD1P3IX count__i14 (.D(n66[14]), .SP(clk_enable_16), .CD(n9836), .CK(clk), 
            .Q(count[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=504, LSE_RLINE=504 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i14.GSR = "DISABLED";
    FD1P3IX count__i15 (.D(n66[15]), .SP(clk_enable_16), .CD(n9836), .CK(clk), 
            .Q(count[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=504, LSE_RLINE=504 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i15.GSR = "DISABLED";
    FD1P3IX count__i16 (.D(n66[16]), .SP(clk_enable_16), .CD(n9836), .CK(clk), 
            .Q(count[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=504, LSE_RLINE=504 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i16.GSR = "DISABLED";
    FD1P3IX count__i17 (.D(n66[17]), .SP(clk_enable_16), .CD(n9836), .CK(clk), 
            .Q(count[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=504, LSE_RLINE=504 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i17.GSR = "DISABLED";
    FD1P3IX count__i18 (.D(n66[18]), .SP(clk_enable_16), .CD(n9836), .CK(clk), 
            .Q(count[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=504, LSE_RLINE=504 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i18.GSR = "DISABLED";
    FD1P3IX count__i19 (.D(n66[19]), .SP(clk_enable_16), .CD(n9836), .CK(clk), 
            .Q(count[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=504, LSE_RLINE=504 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i19.GSR = "DISABLED";
    FD1P3IX count__i20 (.D(n66[20]), .SP(clk_enable_16), .CD(n9836), .CK(clk), 
            .Q(count[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=504, LSE_RLINE=504 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i20.GSR = "DISABLED";
    FD1S3AX inff_i1 (.D(inff[0]), .CK(clk), .Q(inff[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=504, LSE_RLINE=504 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam inff_i1.GSR = "DISABLED";
    FD1P3AX output_16 (.D(inff[1]), .SP(clk_enable_17), .CK(clk), .Q(pb1_i));   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam output_16.GSR = "DISABLED";
    CCU2D add_5_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8180), 
          .COUT(n8181), .S0(n5[1]), .S1(n5[2]));   // d:/github/lattice/vivaz machxo2/debounce.vhd(27[18:23])
    defparam add_5_3.INIT0 = 16'h5aaa;
    defparam add_5_3.INIT1 = 16'h5aaa;
    defparam add_5_3.INJECT1_0 = "NO";
    defparam add_5_3.INJECT1_1 = "NO";
    CCU2D add_5_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n8180), 
          .S1(n5[0]));   // d:/github/lattice/vivaz machxo2/debounce.vhd(27[18:23])
    defparam add_5_1.INIT0 = 16'hF000;
    defparam add_5_1.INIT1 = 16'h5555;
    defparam add_5_1.INJECT1_0 = "NO";
    defparam add_5_1.INJECT1_1 = "NO";
    CCU2D add_5_21 (.A0(count[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8189), .S0(n66[19]), .S1(n66[20]));   // d:/github/lattice/vivaz machxo2/debounce.vhd(27[18:23])
    defparam add_5_21.INIT0 = 16'h5aaa;
    defparam add_5_21.INIT1 = 16'h5aaa;
    defparam add_5_21.INJECT1_0 = "NO";
    defparam add_5_21.INJECT1_1 = "NO";
    LUT4 inff_0__I_0_2_lut_rep_218 (.A(inff[0]), .B(inff[1]), .Z(n9836)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(24[10:26])
    defparam inff_0__I_0_2_lut_rep_218.init = 16'h6666;
    LUT4 i7250_4_lut (.A(count[17]), .B(count[20]), .C(n12), .D(n8), 
         .Z(output_N_1154)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))))) */ ;
    defparam i7250_4_lut.init = 16'h3337;
    LUT4 i1779_2_lut_rep_143_3_lut (.A(inff[0]), .B(inff[1]), .C(output_N_1154), 
         .Z(clk_enable_16)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(24[10:26])
    defparam i1779_2_lut_rep_143_3_lut.init = 16'hf6f6;
    LUT4 i5_4_lut (.A(count[14]), .B(count[18]), .C(count[15]), .D(count[19]), 
         .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(count[12]), .B(count[16]), .C(n8_adj_1193), .D(count[13]), 
         .Z(n8)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut.init = 16'heccc;
    LUT4 i3766_1_lut_2_lut_3_lut (.A(inff[0]), .B(inff[1]), .C(output_N_1154), 
         .Z(clk_enable_17)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+(C)))) */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(24[10:26])
    defparam i3766_1_lut_2_lut_3_lut.init = 16'h0909;
    LUT4 i3_3_lut (.A(count[11]), .B(n8297), .C(count[10]), .Z(n8_adj_1193)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3_3_lut.init = 16'h8080;
    LUT4 i4_4_lut (.A(count[8]), .B(count[7]), .C(count[9]), .D(n6), 
         .Z(n8297)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_347 (.A(count[1]), .B(count[6]), .C(n10), .D(count[5]), 
         .Z(n6)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_347.init = 16'heccc;
    LUT4 i4_4_lut_adj_348 (.A(count[0]), .B(count[2]), .C(count[4]), .D(count[3]), 
         .Z(n10)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_348.init = 16'h8000;
    
endmodule
//
// Verilog Description of module reset_routine
//

module reset_routine (start_i, clk1k_i, resetroutine_go_i, n10297, tb_clk_c, 
            tb_clk_c_enable_111, n5718, \counter[3] , n6361, \counter[2] , 
            \counter[1] , fsm_state_i, tb_clk_c_enable_89, n8288, resetroutine_done_i, 
            counter_5__N_64, GND_net, \counter[0] , vivaz_RESET_c, vivaz_RESET_N_69, 
            n9788, n124, n9775, n6394, n8, n143, n8919, n131);
    output start_i;
    input clk1k_i;
    input resetroutine_go_i;
    input n10297;
    input tb_clk_c;
    input tb_clk_c_enable_111;
    input n5718;
    output \counter[3] ;
    input n6361;
    output \counter[2] ;
    output \counter[1] ;
    output [1:0]fsm_state_i;
    input tb_clk_c_enable_89;
    input n8288;
    output resetroutine_done_i;
    input counter_5__N_64;
    input GND_net;
    output \counter[0] ;
    output vivaz_RESET_c;
    input vivaz_RESET_N_69;
    output n9788;
    input n124;
    input n9775;
    output n6394;
    output n8;
    output n143;
    output n8919;
    output n131;
    
    wire clk1k_i /* synthesis is_clock=1, SET_AS_NETWORK=clk1k_i */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(252[9:16])
    wire resetroutine_go_i /* synthesis is_clock=1, SET_AS_NETWORK=resetroutine_go_i */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(267[9:26])
    wire tb_clk_c /* synthesis SET_AS_NETWORK=tb_clk_c, is_clock=1 */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(63[4:10])
    
    wire start_i_N_85, n9811;
    wire [5:0]counter;   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(25[8:15])
    wire [5:0]n29;
    wire [1:0]fsm_state_i_1__N_66;
    
    wire clk1k_i_enable_1, n8204, n9770, clk1k_i_enable_2, n8203, 
        n8202, n9792, n9843;
    
    FD1S3AX start_i_51 (.D(start_i_N_85), .CK(clk1k_i), .Q(start_i)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=35, LSE_LLINE=332, LSE_RLINE=332 */ ;   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(33[3] 68[10])
    defparam start_i_51.GSR = "DISABLED";
    FD1S3DX start_i_45_50 (.D(n10297), .CK(resetroutine_go_i), .CD(n9811), 
            .Q(start_i_N_85)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=35, LSE_LLINE=332, LSE_RLINE=332 */ ;   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(34[4] 36[11])
    defparam start_i_45_50.GSR = "DISABLED";
    FD1P3IX counter_1682__i4 (.D(n29[4]), .SP(tb_clk_c_enable_111), .CD(n5718), 
            .CK(tb_clk_c), .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(38[15:22])
    defparam counter_1682__i4.GSR = "DISABLED";
    FD1P3IX counter_1682__i3 (.D(n29[3]), .SP(tb_clk_c_enable_111), .CD(n6361), 
            .CK(tb_clk_c), .Q(\counter[3] )) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(38[15:22])
    defparam counter_1682__i3.GSR = "DISABLED";
    FD1P3IX counter_1682__i2 (.D(n29[2]), .SP(tb_clk_c_enable_111), .CD(n6361), 
            .CK(tb_clk_c), .Q(\counter[2] )) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(38[15:22])
    defparam counter_1682__i2.GSR = "DISABLED";
    FD1P3IX counter_1682__i1 (.D(n29[1]), .SP(tb_clk_c_enable_111), .CD(n6361), 
            .CK(tb_clk_c), .Q(\counter[1] )) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(38[15:22])
    defparam counter_1682__i1.GSR = "DISABLED";
    FD1P3IX fsm_state_i_i0_i1 (.D(fsm_state_i_1__N_66[1]), .SP(tb_clk_c_enable_89), 
            .CD(n8288), .CK(tb_clk_c), .Q(fsm_state_i[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=35, LSE_LLINE=332, LSE_RLINE=332 */ ;   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(33[3] 68[10])
    defparam fsm_state_i_i0_i1.GSR = "DISABLED";
    FD1P3IX done_i_54 (.D(n10297), .SP(clk1k_i_enable_1), .CD(counter_5__N_64), 
            .CK(clk1k_i), .Q(resetroutine_done_i));   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(33[3] 68[10])
    defparam done_i_54.GSR = "DISABLED";
    CCU2D counter_1682_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8204), .S0(n29[5]));   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(38[15:22])
    defparam counter_1682_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_1682_add_4_7.INIT1 = 16'h0000;
    defparam counter_1682_add_4_7.INJECT1_0 = "NO";
    defparam counter_1682_add_4_7.INJECT1_1 = "NO";
    FD1P3IX counter_1682__i0 (.D(n29[0]), .SP(tb_clk_c_enable_111), .CD(n6361), 
            .CK(tb_clk_c), .Q(\counter[0] )) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(38[15:22])
    defparam counter_1682__i0.GSR = "DISABLED";
    FD1P3JX fsm_state_i_i0_i0 (.D(n9770), .SP(tb_clk_c_enable_89), .PD(n8288), 
            .CK(tb_clk_c), .Q(fsm_state_i[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=35, LSE_LLINE=332, LSE_RLINE=332 */ ;   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(33[3] 68[10])
    defparam fsm_state_i_i0_i0.GSR = "DISABLED";
    FD1P3AX vivaz_RESET_i_56 (.D(vivaz_RESET_N_69), .SP(clk1k_i_enable_2), 
            .CK(clk1k_i), .Q(vivaz_RESET_c));   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(33[3] 68[10])
    defparam vivaz_RESET_i_56.GSR = "DISABLED";
    CCU2D counter_1682_add_4_5 (.A0(\counter[3] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8203), .COUT(n8204), .S0(n29[3]), .S1(n29[4]));   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(38[15:22])
    defparam counter_1682_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_1682_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_1682_add_4_5.INJECT1_0 = "NO";
    defparam counter_1682_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_1682_add_4_3 (.A0(\counter[1] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\counter[2] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8202), .COUT(n8203), .S0(n29[1]), .S1(n29[2]));   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(38[15:22])
    defparam counter_1682_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_1682_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_1682_add_4_3.INJECT1_0 = "NO";
    defparam counter_1682_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_1682_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\counter[0] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n8202), .S1(n29[0]));   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(38[15:22])
    defparam counter_1682_add_4_1.INIT0 = 16'hF000;
    defparam counter_1682_add_4_1.INIT1 = 16'h0555;
    defparam counter_1682_add_4_1.INJECT1_0 = "NO";
    defparam counter_1682_add_4_1.INJECT1_1 = "NO";
    FD1P3IX counter_1682__i5 (.D(n29[5]), .SP(tb_clk_c_enable_111), .CD(n6361), 
            .CK(tb_clk_c), .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(38[15:22])
    defparam counter_1682__i5.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(fsm_state_i[0]), .B(n9788), .C(n9792), 
         .D(n9843), .Z(clk1k_i_enable_2)) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(33[3] 68[10])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf888;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(fsm_state_i[0]), .B(n9788), .C(n9792), 
         .D(n9843), .Z(fsm_state_i_1__N_66[1])) /* synthesis lut_function=(A (B)+!A (C (D))) */ ;   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(33[3] 68[10])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hd888;
    LUT4 i5320_2_lut_rep_225 (.A(counter[4]), .B(counter[5]), .Z(n9843)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5320_2_lut_rep_225.init = 16'h8888;
    LUT4 i1_2_lut_rep_193_3_lut (.A(counter[4]), .B(counter[5]), .C(n124), 
         .Z(n9811)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_193_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_174 (.A(fsm_state_i[1]), .B(n124), .Z(n9792)) /* synthesis lut_function=(A (B)) */ ;   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(38[15:22])
    defparam i1_2_lut_rep_174.init = 16'h8888;
    LUT4 i1_3_lut_3_lut_4_lut (.A(fsm_state_i[1]), .B(n124), .C(n9843), 
         .D(n9775), .Z(n6394)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(38[15:22])
    defparam i1_3_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_152_3_lut_4_lut (.A(fsm_state_i[1]), .B(n124), .C(fsm_state_i[0]), 
         .D(n9843), .Z(n9770)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(38[15:22])
    defparam i1_2_lut_rep_152_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_344 (.A(fsm_state_i[1]), .B(n124), .C(fsm_state_i[0]), 
         .D(n9843), .Z(clk1k_i_enable_1)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(38[15:22])
    defparam i1_2_lut_3_lut_4_lut_adj_344.init = 16'h8000;
    LUT4 i19_3_lut_4_lut (.A(n9843), .B(n124), .C(fsm_state_i[1]), .D(start_i), 
         .Z(n8)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(38[15:22])
    defparam i19_3_lut_4_lut.init = 16'h8f80;
    LUT4 i2_3_lut (.A(start_i), .B(fsm_state_i[1]), .C(n9775), .Z(n143)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i2_3_lut.init = 16'hdfdf;
    LUT4 i1_3_lut_rep_170 (.A(fsm_state_i[1]), .B(n8919), .C(n131), .Z(n9788)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(38[15:22])
    defparam i1_3_lut_rep_170.init = 16'h0404;
    LUT4 i2_3_lut_adj_345 (.A(\counter[2] ), .B(\counter[0] ), .C(\counter[3] ), 
         .Z(n8919)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(38[15:22])
    defparam i2_3_lut_adj_345.init = 16'h0808;
    LUT4 i2_3_lut_adj_346 (.A(counter[5]), .B(counter[4]), .C(\counter[1] ), 
         .Z(n131)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_346.init = 16'hfefe;
    
endmodule
//
// Verilog Description of module setbacklight
//

module setbacklight (\setbacklight_value_i[7] , tb_clk_c, n9027, \setbacklight_value_i[4] , 
            fsm_state_i, setbacklight_go_i, n10297, executed_i, n9695, 
            setbacklight_done_i, start_N_652, setbacklight_commanddata_i, 
            setbacklight_start_i, \setbacklight_value_i[0] , n9026);
    output \setbacklight_value_i[7] ;
    input tb_clk_c;
    input n9027;
    output \setbacklight_value_i[4] ;
    output [2:0]fsm_state_i;
    input setbacklight_go_i;
    input n10297;
    output executed_i;
    input n9695;
    output setbacklight_done_i;
    input start_N_652;
    output setbacklight_commanddata_i;
    output setbacklight_start_i;
    output \setbacklight_value_i[0] ;
    input n9026;
    
    wire tb_clk_c /* synthesis SET_AS_NETWORK=tb_clk_c, is_clock=1 */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(63[4:10])
    wire setbacklight_go_i /* synthesis is_clock=1, SET_AS_NETWORK=setbacklight_go_i */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(294[9:26])
    
    wire tb_clk_c_enable_100, n9826, start_i, start_i_N_531, n9760, 
        n9794, executing_i, n9847;
    wire [2:0]fsm_state_i_2__N_444;
    
    wire n9592, n9593, tb_clk_c_enable_25, n6895, n9848, n6835, 
        n6803, n117, tb_clk_c_enable_99, tb_clk_c_enable_31, executing_i_N_495, 
        tb_clk_c_enable_104, n100, tb_clk_c_enable_87, executed_i_N_477, 
        tb_clk_c_enable_88, commanddata_N_466, n9776, n13, n17, n9851, 
        n9831, n9832, n127;
    
    FD1P3AX valueout__i7 (.D(n9027), .SP(tb_clk_c_enable_100), .CK(tb_clk_c), 
            .Q(\setbacklight_value_i[7] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=34, LSE_LLINE=410, LSE_RLINE=410 */ ;   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(42[3] 200[10])
    defparam valueout__i7.GSR = "DISABLED";
    FD1P3AX valueout__i4 (.D(n9826), .SP(tb_clk_c_enable_100), .CK(tb_clk_c), 
            .Q(\setbacklight_value_i[4] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=34, LSE_LLINE=410, LSE_RLINE=410 */ ;   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(42[3] 200[10])
    defparam valueout__i4.GSR = "DISABLED";
    FD1S3AX start_i_194 (.D(start_i_N_531), .CK(tb_clk_c), .Q(start_i)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=34, LSE_LLINE=410, LSE_RLINE=410 */ ;   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(42[3] 200[10])
    defparam start_i_194.GSR = "ENABLED";
    FD1S3AX fsm_state_i_i0 (.D(n9760), .CK(tb_clk_c), .Q(fsm_state_i[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=34, LSE_LLINE=410, LSE_RLINE=410 */ ;   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(42[3] 200[10])
    defparam fsm_state_i_i0.GSR = "ENABLED";
    FD1S3DX start_i_185_193 (.D(n10297), .CK(setbacklight_go_i), .CD(n9794), 
            .Q(start_i_N_531)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=34, LSE_LLINE=410, LSE_RLINE=410 */ ;   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(43[4] 45[11])
    defparam start_i_185_193.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_229 (.A(executing_i), .B(executed_i), .Z(n9847)) /* synthesis lut_function=(A (B)) */ ;   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(42[3] 200[10])
    defparam i1_2_lut_rep_229.init = 16'h8888;
    LUT4 n341_bdd_2_lut_7466_3_lut (.A(executing_i), .B(executed_i), .C(n9695), 
         .Z(fsm_state_i_2__N_444[2])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(42[3] 200[10])
    defparam n341_bdd_2_lut_7466_3_lut.init = 16'h8080;
    LUT4 n6833_bdd_4_lut_7458 (.A(n9847), .B(fsm_state_i[0]), .C(fsm_state_i[1]), 
         .D(fsm_state_i[2]), .Z(n9592)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A ((C (D)+!C !(D))+!B))) */ ;
    defparam n6833_bdd_4_lut_7458.init = 16'h2660;
    LUT4 n6833_bdd_3_lut (.A(fsm_state_i[0]), .B(fsm_state_i[1]), .C(fsm_state_i[2]), 
         .Z(n9593)) /* synthesis lut_function=(!((B (C))+!A)) */ ;
    defparam n6833_bdd_3_lut.init = 16'h2a2a;
    FD1P3AY done_i_196 (.D(n6895), .SP(tb_clk_c_enable_25), .CK(tb_clk_c), 
            .Q(setbacklight_done_i));   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(42[3] 200[10])
    defparam done_i_196.GSR = "ENABLED";
    LUT4 i15_3_lut_4_lut (.A(executing_i), .B(executed_i), .C(n9848), 
         .D(fsm_state_i[0]), .Z(n6835)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(42[3] 200[10])
    defparam i15_3_lut_4_lut.init = 16'h8f80;
    LUT4 i4893_3_lut_4_lut_4_lut (.A(fsm_state_i[2]), .B(fsm_state_i[0]), 
         .C(fsm_state_i[1]), .D(start_i), .Z(n6803)) /* synthesis lut_function=(A (B (C))+!A !(B+(C+!(D)))) */ ;   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(42[3] 200[10])
    defparam i4893_3_lut_4_lut_4_lut.init = 16'h8180;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_4_lut (.A(fsm_state_i[2]), .B(fsm_state_i[0]), 
         .C(start_i), .D(fsm_state_i[1]), .Z(tb_clk_c_enable_25)) /* synthesis lut_function=(A (B (D))+!A !(B+((D)+!C))) */ ;   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(42[3] 200[10])
    defparam i1_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'h8810;
    LUT4 i1_2_lut_rep_230 (.A(fsm_state_i[2]), .B(fsm_state_i[1]), .Z(n9848)) /* synthesis lut_function=(A+(B)) */ ;   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(24[9:20])
    defparam i1_2_lut_rep_230.init = 16'heeee;
    LUT4 i1_3_lut_4_lut (.A(fsm_state_i[2]), .B(fsm_state_i[1]), .C(n117), 
         .D(n6803), .Z(tb_clk_c_enable_99)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(24[9:20])
    defparam i1_3_lut_4_lut.init = 16'hffe0;
    FD1P3AX executing_i_202 (.D(executing_i_N_495), .SP(tb_clk_c_enable_31), 
            .CK(tb_clk_c), .Q(executing_i));   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(42[3] 200[10])
    defparam executing_i_202.GSR = "ENABLED";
    LUT4 i113_3_lut (.A(executed_i), .B(start_N_652), .C(executing_i), 
         .Z(n117)) /* synthesis lut_function=(!(A (B+(C))+!A !(B))) */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(18[3:8])
    defparam i113_3_lut.init = 16'h4646;
    LUT4 i1_3_lut (.A(start_N_652), .B(n6803), .C(n6835), .Z(tb_clk_c_enable_104)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(24[9:20])
    defparam i1_3_lut.init = 16'hecec;
    LUT4 i1_2_lut (.A(start_N_652), .B(n100), .Z(fsm_state_i_2__N_444[1])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_4_lut (.A(n9847), .B(fsm_state_i[2]), .C(fsm_state_i[0]), 
         .D(fsm_state_i[1]), .Z(n100)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B+((D)+!C)))) */ ;
    defparam i1_4_lut.init = 16'h0ab0;
    FD1P3AX executed_i_199 (.D(executed_i_N_477), .SP(tb_clk_c_enable_87), 
            .CK(tb_clk_c), .Q(executed_i));   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(42[3] 200[10])
    defparam executed_i_199.GSR = "ENABLED";
    FD1P3AX commanddata_i_201 (.D(commanddata_N_466), .SP(tb_clk_c_enable_88), 
            .CK(tb_clk_c), .Q(setbacklight_commanddata_i));   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(42[3] 200[10])
    defparam commanddata_i_201.GSR = "DISABLED";
    FD1P3AX go_i_197 (.D(executed_i_N_477), .SP(tb_clk_c_enable_99), .CK(tb_clk_c), 
            .Q(setbacklight_start_i));   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(42[3] 200[10])
    defparam go_i_197.GSR = "ENABLED";
    FD1P3AX valueout__i0 (.D(n9026), .SP(tb_clk_c_enable_100), .CK(tb_clk_c), 
            .Q(\setbacklight_value_i[0] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=34, LSE_LLINE=410, LSE_RLINE=410 */ ;   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(42[3] 200[10])
    defparam valueout__i0.GSR = "DISABLED";
    FD1P3IX fsm_state_i_i1 (.D(fsm_state_i_2__N_444[1]), .SP(tb_clk_c_enable_104), 
            .CD(n9776), .CK(tb_clk_c), .Q(fsm_state_i[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=34, LSE_LLINE=410, LSE_RLINE=410 */ ;   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(42[3] 200[10])
    defparam fsm_state_i_i1.GSR = "ENABLED";
    FD1P3IX fsm_state_i_i2 (.D(fsm_state_i_2__N_444[2]), .SP(tb_clk_c_enable_104), 
            .CD(n9776), .CK(tb_clk_c), .Q(fsm_state_i[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=34, LSE_LLINE=410, LSE_RLINE=410 */ ;   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(42[3] 200[10])
    defparam fsm_state_i_i2.GSR = "ENABLED";
    LUT4 i1_1_lut_rep_208 (.A(fsm_state_i[0]), .Z(n9826)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut_rep_208.init = 16'h5555;
    LUT4 i4985_1_lut_2_lut_4_lut_4_lut (.A(fsm_state_i[0]), .B(fsm_state_i[1]), 
         .C(fsm_state_i[2]), .D(start_i), .Z(n6895)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i4985_1_lut_2_lut_4_lut_4_lut.init = 16'hfeff;
    LUT4 n13_bdd_4_lut (.A(n13), .B(n17), .C(fsm_state_i[1]), .D(start_N_652), 
         .Z(tb_clk_c_enable_87)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n13_bdd_4_lut.init = 16'hca00;
    LUT4 n9593_bdd_4_lut (.A(n9593), .B(n9592), .C(start_N_652), .D(n9776), 
         .Z(n9760)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n9593_bdd_4_lut.init = 16'hffca;
    LUT4 i1_2_lut_rep_158_4_lut_4_lut (.A(fsm_state_i[0]), .B(fsm_state_i[1]), 
         .C(fsm_state_i[2]), .D(start_i), .Z(n9776)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_rep_158_4_lut_4_lut.init = 16'h0100;
    LUT4 i7141_2_lut_rep_233 (.A(fsm_state_i[1]), .B(fsm_state_i[0]), .Z(n9851)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7141_2_lut_rep_233.init = 16'h8888;
    LUT4 i1_2_lut_rep_213 (.A(start_N_652), .B(executed_i), .Z(n9831)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_213.init = 16'h2222;
    LUT4 i1_3_lut_4_lut_adj_341 (.A(start_N_652), .B(executed_i), .C(fsm_state_i[1]), 
         .D(n9832), .Z(tb_clk_c_enable_100)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_341.init = 16'h0220;
    LUT4 i1_3_lut_4_lut_adj_342 (.A(start_N_652), .B(executed_i), .C(fsm_state_i[2]), 
         .D(n9851), .Z(commanddata_N_466)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_342.init = 16'h0220;
    LUT4 i1_2_lut_rep_214 (.A(fsm_state_i[2]), .B(fsm_state_i[0]), .Z(n9832)) /* synthesis lut_function=(A (B)) */ ;   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(42[3] 200[10])
    defparam i1_2_lut_rep_214.init = 16'h8888;
    LUT4 i1_2_lut_rep_176_3_lut (.A(fsm_state_i[2]), .B(fsm_state_i[0]), 
         .C(fsm_state_i[1]), .Z(n9794)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(42[3] 200[10])
    defparam i1_2_lut_rep_176_3_lut.init = 16'h8080;
    LUT4 i136_4_lut_4_lut (.A(fsm_state_i[2]), .B(fsm_state_i[0]), .C(fsm_state_i[1]), 
         .D(n127), .Z(tb_clk_c_enable_31)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(C (D)))) */ ;   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(42[3] 200[10])
    defparam i136_4_lut_4_lut.init = 16'h7a00;
    LUT4 i4913_4_lut_4_lut (.A(fsm_state_i[2]), .B(fsm_state_i[0]), .C(executed_i), 
         .D(fsm_state_i[1]), .Z(executed_i_N_477)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (C+!(D)))) */ ;   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(42[3] 200[10])
    defparam i4913_4_lut_4_lut.init = 16'h070a;
    LUT4 i1_2_lut_3_lut_4_lut (.A(executed_i), .B(executing_i), .C(fsm_state_i[0]), 
         .D(fsm_state_i[2]), .Z(n17)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0ddd;
    LUT4 i35_3_lut_4_lut (.A(executed_i), .B(executing_i), .C(fsm_state_i[2]), 
         .D(fsm_state_i[0]), .Z(n13)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;
    defparam i35_3_lut_4_lut.init = 16'hdfd0;
    LUT4 i1_4_lut_4_lut (.A(fsm_state_i[1]), .B(fsm_state_i[0]), .C(fsm_state_i[2]), 
         .D(n9831), .Z(tb_clk_c_enable_88)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(C (D)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h7a00;
    LUT4 i135_2_lut (.A(start_N_652), .B(executed_i), .Z(n127)) /* synthesis lut_function=(A+(B)) */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(18[3:8])
    defparam i135_2_lut.init = 16'heeee;
    LUT4 i1_3_lut_adj_343 (.A(executed_i), .B(start_N_652), .C(executing_i), 
         .Z(executing_i_N_495)) /* synthesis lut_function=(A ((C)+!B)) */ ;   // d:/github/lattice/vivaz machxo2/setbacklight.vhd(42[3] 200[10])
    defparam i1_3_lut_adj_343.init = 16'ha2a2;
    
endmodule
//
// Verilog Description of module write_command_data
//

module write_command_data (tb_clk_c, main_reset_i, CH1_c, n10297, vivaz_D015_c_0, 
            \writecommanddataroutine_value_i[0] , GND_net, writecommanddataroutine_done_i, 
            vivaz_D015_c_7, \writecommanddataroutine_value_i[7] , vivaz_D015_c_6, 
            \writecommanddataroutine_value_i[6] , vivaz_D015_c_5, \writecommanddataroutine_value_i[5] , 
            vivaz_D015_c_4, \writecommanddataroutine_value_i[4] , vivaz_D015_c_3, 
            \writecommanddataroutine_value_i[3] , vivaz_D015_c_2, \writecommanddataroutine_value_i[2] , 
            vivaz_D015_c_1, \writecommanddataroutine_value_i[1] , vivaz_WR_c, 
            n9769, fsm_state_i, n9436, n7793, n9852, n8255);
    input tb_clk_c;
    input main_reset_i;
    input CH1_c;
    input n10297;
    output vivaz_D015_c_0;
    input \writecommanddataroutine_value_i[0] ;
    input GND_net;
    output writecommanddataroutine_done_i;
    output vivaz_D015_c_7;
    input \writecommanddataroutine_value_i[7] ;
    output vivaz_D015_c_6;
    input \writecommanddataroutine_value_i[6] ;
    output vivaz_D015_c_5;
    input \writecommanddataroutine_value_i[5] ;
    output vivaz_D015_c_4;
    input \writecommanddataroutine_value_i[4] ;
    output vivaz_D015_c_3;
    input \writecommanddataroutine_value_i[3] ;
    output vivaz_D015_c_2;
    input \writecommanddataroutine_value_i[2] ;
    output vivaz_D015_c_1;
    input \writecommanddataroutine_value_i[1] ;
    output vivaz_WR_c;
    input n9769;
    input [2:0]fsm_state_i;
    output n9436;
    output n7793;
    input n9852;
    output n8255;
    
    wire tb_clk_c /* synthesis SET_AS_NETWORK=tb_clk_c, is_clock=1 */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(63[4:10])
    wire CH1_c /* synthesis is_clock=1, SET_AS_NETWORK=CH1_c */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(54[4:7])
    wire [2:0]fsm_state_i_c;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(29[9:20])
    
    wire n5494, start_i, start_i_N_167, tb_clk_c_enable_57, tb_clk_c_enable_7, 
        tb_clk_c_enable_58, n8293, n4721, tb_clk_c_enable_76;
    wire [15:0]counter_i;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(32[9:18])
    wire [15:0]n51;
    
    wire n8151;
    wire [15:0]n14;
    
    wire n8152, tb_clk_c_enable_29, vivaz_WR_N_157, n8320, n10, n17, 
        n16, n8156, n8155, n8150, tb_clk_c_enable_102, n8154, n8153, 
        n8149;
    
    FD1S3IX fsm_state_i__i0 (.D(n5494), .CK(tb_clk_c), .CD(main_reset_i), 
            .Q(fsm_state_i_c[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam fsm_state_i__i0.GSR = "DISABLED";
    FD1S3DX start_i_43 (.D(n10297), .CK(CH1_c), .CD(start_i_N_167), .Q(start_i)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(36[4] 38[11])
    defparam start_i_43.GSR = "DISABLED";
    FD1P3IX vivaz_d0_d15_i__i1 (.D(\writecommanddataroutine_value_i[0] ), 
            .SP(tb_clk_c_enable_57), .CD(main_reset_i), .CK(tb_clk_c), 
            .Q(vivaz_D015_c_0)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam vivaz_d0_d15_i__i1.GSR = "DISABLED";
    FD1P3IX fsm_state_i__i1 (.D(n8293), .SP(tb_clk_c_enable_7), .CD(tb_clk_c_enable_58), 
            .CK(tb_clk_c), .Q(fsm_state_i_c[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam fsm_state_i__i1.GSR = "DISABLED";
    LUT4 i7234_2_lut_2_lut_3_lut (.A(fsm_state_i_c[0]), .B(fsm_state_i_c[1]), 
         .C(n4721), .Z(tb_clk_c_enable_76)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(47[11:27])
    defparam i7234_2_lut_2_lut_3_lut.init = 16'h2020;
    FD1P3IX counter_i__i0 (.D(n51[0]), .SP(tb_clk_c_enable_76), .CD(tb_clk_c_enable_58), 
            .CK(tb_clk_c), .Q(counter_i[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam counter_i__i0.GSR = "DISABLED";
    CCU2D add_14_7 (.A0(counter_i[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter_i[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8151), .COUT(n8152), .S0(n14[5]), .S1(n14[6]));   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(51[19:28])
    defparam add_14_7.INIT0 = 16'h5aaa;
    defparam add_14_7.INIT1 = 16'h5aaa;
    defparam add_14_7.INJECT1_0 = "NO";
    defparam add_14_7.INJECT1_1 = "NO";
    FD1P3AX done_i_44 (.D(vivaz_WR_N_157), .SP(tb_clk_c_enable_29), .CK(tb_clk_c), 
            .Q(writecommanddataroutine_done_i));   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam done_i_44.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(n8320), .B(counter_i[6]), .C(n10), .D(counter_i[3]), 
         .Z(n4721)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(48[9:25])
    defparam i1_4_lut.init = 16'hbfff;
    LUT4 i9_4_lut (.A(n17), .B(counter_i[4]), .C(n16), .D(counter_i[11]), 
         .Z(n8320)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(48[9:25])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut (.A(counter_i[7]), .B(counter_i[8]), .C(counter_i[9]), 
         .D(counter_i[5]), .Z(n10)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    CCU2D add_14_17 (.A0(counter_i[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8156), 
          .S0(n14[15]));   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(51[19:28])
    defparam add_14_17.INIT0 = 16'h5aaa;
    defparam add_14_17.INIT1 = 16'h0000;
    defparam add_14_17.INJECT1_0 = "NO";
    defparam add_14_17.INJECT1_1 = "NO";
    LUT4 i7_4_lut (.A(counter_i[0]), .B(counter_i[14]), .C(counter_i[13]), 
         .D(counter_i[1]), .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(48[9:25])
    defparam i7_4_lut.init = 16'hfffe;
    CCU2D add_14_15 (.A0(counter_i[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter_i[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8155), .COUT(n8156), .S0(n14[13]), .S1(n14[14]));   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(51[19:28])
    defparam add_14_15.INIT0 = 16'h5aaa;
    defparam add_14_15.INIT1 = 16'h5aaa;
    defparam add_14_15.INJECT1_0 = "NO";
    defparam add_14_15.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_239 (.A(start_i), .B(fsm_state_i_c[1]), .C(fsm_state_i_c[0]), 
         .Z(tb_clk_c_enable_57)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i2_3_lut_rep_239.init = 16'h0202;
    FD1P3IX vivaz_d0_d15_i__i8 (.D(\writecommanddataroutine_value_i[7] ), 
            .SP(tb_clk_c_enable_57), .CD(main_reset_i), .CK(tb_clk_c), 
            .Q(vivaz_D015_c_7)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam vivaz_d0_d15_i__i8.GSR = "DISABLED";
    FD1P3IX vivaz_d0_d15_i__i7 (.D(\writecommanddataroutine_value_i[6] ), 
            .SP(tb_clk_c_enable_57), .CD(main_reset_i), .CK(tb_clk_c), 
            .Q(vivaz_D015_c_6)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam vivaz_d0_d15_i__i7.GSR = "DISABLED";
    FD1P3IX vivaz_d0_d15_i__i6 (.D(\writecommanddataroutine_value_i[5] ), 
            .SP(tb_clk_c_enable_57), .CD(main_reset_i), .CK(tb_clk_c), 
            .Q(vivaz_D015_c_5)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam vivaz_d0_d15_i__i6.GSR = "DISABLED";
    FD1P3IX vivaz_d0_d15_i__i5 (.D(\writecommanddataroutine_value_i[4] ), 
            .SP(tb_clk_c_enable_57), .CD(main_reset_i), .CK(tb_clk_c), 
            .Q(vivaz_D015_c_4)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam vivaz_d0_d15_i__i5.GSR = "DISABLED";
    LUT4 i1741_2_lut_4_lut (.A(start_i), .B(fsm_state_i_c[1]), .C(fsm_state_i_c[0]), 
         .D(main_reset_i), .Z(tb_clk_c_enable_58)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;
    defparam i1741_2_lut_4_lut.init = 16'hff02;
    FD1P3IX vivaz_d0_d15_i__i4 (.D(\writecommanddataroutine_value_i[3] ), 
            .SP(tb_clk_c_enable_57), .CD(main_reset_i), .CK(tb_clk_c), 
            .Q(vivaz_D015_c_3)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam vivaz_d0_d15_i__i4.GSR = "DISABLED";
    LUT4 i3420_1_lut_3_lut (.A(start_i), .B(fsm_state_i_c[1]), .C(fsm_state_i_c[0]), 
         .Z(vivaz_WR_N_157)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i3420_1_lut_3_lut.init = 16'hfdfd;
    FD1P3IX vivaz_d0_d15_i__i3 (.D(\writecommanddataroutine_value_i[2] ), 
            .SP(tb_clk_c_enable_57), .CD(main_reset_i), .CK(tb_clk_c), 
            .Q(vivaz_D015_c_2)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam vivaz_d0_d15_i__i3.GSR = "DISABLED";
    FD1P3IX vivaz_d0_d15_i__i2 (.D(\writecommanddataroutine_value_i[1] ), 
            .SP(tb_clk_c_enable_58), .CD(main_reset_i), .CK(tb_clk_c), 
            .Q(vivaz_D015_c_1)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam vivaz_d0_d15_i__i2.GSR = "DISABLED";
    CCU2D add_14_5 (.A0(counter_i[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter_i[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8150), .COUT(n8151), .S0(n14[3]), .S1(n14[4]));   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(51[19:28])
    defparam add_14_5.INIT0 = 16'h5aaa;
    defparam add_14_5.INIT1 = 16'h5aaa;
    defparam add_14_5.INJECT1_0 = "NO";
    defparam add_14_5.INJECT1_1 = "NO";
    LUT4 i6_4_lut (.A(counter_i[10]), .B(counter_i[15]), .C(counter_i[12]), 
         .D(counter_i[2]), .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(48[9:25])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_4_lut (.A(start_i), .B(fsm_state_i_c[1]), .C(fsm_state_i_c[0]), 
         .D(main_reset_i), .Z(tb_clk_c_enable_102)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (D))) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'hff0e;
    FD1P3IX counter_i__i1 (.D(n14[1]), .SP(tb_clk_c_enable_76), .CD(tb_clk_c_enable_58), 
            .CK(tb_clk_c), .Q(counter_i[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam counter_i__i1.GSR = "DISABLED";
    FD1P3IX counter_i__i2 (.D(n14[2]), .SP(tb_clk_c_enable_76), .CD(tb_clk_c_enable_58), 
            .CK(tb_clk_c), .Q(counter_i[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam counter_i__i2.GSR = "DISABLED";
    FD1P3IX counter_i__i3 (.D(n14[3]), .SP(tb_clk_c_enable_76), .CD(tb_clk_c_enable_58), 
            .CK(tb_clk_c), .Q(counter_i[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam counter_i__i3.GSR = "DISABLED";
    FD1P3IX counter_i__i4 (.D(n14[4]), .SP(tb_clk_c_enable_76), .CD(tb_clk_c_enable_58), 
            .CK(tb_clk_c), .Q(counter_i[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam counter_i__i4.GSR = "DISABLED";
    FD1P3IX counter_i__i5 (.D(n14[5]), .SP(tb_clk_c_enable_76), .CD(tb_clk_c_enable_58), 
            .CK(tb_clk_c), .Q(counter_i[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam counter_i__i5.GSR = "DISABLED";
    FD1P3IX counter_i__i6 (.D(n14[6]), .SP(tb_clk_c_enable_76), .CD(tb_clk_c_enable_58), 
            .CK(tb_clk_c), .Q(counter_i[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam counter_i__i6.GSR = "DISABLED";
    FD1P3IX counter_i__i7 (.D(n14[7]), .SP(tb_clk_c_enable_76), .CD(tb_clk_c_enable_58), 
            .CK(tb_clk_c), .Q(counter_i[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam counter_i__i7.GSR = "DISABLED";
    FD1P3IX counter_i__i8 (.D(n14[8]), .SP(tb_clk_c_enable_76), .CD(tb_clk_c_enable_58), 
            .CK(tb_clk_c), .Q(counter_i[8])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam counter_i__i8.GSR = "DISABLED";
    FD1P3IX counter_i__i9 (.D(n14[9]), .SP(tb_clk_c_enable_76), .CD(tb_clk_c_enable_58), 
            .CK(tb_clk_c), .Q(counter_i[9])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam counter_i__i9.GSR = "DISABLED";
    FD1P3IX counter_i__i10 (.D(n14[10]), .SP(tb_clk_c_enable_76), .CD(tb_clk_c_enable_58), 
            .CK(tb_clk_c), .Q(counter_i[10])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam counter_i__i10.GSR = "DISABLED";
    FD1P3IX counter_i__i11 (.D(n14[11]), .SP(tb_clk_c_enable_76), .CD(tb_clk_c_enable_58), 
            .CK(tb_clk_c), .Q(counter_i[11])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam counter_i__i11.GSR = "DISABLED";
    FD1P3IX counter_i__i12 (.D(n14[12]), .SP(tb_clk_c_enable_76), .CD(tb_clk_c_enable_58), 
            .CK(tb_clk_c), .Q(counter_i[12])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam counter_i__i12.GSR = "DISABLED";
    FD1P3IX counter_i__i13 (.D(n14[13]), .SP(tb_clk_c_enable_76), .CD(tb_clk_c_enable_58), 
            .CK(tb_clk_c), .Q(counter_i[13])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam counter_i__i13.GSR = "DISABLED";
    FD1P3IX counter_i__i14 (.D(n14[14]), .SP(tb_clk_c_enable_76), .CD(tb_clk_c_enable_58), 
            .CK(tb_clk_c), .Q(counter_i[14])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam counter_i__i14.GSR = "DISABLED";
    FD1P3IX counter_i__i15 (.D(n14[15]), .SP(tb_clk_c_enable_76), .CD(tb_clk_c_enable_58), 
            .CK(tb_clk_c), .Q(counter_i[15])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam counter_i__i15.GSR = "DISABLED";
    FD1P3JX vivaz_wr_i_46 (.D(vivaz_WR_N_157), .SP(tb_clk_c_enable_102), 
            .PD(main_reset_i), .CK(tb_clk_c), .Q(vivaz_WR_c)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=26, LSE_RCOL=44, LSE_LLINE=343, LSE_RLINE=343 */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam vivaz_wr_i_46.GSR = "DISABLED";
    CCU2D add_14_13 (.A0(counter_i[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter_i[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8154), .COUT(n8155), .S0(n14[11]), .S1(n14[12]));   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(51[19:28])
    defparam add_14_13.INIT0 = 16'h5aaa;
    defparam add_14_13.INIT1 = 16'h5aaa;
    defparam add_14_13.INJECT1_0 = "NO";
    defparam add_14_13.INJECT1_1 = "NO";
    CCU2D add_14_11 (.A0(counter_i[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter_i[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8153), .COUT(n8154), .S0(n14[9]), .S1(n14[10]));   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(51[19:28])
    defparam add_14_11.INIT0 = 16'h5aaa;
    defparam add_14_11.INIT1 = 16'h5aaa;
    defparam add_14_11.INJECT1_0 = "NO";
    defparam add_14_11.INJECT1_1 = "NO";
    CCU2D add_14_9 (.A0(counter_i[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter_i[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8152), .COUT(n8153), .S0(n14[7]), .S1(n14[8]));   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(51[19:28])
    defparam add_14_9.INIT0 = 16'h5aaa;
    defparam add_14_9.INIT1 = 16'h5aaa;
    defparam add_14_9.INJECT1_0 = "NO";
    defparam add_14_9.INJECT1_1 = "NO";
    LUT4 fsm_state_i_0__bdd_2_lut_3_lut (.A(writecommanddataroutine_done_i), 
         .B(n9769), .C(fsm_state_i[1]), .Z(n9436)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam fsm_state_i_0__bdd_2_lut_3_lut.init = 16'h7070;
    CCU2D add_14_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter_i[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8149), .S1(n51[0]));   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(51[19:28])
    defparam add_14_1.INIT0 = 16'hF000;
    defparam add_14_1.INIT1 = 16'h5555;
    defparam add_14_1.INJECT1_0 = "NO";
    defparam add_14_1.INJECT1_1 = "NO";
    CCU2D add_14_3 (.A0(counter_i[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter_i[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8149), .COUT(n8150), .S0(n14[1]), .S1(n14[2]));   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(51[19:28])
    defparam add_14_3.INIT0 = 16'h5aaa;
    defparam add_14_3.INIT1 = 16'h5aaa;
    defparam add_14_3.INJECT1_0 = "NO";
    defparam add_14_3.INJECT1_1 = "NO";
    LUT4 i5889_4_lut_4_lut_4_lut (.A(writecommanddataroutine_done_i), .B(n9769), 
         .C(fsm_state_i[0]), .D(fsm_state_i[2]), .Z(n7793)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((D)+!C))) */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam i5889_4_lut_4_lut_4_lut.init = 16'h0058;
    LUT4 i2_3_lut_4_lut (.A(writecommanddataroutine_done_i), .B(n9769), 
         .C(fsm_state_i[1]), .D(n9852), .Z(n8255)) /* synthesis lut_function=(A (B+((D)+!C))+!A ((D)+!C)) */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(40[3] 68[10])
    defparam i2_3_lut_4_lut.init = 16'hff8f;
    LUT4 i1_2_lut_4_lut_3_lut (.A(fsm_state_i_c[0]), .B(fsm_state_i_c[1]), 
         .C(start_i), .Z(tb_clk_c_enable_29)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(53[11:27])
    defparam i1_2_lut_4_lut_3_lut.init = 16'h5454;
    LUT4 vivaz_WR_N_160_I_0_2_lut_3_lut (.A(fsm_state_i_c[0]), .B(fsm_state_i_c[1]), 
         .C(main_reset_i), .Z(start_i_N_167)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(53[11:27])
    defparam vivaz_WR_N_160_I_0_2_lut_3_lut.init = 16'hf4f4;
    LUT4 i1220_3_lut_3_lut_4_lut_3_lut_rep_236 (.A(fsm_state_i_c[0]), .B(fsm_state_i_c[1]), 
         .C(n4721), .Z(tb_clk_c_enable_7)) /* synthesis lut_function=(!(A (B+(C))+!A !(B))) */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(53[11:27])
    defparam i1220_3_lut_3_lut_4_lut_3_lut_rep_236.init = 16'h4646;
    LUT4 i3581_3_lut_4_lut_4_lut (.A(fsm_state_i_c[0]), .B(fsm_state_i_c[1]), 
         .C(n4721), .D(start_i), .Z(n5494)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(D))) */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(53[11:27])
    defparam i3581_3_lut_4_lut_4_lut.init = 16'hb9a8;
    LUT4 i7287_3_lut (.A(fsm_state_i_c[1]), .B(n4721), .C(fsm_state_i_c[0]), 
         .Z(n8293)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/github/lattice/vivaz machxo2/write_command_data.vhd(47[11:27])
    defparam i7287_3_lut.init = 16'h1010;
    
endmodule
//
// Verilog Description of module fsm_init
//

module fsm_init (fsm_state_i, resetroutine_done_i, n10306, tb_clk_c, 
            n12_adj_17, n10297, counter_i, \passthrough_value_i[6] , 
            \passthrough_value_i[5] , counter_i_6__N_688, executed_i, 
            n9771, fsm_state_i_4__N_683, CH4_c, n9786, CH2_c, setbacklight_go_i, 
            resetroutine_go_i, executing_i, executing_i_N_913, n9122, 
            passthrough_start_i, n321, n118, n9808, \passthrough_value_i[0] , 
            start_N_652, setbacklight_done_i, n16, passthrough_commanddata_i, 
            \passthrough_value_i[1] , \passthrough_value_i[2] , \passthrough_value_i[3] , 
            \passthrough_value_i[4] , \passthrough_value_i[7] , main_reset_i, 
            n4440);
    output [4:0]fsm_state_i;
    input resetroutine_done_i;
    input n10306;
    input tb_clk_c;
    input [4:0]n12_adj_17;
    input n10297;
    output [6:0]counter_i;
    output \passthrough_value_i[6] ;
    output \passthrough_value_i[5] ;
    output [6:0]counter_i_6__N_688;
    output executed_i;
    input n9771;
    output [4:0]fsm_state_i_4__N_683;
    input CH4_c;
    output n9786;
    output CH2_c;
    output setbacklight_go_i;
    output resetroutine_go_i;
    output executing_i;
    input executing_i_N_913;
    input n9122;
    output passthrough_start_i;
    input n321;
    output n118;
    output n9808;
    output \passthrough_value_i[0] ;
    input start_N_652;
    input setbacklight_done_i;
    input [6:0]n16;
    output passthrough_commanddata_i;
    output \passthrough_value_i[1] ;
    output \passthrough_value_i[2] ;
    output \passthrough_value_i[3] ;
    output \passthrough_value_i[4] ;
    output \passthrough_value_i[7] ;
    input main_reset_i;
    output n4440;
    
    wire tb_clk_c /* synthesis SET_AS_NETWORK=tb_clk_c, is_clock=1 */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(63[4:10])
    wire CH4_c /* synthesis is_inv_clock=1 */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(57[4:7])
    wire setbacklight_go_i /* synthesis is_clock=1, SET_AS_NETWORK=setbacklight_go_i */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(294[9:26])
    wire resetroutine_go_i /* synthesis is_clock=1, SET_AS_NETWORK=resetroutine_go_i */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(267[9:26])
    
    wire n9787, n9785, n10290, n8961, tb_clk_c_enable_86, n4620, 
        n9810, n9150, n8409, n8410, n8411, n9845, n5614, fsm_state_i_4__N_799, 
        n5613, fsm_state_i_4__N_773, n5608, counter_i_6__N_851, counter_i_6__N_873, 
        n3357, counter_i_6__N_810, counter_i_6__N_847, tb_clk_c_enable_19;
    wire [15:0]valueout_passthrough_15__N_981;
    
    wire n5618, n5617, n5616, n5622, n5621, n5620, n5626, n5625, 
        n5624, n5630, n5629, n5628, n5634, n5633, n5632, n5638, 
        n5637, n5636, n9814, n9819;
    wire [4:0]fsm_state_i_4__N_725;
    
    wire n9152, n2496, fsm_state_i_4__N_775, n6, tb_clk_c_enable_37, 
        n10302, n9784, start_i, n9783, n10300, n9774, fsm_state_i_4__N_760, 
        n8995, fsm_state_i_4__N_796, n4053, n9765, fsm_state_i_4__N_790, 
        n9868, n9867, n19, n5612, start_i_N_1108, n10298, n9880, 
        n9879, n9816, n9809, n9815, n9801, n9802, n9445, tb_clk_c_enable_35, 
        tb_clk_c_enable_106, n9886, n8987, n9885, n9766, fsm_state_i_4__N_787, 
        tb_clk_c_enable_38, n9825, tb_clk_c_enable_42, n9781, n9892, 
        n9891, n8977, tb_clk_c_enable_90, n2, n14, n9896, tb_clk_c_enable_43, 
        n9895, n9899, n9898, n9807, n6_adj_1175, n9039, n9, n9_adj_1176, 
        n10304, counter_i_6__N_870, n10294, n7388, n8997, n9844, 
        n9864, n9818, n9151, n9849, n5610, counter_i_6__N_843, fsm_state_i_4__N_700, 
        n9793, n10293, n9686, n9791, n9828, n9043, n9846, fsm_state_i_4__N_774, 
        fsm_state_i_4__N_731, n5609, n9782, n4154, n4150, fsm_state_i_4__N_746, 
        fsm_state_i_4__N_745, n9777, n9019, n9447, n9937, counter_i_6__N_867, 
        counter_i_6__N_839, counter_i_6__N_864, counter_i_6__N_835, counter_i_6__N_861, 
        counter_i_6__N_831, counter_i_6__N_858, counter_i_6__N_809, counter_i_6__N_855, 
        n5640, fsm_state_i_4__N_759, n5654, n1521, n1469, n9448;
    wire [4:0]n3683;
    
    wire n18, n4, n9778, commanddata_passthrough_N_1053, n4550, n5243, 
        n34, n6_adj_1179, n9840, n8983, n9841, n91, n5653, n5650, 
        n5649, n5646, fsm_state_i_4__N_793, n10295, n8306, n4144, 
        n5645, n5642, n5641, tb_clk_c_enable_110, n9797, n5644, 
        n5648, n5652, n9418, n7409, n9805, n4156;
    wire [15:0]n2003;
    wire [15:0]n2124;
    wire [15:0]n2196;
    
    wire n9182, n6_adj_1184, n9806, n9866, n9056, n9803, n70, 
        n8956, n119, n78, n9799, n9243, n12_adj_1185, n9681, n9679, 
        n9683, n9684, n9680, n9682, n9833, n93, n9893, n9449, 
        n9446, fsm_state_i_4__N_761, n7346, n61, n9881, n9444, n9900, 
        n9897, n9865;
    
    LUT4 i7284_4_lut_4_lut (.A(n9787), .B(n9785), .C(n10290), .D(n8961), 
         .Z(tb_clk_c_enable_86)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C)))) */ ;
    defparam i7284_4_lut_4_lut.init = 16'h1050;
    LUT4 i7182_4_lut (.A(n4620), .B(n9810), .C(fsm_state_i[0]), .D(fsm_state_i[1]), 
         .Z(n9150)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i7182_4_lut.init = 16'h3a0a;
    PFUMX i6450 (.BLUT(n8409), .ALUT(n8410), .C0(fsm_state_i[3]), .Z(n8411));
    LUT4 i1_4_lut (.A(resetroutine_done_i), .B(n9845), .C(n10306), .D(fsm_state_i[2]), 
         .Z(n4620)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[4] 655[11])
    defparam i1_4_lut.init = 16'hc088;
    FD1S3DX fsm_state_i_832_i0_i0_3698_3699_reset (.D(n12_adj_17[0]), .CK(tb_clk_c), 
            .CD(fsm_state_i_4__N_799), .Q(n5614)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam fsm_state_i_832_i0_i0_3698_3699_reset.GSR = "DISABLED";
    FD1S3BX fsm_state_i_832_i0_i0_3698_3699_set (.D(n12_adj_17[0]), .CK(tb_clk_c), 
            .PD(fsm_state_i_4__N_773), .Q(n5613)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam fsm_state_i_832_i0_i0_3698_3699_set.GSR = "DISABLED";
    FD1S1D i3693 (.D(n10297), .CK(counter_i_6__N_851), .CD(counter_i_6__N_873), 
           .Q(n5608));   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam i3693.GSR = "DISABLED";
    LUT4 counter_i_6__N_810_I_0_933_2_lut_3_lut (.A(counter_i[1]), .B(n3357), 
         .C(counter_i_6__N_810), .Z(counter_i_6__N_847)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(642[7] 647[14])
    defparam counter_i_6__N_810_I_0_933_2_lut_3_lut.init = 16'h2020;
    FD1P3AX valueout_passthrough_i_i0_i6 (.D(valueout_passthrough_15__N_981[6]), 
            .SP(tb_clk_c_enable_19), .CK(tb_clk_c), .Q(\passthrough_value_i[6] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam valueout_passthrough_i_i0_i6.GSR = "ENABLED";
    FD1P3AX valueout_passthrough_i_i0_i5 (.D(valueout_passthrough_15__N_981[5]), 
            .SP(tb_clk_c_enable_19), .CK(tb_clk_c), .Q(\passthrough_value_i[5] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam valueout_passthrough_i_i0_i5.GSR = "ENABLED";
    LUT4 i3704_3_lut (.A(n5618), .B(n5617), .C(n5616), .Z(counter_i_6__N_688[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam i3704_3_lut.init = 16'hcaca;
    LUT4 i3708_3_lut (.A(n5622), .B(n5621), .C(n5620), .Z(counter_i_6__N_688[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam i3708_3_lut.init = 16'hcaca;
    LUT4 i3712_3_lut (.A(n5626), .B(n5625), .C(n5624), .Z(counter_i_6__N_688[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam i3712_3_lut.init = 16'hcaca;
    LUT4 i3716_3_lut (.A(n5630), .B(n5629), .C(n5628), .Z(counter_i_6__N_688[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam i3716_3_lut.init = 16'hcaca;
    LUT4 i3720_3_lut (.A(n5634), .B(n5633), .C(n5632), .Z(counter_i_6__N_688[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam i3720_3_lut.init = 16'hcaca;
    LUT4 i3724_3_lut (.A(n5638), .B(n5637), .C(n5636), .Z(counter_i_6__N_688[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam i3724_3_lut.init = 16'hcaca;
    LUT4 i7129_2_lut_rep_167_3_lut_4_lut_4_lut (.A(n9814), .B(fsm_state_i[0]), 
         .C(fsm_state_i[1]), .D(n9819), .Z(n9785)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B !(C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(201[11:27])
    defparam i7129_2_lut_rep_167_3_lut_4_lut_4_lut.init = 16'hef2f;
    PFUMX mux_1145_i1 (.BLUT(fsm_state_i_4__N_725[0]), .ALUT(n9152), .C0(n2496), 
          .Z(fsm_state_i_4__N_775));
    LUT4 i7237_2_lut_2_lut_3_lut_4_lut (.A(n6), .B(n9814), .C(n9787), 
         .D(executed_i), .Z(tb_clk_c_enable_37)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(175[10:26])
    defparam i7237_2_lut_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i5212_2_lut_rep_166_3_lut_4_lut_4_lut (.A(n9819), .B(fsm_state_i[0]), 
         .C(n10302), .D(n9814), .Z(n9784)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B (C+(D))+!B !(C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(201[11:27])
    defparam i5212_2_lut_rep_166_3_lut_4_lut_4_lut.init = 16'hefe3;
    LUT4 i1_3_lut_rep_165_4_lut_4_lut (.A(n9819), .B(start_i), .C(fsm_state_i[0]), 
         .D(fsm_state_i[1]), .Z(n9783)) /* synthesis lut_function=(A+(B (D)+!B ((D)+!C))) */ ;
    defparam i1_3_lut_rep_165_4_lut_4_lut.init = 16'hffab;
    LUT4 i1_3_lut_rep_156_4_lut_4_lut (.A(fsm_state_i[0]), .B(n10300), .C(fsm_state_i[1]), 
         .D(fsm_state_i[4]), .Z(n9774)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(B+(D))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[4] 655[11])
    defparam i1_3_lut_rep_156_4_lut_4_lut.init = 16'h809b;
    LUT4 i7269_2_lut_2_lut (.A(fsm_state_i_4__N_760), .B(n8995), .Z(fsm_state_i_4__N_796)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i7269_2_lut_2_lut.init = 16'h1111;
    LUT4 i2197_2_lut_3_lut_4_lut_4_lut_4_lut (.A(n9810), .B(fsm_state_i[4]), 
         .C(fsm_state_i[3]), .D(fsm_state_i[2]), .Z(n4053)) /* synthesis lut_function=(!((B (C+(D))+!B !(C))+!A)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam i2197_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h2028;
    LUT4 i7263_2_lut_2_lut (.A(n9765), .B(n8995), .Z(fsm_state_i_4__N_790)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i7263_2_lut_2_lut.init = 16'h1111;
    LUT4 i1_4_lut_then_3_lut (.A(fsm_state_i[3]), .B(fsm_state_i[0]), .C(fsm_state_i[2]), 
         .Z(n9868)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_4_lut_then_3_lut.init = 16'h4040;
    LUT4 i1_4_lut_else_3_lut (.A(fsm_state_i[3]), .B(fsm_state_i[4]), .C(fsm_state_i[2]), 
         .Z(n9867)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i1_4_lut_else_3_lut.init = 16'h0101;
    LUT4 i1_4_lut_adj_322 (.A(n9771), .B(n19), .C(fsm_state_i[3]), .D(n9774), 
         .Z(n8961)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_322.init = 16'h4544;
    FD1S3AX fsm_state_i_i0 (.D(fsm_state_i_4__N_683[0]), .CK(tb_clk_c), 
            .Q(fsm_state_i[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam fsm_state_i_i0.GSR = "ENABLED";
    FD1S1D i3697 (.D(n10297), .CK(fsm_state_i_4__N_773), .CD(fsm_state_i_4__N_799), 
           .Q(n5612));   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam i3697.GSR = "DISABLED";
    FD1S3AX counter_i_i0 (.D(counter_i_6__N_688[0]), .CK(tb_clk_c), .Q(counter_i[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam counter_i_i0.GSR = "DISABLED";
    FD1S3DX start_i_844 (.D(n10297), .CK(CH4_c), .CD(start_i_N_1108), 
            .Q(start_i)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(56[3] 58[10])
    defparam start_i_844.GSR = "DISABLED";
    LUT4 i2_3_lut_rep_196 (.A(n10298), .B(fsm_state_i[4]), .C(n10300), 
         .Z(n9814)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[8:26])
    defparam i2_3_lut_rep_196.init = 16'hefef;
    LUT4 fsm_state_i_4__I_0_916_i9_2_lut_rep_168_4_lut (.A(n10298), .B(fsm_state_i[4]), 
         .C(n10300), .D(n6), .Z(n9786)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[8:26])
    defparam fsm_state_i_4__I_0_916_i9_2_lut_rep_168_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_4_lut_then_4_lut (.A(fsm_state_i[0]), .B(fsm_state_i[1]), 
         .C(fsm_state_i[2]), .D(fsm_state_i[3]), .Z(n9880)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_2_lut_4_lut_then_4_lut.init = 16'hff7f;
    LUT4 i1_2_lut_4_lut_else_4_lut (.A(fsm_state_i[0]), .B(fsm_state_i[1]), 
         .C(fsm_state_i[2]), .D(fsm_state_i[3]), .Z(n9879)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (C+(D))) */ ;
    defparam i1_2_lut_4_lut_else_4_lut.init = 16'hff58;
    LUT4 i1_2_lut_rep_191_4_lut (.A(fsm_state_i[3]), .B(fsm_state_i[4]), 
         .C(n10300), .D(n9816), .Z(n9809)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[8:26])
    defparam i1_2_lut_rep_191_4_lut.init = 16'hffef;
    LUT4 i5192_2_lut_rep_197 (.A(fsm_state_i[4]), .B(n10298), .Z(n9815)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5192_2_lut_rep_197.init = 16'heeee;
    LUT4 n997_bdd_4_lut_7448 (.A(n4620), .B(n9801), .C(fsm_state_i[0]), 
         .D(n9802), .Z(n9445)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B (C (D))+!B (C))) */ ;
    defparam n997_bdd_4_lut_7448.init = 16'hf232;
    FD1P3AX done_i_895 (.D(n10297), .SP(tb_clk_c_enable_35), .CK(tb_clk_c), 
            .Q(CH2_c));   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam done_i_895.GSR = "ENABLED";
    LUT4 i7275_2_lut_then_4_lut (.A(tb_clk_c_enable_106), .B(n10290), .C(fsm_state_i[3]), 
         .D(fsm_state_i[0]), .Z(n9886)) /* synthesis lut_function=(A (B+((D)+!C))) */ ;
    defparam i7275_2_lut_then_4_lut.init = 16'haa8a;
    LUT4 i7275_2_lut_else_4_lut (.A(tb_clk_c_enable_106), .B(fsm_state_i[1]), 
         .C(n8987), .D(fsm_state_i[0]), .Z(n9885)) /* synthesis lut_function=(!((B (C (D)))+!A)) */ ;
    defparam i7275_2_lut_else_4_lut.init = 16'h2aaa;
    LUT4 i7260_2_lut_2_lut (.A(n9766), .B(n8995), .Z(fsm_state_i_4__N_787)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i7260_2_lut_2_lut.init = 16'h1111;
    FD1P3AX start_setbacklight_i_892 (.D(n10297), .SP(tb_clk_c_enable_37), 
            .CK(tb_clk_c), .Q(setbacklight_go_i));   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam start_setbacklight_i_892.GSR = "ENABLED";
    FD1P3AX start_reset_i_888 (.D(n9825), .SP(tb_clk_c_enable_38), .CK(tb_clk_c), 
            .Q(resetroutine_go_i));   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam start_reset_i_888.GSR = "ENABLED";
    FD1P3AX executing_i_887 (.D(executing_i_N_913), .SP(tb_clk_c_enable_42), 
            .CK(tb_clk_c), .Q(executing_i));   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam executing_i_887.GSR = "ENABLED";
    LUT4 i1_4_lut_then_4_lut (.A(n9781), .B(fsm_state_i[1]), .C(fsm_state_i[2]), 
         .D(fsm_state_i[4]), .Z(n9892)) /* synthesis lut_function=(!((B (C+!(D))+!B !(D))+!A)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[4] 655[11])
    defparam i1_4_lut_then_4_lut.init = 16'h2a00;
    LUT4 i1_4_lut_else_4_lut (.A(n9781), .B(fsm_state_i[1]), .C(fsm_state_i[2]), 
         .D(fsm_state_i[4]), .Z(n9891)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[4] 655[11])
    defparam i1_4_lut_else_4_lut.init = 16'haa02;
    LUT4 i7257_4_lut (.A(n9787), .B(n8977), .C(executed_i), .D(n9122), 
         .Z(tb_clk_c_enable_90)) /* synthesis lut_function=(A+!(B+!((D)+!C))) */ ;
    defparam i7257_4_lut.init = 16'hbbab;
    LUT4 i1_4_lut_adj_323 (.A(n19), .B(n9784), .C(n2), .D(n14), .Z(n8977)) /* synthesis lut_function=(A (B)+!A (B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_323.init = 16'hc8cc;
    LUT4 i1_4_lut_then_4_lut_adj_324 (.A(fsm_state_i[4]), .B(fsm_state_i[2]), 
         .C(fsm_state_i[3]), .D(fsm_state_i[0]), .Z(n9896)) /* synthesis lut_function=(A ((C+!(D))+!B)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[4] 655[11])
    defparam i1_4_lut_then_4_lut_adj_324.init = 16'ha2aa;
    FD1P3AX start_passthrough_i_891 (.D(n9825), .SP(tb_clk_c_enable_43), 
            .CK(tb_clk_c), .Q(passthrough_start_i));   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam start_passthrough_i_891.GSR = "ENABLED";
    LUT4 i1_4_lut_else_4_lut_adj_325 (.A(fsm_state_i[4]), .Z(n9895)) /* synthesis lut_function=(A) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[4] 655[11])
    defparam i1_4_lut_else_4_lut_adj_325.init = 16'haaaa;
    LUT4 i1_4_lut_4_lut_then_4_lut (.A(fsm_state_i[1]), .B(fsm_state_i[3]), 
         .C(fsm_state_i[4]), .D(fsm_state_i[0]), .Z(n9899)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (B (C)+!B !(C+!(D)))) */ ;
    defparam i1_4_lut_4_lut_then_4_lut.init = 16'he3e0;
    LUT4 i1_4_lut_4_lut_else_4_lut (.A(fsm_state_i[1]), .B(fsm_state_i[3]), 
         .C(fsm_state_i[4]), .D(fsm_state_i[0]), .Z(n9898)) /* synthesis lut_function=(A (B (C)+!B !(C+(D)))+!A (B (C)+!B !(C))) */ ;
    defparam i1_4_lut_4_lut_else_4_lut.init = 16'hc1c3;
    LUT4 i3_4_lut (.A(n9807), .B(n6_adj_1175), .C(n9814), .D(n9039), 
         .Z(counter_i_6__N_810)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[4] 655[11])
    defparam i3_4_lut.init = 16'h8880;
    LUT4 i2_3_lut_4_lut (.A(fsm_state_i[4]), .B(fsm_state_i[3]), .C(fsm_state_i[0]), 
         .D(fsm_state_i[1]), .Z(n9)) /* synthesis lut_function=(A ((D)+!C)+!A (((D)+!C)+!B)) */ ;
    defparam i2_3_lut_4_lut.init = 16'hff1f;
    LUT4 i1_3_lut_4_lut (.A(fsm_state_i[4]), .B(fsm_state_i[3]), .C(n9_adj_1176), 
         .D(n321), .Z(n118)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hff01;
    LUT4 i1_2_lut_rep_237 (.A(n10306), .B(executed_i), .Z(n10290)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_237.init = 16'h2222;
    LUT4 i1_2_lut_rep_198 (.A(fsm_state_i[0]), .B(fsm_state_i[1]), .Z(n9816)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(201[11:27])
    defparam i1_2_lut_rep_198.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_190_3_lut (.A(n10304), .B(fsm_state_i[1]), .C(n9819), 
         .Z(n9808)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(201[11:27])
    defparam i1_2_lut_rep_190_3_lut.init = 16'hfbfb;
    FD1P3AX valueout_passthrough_i_i0_i0 (.D(valueout_passthrough_15__N_981[0]), 
            .SP(tb_clk_c_enable_106), .CK(tb_clk_c), .Q(\passthrough_value_i[0] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam valueout_passthrough_i_i0_i0.GSR = "ENABLED";
    FD1S1D i3701 (.D(n10297), .CK(counter_i_6__N_847), .CD(counter_i_6__N_870), 
           .Q(n5616));   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam i3701.GSR = "DISABLED";
    LUT4 n9934_bdd_4_lut_then_4_lut (.A(fsm_state_i[3]), .B(fsm_state_i[1]), 
         .C(fsm_state_i[2]), .D(fsm_state_i[4]), .Z(n10294)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C (D)))) */ ;
    defparam n9934_bdd_4_lut_then_4_lut.init = 16'h9080;
    LUT4 i1577_4_lut (.A(n9810), .B(n9809), .C(n7388), .D(n8997), .Z(n3357)) /* synthesis lut_function=(A ((C+(D))+!B)) */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(56[5] 364[12])
    defparam i1577_4_lut.init = 16'haaa2;
    LUT4 i5481_4_lut (.A(n10298), .B(n9844), .C(fsm_state_i[4]), .D(n10304), 
         .Z(n7388)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+!(C)))) */ ;
    defparam i5481_4_lut.init = 16'h1012;
    LUT4 i1_4_lut_3_lut_else_4_lut_4_lut (.A(start_N_652), .B(executed_i), 
         .C(fsm_state_i[2]), .D(fsm_state_i[3]), .Z(n9864)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;
    defparam i1_4_lut_3_lut_else_4_lut_4_lut.init = 16'h0d00;
    LUT4 fsm_state_i_4__I_0_947_i6_2_lut_rep_200 (.A(n10304), .B(n10302), 
         .Z(n9818)) /* synthesis lut_function=(A+(B)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[8:26])
    defparam fsm_state_i_4__I_0_947_i6_2_lut_rep_200.init = 16'heeee;
    LUT4 i2_3_lut_rep_169_4_lut (.A(n10304), .B(fsm_state_i[1]), .C(start_i), 
         .D(n9819), .Z(n9787)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[8:26])
    defparam i2_3_lut_rep_169_4_lut.init = 16'h0010;
    LUT4 i7183_3_lut_4_lut_4_lut (.A(start_N_652), .B(n9845), .C(fsm_state_i[0]), 
         .D(setbacklight_done_i), .Z(n9151)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C))+!A (B ((D)+!C)+!B !(C)))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(147[5] 174[12])
    defparam i7183_3_lut_4_lut_4_lut.init = 16'h38f8;
    LUT4 i5208_2_lut_rep_231 (.A(fsm_state_i[2]), .B(n10302), .Z(n9849)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5208_2_lut_rep_231.init = 16'h8888;
    FD1S3DX counter_i_841_i0_i0_3694_3695_reset (.D(n16[0]), .CK(tb_clk_c), 
            .CD(counter_i_6__N_873), .Q(n5610)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam counter_i_841_i0_i0_3694_3695_reset.GSR = "DISABLED";
    LUT4 counter_i_6__N_810_I_0_932_2_lut_3_lut (.A(counter_i[2]), .B(n3357), 
         .C(counter_i_6__N_810), .Z(counter_i_6__N_843)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(642[7] 647[14])
    defparam counter_i_6__N_810_I_0_932_2_lut_3_lut.init = 16'h2020;
    LUT4 fsm_state_i_4__I_0_913_2_lut (.A(n8995), .B(n9766), .Z(fsm_state_i_4__N_700)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam fsm_state_i_4__I_0_913_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_rep_175_3_lut (.A(n10300), .B(fsm_state_i[1]), .C(fsm_state_i[3]), 
         .Z(n9793)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1_2_lut_rep_175_3_lut.init = 16'hf8f8;
    LUT4 n9934_bdd_4_lut_else_4_lut (.A(fsm_state_i[3]), .B(fsm_state_i[1]), 
         .C(fsm_state_i[2]), .D(fsm_state_i[4]), .Z(n10293)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B ((D)+!C)+!B !(D)))) */ ;
    defparam n9934_bdd_4_lut_else_4_lut.init = 16'h1948;
    LUT4 i1_3_lut_rep_201 (.A(n10298), .B(n10300), .C(fsm_state_i[4]), 
         .Z(n9819)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[8:26])
    defparam i1_3_lut_rep_201.init = 16'hfefe;
    LUT4 i40_4_lut (.A(n9686), .B(n9791), .C(n9781), .D(n9828), .Z(n9043)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[4] 655[11])
    defparam i40_4_lut.init = 16'hcac0;
    LUT4 fsm_state_i_4__I_0_918_i9_2_lut_rep_189_4_lut (.A(n10298), .B(n10300), 
         .C(fsm_state_i[4]), .D(n9846), .Z(n9807)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[8:26])
    defparam fsm_state_i_4__I_0_918_i9_2_lut_rep_189_4_lut.init = 16'hfeff;
    LUT4 i7272_2_lut_2_lut (.A(fsm_state_i_4__N_774), .B(n8995), .Z(fsm_state_i_4__N_799)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i7272_2_lut_2_lut.init = 16'h1111;
    LUT4 fsm_state_i_4__N_701_I_0_921_2_lut (.A(n8995), .B(n9765), .Z(fsm_state_i_4__N_731)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam fsm_state_i_4__N_701_I_0_921_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_rep_173_3_lut (.A(n10300), .B(n10302), .C(n10304), .Z(n9791)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_173_3_lut.init = 16'h8080;
    FD1S3BX counter_i_841_i0_i0_3694_3695_set (.D(n16[0]), .CK(tb_clk_c), 
            .PD(counter_i_6__N_851), .Q(n5609)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam counter_i_841_i0_i0_3694_3695_set.GSR = "DISABLED";
    LUT4 i2295_3_lut_4_lut (.A(n9782), .B(fsm_state_i[1]), .C(fsm_state_i[3]), 
         .D(n4154), .Z(valueout_passthrough_15__N_981[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i2295_3_lut_4_lut.init = 16'h8f80;
    LUT4 i2291_3_lut_4_lut (.A(n9782), .B(fsm_state_i[1]), .C(fsm_state_i[3]), 
         .D(n4150), .Z(valueout_passthrough_15__N_981[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i2291_3_lut_4_lut.init = 16'h8f80;
    LUT4 fsm_state_i_4__N_701_I_0_922_2_lut (.A(n8995), .B(fsm_state_i_4__N_746), 
         .Z(fsm_state_i_4__N_745)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam fsm_state_i_4__N_701_I_0_922_2_lut.init = 16'h4444;
    LUT4 i7296_4_lut_4_lut (.A(n9777), .B(n19), .C(n2), .D(n9784), .Z(n9019)) /* synthesis lut_function=(!(A+(B (D)+!B (C (D))))) */ ;
    defparam i7296_4_lut_4_lut.init = 16'h0155;
    LUT4 n1521_bdd_2_lut (.A(fsm_state_i[1]), .B(fsm_state_i[0]), .Z(n9447)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam n1521_bdd_2_lut.init = 16'h6666;
    LUT4 fsm_state_i_0__bdd_4_lut_7601 (.A(fsm_state_i[0]), .B(fsm_state_i[1]), 
         .C(fsm_state_i[2]), .D(\passthrough_value_i[0] ), .Z(n9937)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(C (D)))) */ ;
    defparam fsm_state_i_0__bdd_4_lut_7601.init = 16'h5800;
    FD1S3AX fsm_state_i_i1 (.D(fsm_state_i_4__N_683[1]), .CK(tb_clk_c), 
            .Q(fsm_state_i[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam fsm_state_i_i1.GSR = "ENABLED";
    FD1S3AX fsm_state_i_i2 (.D(fsm_state_i_4__N_683[2]), .CK(tb_clk_c), 
            .Q(fsm_state_i[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam fsm_state_i_i2.GSR = "ENABLED";
    FD1S3AX fsm_state_i_i3 (.D(fsm_state_i_4__N_683[3]), .CK(tb_clk_c), 
            .Q(fsm_state_i[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam fsm_state_i_i3.GSR = "ENABLED";
    FD1S3AX fsm_state_i_i4 (.D(fsm_state_i_4__N_683[4]), .CK(tb_clk_c), 
            .Q(fsm_state_i[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam fsm_state_i_i4.GSR = "ENABLED";
    FD1S1D i3705 (.D(n10297), .CK(counter_i_6__N_843), .CD(counter_i_6__N_867), 
           .Q(n5620));   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam i3705.GSR = "DISABLED";
    FD1S1D i3709 (.D(n10297), .CK(counter_i_6__N_839), .CD(counter_i_6__N_864), 
           .Q(n5624));   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam i3709.GSR = "DISABLED";
    FD1S1D i3713 (.D(n10297), .CK(counter_i_6__N_835), .CD(counter_i_6__N_861), 
           .Q(n5628));   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam i3713.GSR = "DISABLED";
    FD1S1D i3717 (.D(n10297), .CK(counter_i_6__N_831), .CD(counter_i_6__N_858), 
           .Q(n5632));   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam i3717.GSR = "DISABLED";
    FD1S1D i3721 (.D(n10297), .CK(counter_i_6__N_809), .CD(counter_i_6__N_855), 
           .Q(n5636));   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam i3721.GSR = "DISABLED";
    FD1S1D i3725 (.D(n10297), .CK(fsm_state_i_4__N_759), .CD(fsm_state_i_4__N_796), 
           .Q(n5640));   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam i3725.GSR = "DISABLED";
    FD1S3AX counter_i_i1 (.D(counter_i_6__N_688[1]), .CK(tb_clk_c), .Q(counter_i[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam counter_i_i1.GSR = "DISABLED";
    FD1S3AX counter_i_i2 (.D(counter_i_6__N_688[2]), .CK(tb_clk_c), .Q(counter_i[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam counter_i_i2.GSR = "DISABLED";
    FD1S3AX counter_i_i3 (.D(counter_i_6__N_688[3]), .CK(tb_clk_c), .Q(counter_i[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam counter_i_i3.GSR = "DISABLED";
    FD1S3AX counter_i_i4 (.D(counter_i_6__N_688[4]), .CK(tb_clk_c), .Q(counter_i[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam counter_i_i4.GSR = "DISABLED";
    FD1S3AX counter_i_i5 (.D(counter_i_6__N_688[5]), .CK(tb_clk_c), .Q(counter_i[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam counter_i_i5.GSR = "DISABLED";
    FD1S3AX counter_i_i6 (.D(counter_i_6__N_688[6]), .CK(tb_clk_c), .Q(counter_i[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam counter_i_i6.GSR = "DISABLED";
    FD1S3DX fsm_state_i_832_i0_i4_3738_3739_reset (.D(n12_adj_17[4]), .CK(tb_clk_c), 
            .CD(fsm_state_i_4__N_787), .Q(n5654)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam fsm_state_i_832_i0_i4_3738_3739_reset.GSR = "DISABLED";
    LUT4 n1521_bdd_4_lut (.A(n1521), .B(n1469), .C(fsm_state_i[1]), .D(fsm_state_i[0]), 
         .Z(n9448)) /* synthesis lut_function=(A (D)+!A !(B+!(C))) */ ;
    defparam n1521_bdd_4_lut.init = 16'hba10;
    LUT4 i2294_4_lut (.A(n3683[0]), .B(fsm_state_i[2]), .C(n18), .D(n4), 
         .Z(n4154)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i2294_4_lut.init = 16'h0aca;
    LUT4 i1_4_lut_adj_326 (.A(fsm_state_i[1]), .B(n10290), .C(n10304), 
         .D(n9778), .Z(n4)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A ((C (D))+!B)) */ ;
    defparam i1_4_lut_adj_326.init = 16'hf3bb;
    LUT4 executed_i_I_0_1_lut_rep_207 (.A(executed_i), .Z(n9825)) /* synthesis lut_function=(!(A)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(180[9:25])
    defparam executed_i_I_0_1_lut_rep_207.init = 16'h5555;
    LUT4 i1_3_lut_3_lut (.A(executed_i), .B(executing_i), .C(n10306), 
         .Z(n14)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(180[9:25])
    defparam i1_3_lut_3_lut.init = 16'hd0d0;
    FD1P3AX commanddata_passthrough_i_890 (.D(commanddata_passthrough_N_1053), 
            .SP(tb_clk_c_enable_86), .CK(tb_clk_c), .Q(passthrough_commanddata_i));   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam commanddata_passthrough_i_890.GSR = "ENABLED";
    FD1P3AX executed_i_885 (.D(n9019), .SP(tb_clk_c_enable_90), .CK(tb_clk_c), 
            .Q(executed_i));   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam executed_i_885.GSR = "ENABLED";
    LUT4 i2290_4_lut (.A(n4550), .B(n10290), .C(n5243), .D(n9778), .Z(n4150)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C))) */ ;
    defparam i2290_4_lut.init = 16'hc0c8;
    LUT4 i44_3_lut_4_lut_3_lut (.A(executed_i), .B(start_N_652), .C(executing_i), 
         .Z(n34)) /* synthesis lut_function=(!(A (B+(C))+!A !(B))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(180[9:25])
    defparam i44_3_lut_4_lut_3_lut.init = 16'h4646;
    LUT4 i1_4_lut_adj_327 (.A(n9782), .B(n6_adj_1179), .C(fsm_state_i[1]), 
         .D(fsm_state_i[3]), .Z(valueout_passthrough_15__N_981[6])) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_327.init = 16'h0a88;
    LUT4 i2631_3_lut (.A(fsm_state_i[0]), .B(fsm_state_i[1]), .C(fsm_state_i[2]), 
         .Z(n4550)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2631_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_4_lut (.A(executed_i), .B(setbacklight_done_i), .C(executing_i), 
         .D(n9840), .Z(n8983)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A (D)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(180[9:25])
    defparam i1_4_lut_4_lut.init = 16'hd700;
    LUT4 i2_4_lut_4_lut (.A(executed_i), .B(resetroutine_done_i), .C(executing_i), 
         .D(n9841), .Z(n91)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (D))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(180[9:25])
    defparam i2_4_lut_4_lut.init = 16'h00d7;
    FD1S3BX fsm_state_i_832_i0_i4_3738_3739_set (.D(n12_adj_17[4]), .CK(tb_clk_c), 
            .PD(fsm_state_i_4__N_700), .Q(n5653)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam fsm_state_i_832_i0_i4_3738_3739_set.GSR = "DISABLED";
    FD1S3DX fsm_state_i_832_i0_i3_3734_3735_reset (.D(n12_adj_17[3]), .CK(tb_clk_c), 
            .CD(fsm_state_i_4__N_790), .Q(n5650)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam fsm_state_i_832_i0_i3_3734_3735_reset.GSR = "DISABLED";
    FD1S3BX fsm_state_i_832_i0_i3_3734_3735_set (.D(n12_adj_17[3]), .CK(tb_clk_c), 
            .PD(fsm_state_i_4__N_731), .Q(n5649)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam fsm_state_i_832_i0_i3_3734_3735_set.GSR = "DISABLED";
    FD1S3DX fsm_state_i_832_i0_i2_3730_3731_reset (.D(n12_adj_17[2]), .CK(tb_clk_c), 
            .CD(fsm_state_i_4__N_793), .Q(n5646)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam fsm_state_i_832_i0_i2_3730_3731_reset.GSR = "DISABLED";
    LUT4 n9938_bdd_3_lut_4_lut (.A(n9937), .B(fsm_state_i[3]), .C(n10290), 
         .D(n10295), .Z(valueout_passthrough_15__N_981[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n9938_bdd_3_lut_4_lut.init = 16'hf808;
    LUT4 i2284_4_lut (.A(fsm_state_i[1]), .B(n8306), .C(n18), .D(n10290), 
         .Z(n4144)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i2284_4_lut.init = 16'h3a30;
    FD1S3BX fsm_state_i_832_i0_i2_3730_3731_set (.D(n12_adj_17[2]), .CK(tb_clk_c), 
            .PD(fsm_state_i_4__N_745), .Q(n5645)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam fsm_state_i_832_i0_i2_3730_3731_set.GSR = "DISABLED";
    FD1S3DX fsm_state_i_832_i0_i1_3726_3727_reset (.D(n12_adj_17[1]), .CK(tb_clk_c), 
            .CD(fsm_state_i_4__N_796), .Q(n5642)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam fsm_state_i_832_i0_i1_3726_3727_reset.GSR = "DISABLED";
    FD1S3BX fsm_state_i_832_i0_i1_3726_3727_set (.D(n12_adj_17[1]), .CK(tb_clk_c), 
            .PD(fsm_state_i_4__N_759), .Q(n5641)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam fsm_state_i_832_i0_i1_3726_3727_set.GSR = "DISABLED";
    FD1S3DX counter_i_841_i0_i6_3722_3723_reset (.D(n16[6]), .CK(tb_clk_c), 
            .CD(counter_i_6__N_855), .Q(n5638)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam counter_i_841_i0_i6_3722_3723_reset.GSR = "DISABLED";
    FD1S3BX counter_i_841_i0_i6_3722_3723_set (.D(n16[6]), .CK(tb_clk_c), 
            .PD(counter_i_6__N_809), .Q(n5637)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam counter_i_841_i0_i6_3722_3723_set.GSR = "DISABLED";
    FD1S3DX counter_i_841_i0_i5_3718_3719_reset (.D(n16[5]), .CK(tb_clk_c), 
            .CD(counter_i_6__N_858), .Q(n5634)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam counter_i_841_i0_i5_3718_3719_reset.GSR = "DISABLED";
    FD1S3BX counter_i_841_i0_i5_3718_3719_set (.D(n16[5]), .CK(tb_clk_c), 
            .PD(counter_i_6__N_831), .Q(n5633)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam counter_i_841_i0_i5_3718_3719_set.GSR = "DISABLED";
    FD1S3DX counter_i_841_i0_i4_3714_3715_reset (.D(n16[4]), .CK(tb_clk_c), 
            .CD(counter_i_6__N_861), .Q(n5630)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam counter_i_841_i0_i4_3714_3715_reset.GSR = "DISABLED";
    FD1S3BX counter_i_841_i0_i4_3714_3715_set (.D(n16[4]), .CK(tb_clk_c), 
            .PD(counter_i_6__N_835), .Q(n5629)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam counter_i_841_i0_i4_3714_3715_set.GSR = "DISABLED";
    FD1S3DX counter_i_841_i0_i3_3710_3711_reset (.D(n16[3]), .CK(tb_clk_c), 
            .CD(counter_i_6__N_864), .Q(n5626)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam counter_i_841_i0_i3_3710_3711_reset.GSR = "DISABLED";
    FD1S3BX counter_i_841_i0_i3_3710_3711_set (.D(n16[3]), .CK(tb_clk_c), 
            .PD(counter_i_6__N_839), .Q(n5625)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam counter_i_841_i0_i3_3710_3711_set.GSR = "DISABLED";
    FD1S3DX counter_i_841_i0_i2_3706_3707_reset (.D(n16[2]), .CK(tb_clk_c), 
            .CD(counter_i_6__N_867), .Q(n5622)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam counter_i_841_i0_i2_3706_3707_reset.GSR = "DISABLED";
    FD1S3BX counter_i_841_i0_i2_3706_3707_set (.D(n16[2]), .CK(tb_clk_c), 
            .PD(counter_i_6__N_843), .Q(n5621)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam counter_i_841_i0_i2_3706_3707_set.GSR = "DISABLED";
    FD1P3AX valueout_passthrough_i_i0_i1 (.D(valueout_passthrough_15__N_981[1]), 
            .SP(tb_clk_c_enable_106), .CK(tb_clk_c), .Q(\passthrough_value_i[1] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam valueout_passthrough_i_i0_i1.GSR = "ENABLED";
    FD1P3AX valueout_passthrough_i_i0_i2 (.D(valueout_passthrough_15__N_981[2]), 
            .SP(tb_clk_c_enable_110), .CK(tb_clk_c), .Q(\passthrough_value_i[2] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam valueout_passthrough_i_i0_i2.GSR = "ENABLED";
    FD1P3AX valueout_passthrough_i_i0_i3 (.D(valueout_passthrough_15__N_981[3]), 
            .SP(tb_clk_c_enable_110), .CK(tb_clk_c), .Q(\passthrough_value_i[3] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam valueout_passthrough_i_i0_i3.GSR = "ENABLED";
    FD1P3AX valueout_passthrough_i_i0_i4 (.D(valueout_passthrough_15__N_981[4]), 
            .SP(tb_clk_c_enable_110), .CK(tb_clk_c), .Q(\passthrough_value_i[4] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam valueout_passthrough_i_i0_i4.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(n10300), .B(fsm_state_i[0]), .C(n10290), .D(n9797), 
         .Z(n8306)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(239[11:27])
    defparam i2_4_lut.init = 16'hffef;
    FD1P3AX valueout_passthrough_i_i0_i7 (.D(valueout_passthrough_15__N_981[7]), 
            .SP(tb_clk_c_enable_110), .CK(tb_clk_c), .Q(\passthrough_value_i[7] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam valueout_passthrough_i_i0_i7.GSR = "ENABLED";
    FD1S1D i3729 (.D(n10297), .CK(fsm_state_i_4__N_745), .CD(fsm_state_i_4__N_793), 
           .Q(n5644));   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam i3729.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(fsm_state_i[2]), .B(n10302), .C(fsm_state_i[4]), 
         .D(n10298), .Z(n19)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf080;
    LUT4 counter_i_6__I_0_2_lut_3_lut (.A(counter_i[6]), .B(n3357), .C(counter_i_6__N_810), 
         .Z(counter_i_6__N_809)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(642[7] 647[14])
    defparam counter_i_6__I_0_2_lut_3_lut.init = 16'h2020;
    FD1S1D i3733 (.D(n10297), .CK(fsm_state_i_4__N_731), .CD(fsm_state_i_4__N_790), 
           .Q(n5648));   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam i3733.GSR = "DISABLED";
    FD1S1D i3737 (.D(n10297), .CK(fsm_state_i_4__N_700), .CD(fsm_state_i_4__N_787), 
           .Q(n5652));   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam i3737.GSR = "DISABLED";
    LUT4 counter_i_6__N_810_I_0_935_2_lut_3_lut (.A(counter_i[6]), .B(n3357), 
         .C(counter_i_6__N_810), .Z(counter_i_6__N_855)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(642[7] 647[14])
    defparam counter_i_6__N_810_I_0_935_2_lut_3_lut.init = 16'hd0d0;
    FD1S3DX counter_i_841_i0_i1_3702_3703_reset (.D(n16[1]), .CK(tb_clk_c), 
            .CD(counter_i_6__N_870), .Q(n5618)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam counter_i_841_i0_i1_3702_3703_reset.GSR = "DISABLED";
    LUT4 counter_i_6__N_810_I_0_929_2_lut_3_lut (.A(counter_i[5]), .B(n3357), 
         .C(counter_i_6__N_810), .Z(counter_i_6__N_831)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(642[7] 647[14])
    defparam counter_i_6__N_810_I_0_929_2_lut_3_lut.init = 16'h2020;
    LUT4 i6_4_lut (.A(n9815), .B(n9418), .C(n9786), .D(n9819), .Z(n8995)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i6_4_lut.init = 16'h4000;
    LUT4 i2296_4_lut (.A(n3683[0]), .B(n7409), .C(n18), .D(n9805), .Z(n4156)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i2296_4_lut.init = 16'hca0a;
    LUT4 i7215_4_lut (.A(n2003[1]), .B(n2124[1]), .C(fsm_state_i[2]), 
         .D(fsm_state_i[1]), .Z(n2196[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i7215_4_lut.init = 16'hcac0;
    LUT4 counter_i_6__N_810_I_0_936_2_lut_3_lut (.A(counter_i[5]), .B(n3357), 
         .C(counter_i_6__N_810), .Z(counter_i_6__N_858)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(642[7] 647[14])
    defparam counter_i_6__N_810_I_0_936_2_lut_3_lut.init = 16'hd0d0;
    LUT4 counter_i_6__N_810_I_0_940_2_lut_3_lut (.A(counter_i[1]), .B(n3357), 
         .C(counter_i_6__N_810), .Z(counter_i_6__N_870)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(642[7] 647[14])
    defparam counter_i_6__N_810_I_0_940_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i7245_4_lut (.A(n9182), .B(n10290), .C(n6_adj_1184), .D(n9806), 
         .Z(tb_clk_c_enable_106)) /* synthesis lut_function=(!((B (C)+!B (C+(D)))+!A)) */ ;
    defparam i7245_4_lut.init = 16'h080a;
    LUT4 i1_4_lut_adj_328 (.A(n9866), .B(n9815), .C(start_i), .D(n9056), 
         .Z(n6_adj_1184)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;
    defparam i1_4_lut_adj_328.init = 16'haaba;
    LUT4 counter_i_6__N_810_I_0_930_2_lut_3_lut (.A(counter_i[4]), .B(n3357), 
         .C(counter_i_6__N_810), .Z(counter_i_6__N_835)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(642[7] 647[14])
    defparam counter_i_6__N_810_I_0_930_2_lut_3_lut.init = 16'h2020;
    LUT4 counter_i_6__N_810_I_0_937_2_lut_3_lut (.A(counter_i[4]), .B(n3357), 
         .C(counter_i_6__N_810), .Z(counter_i_6__N_861)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(642[7] 647[14])
    defparam counter_i_6__N_810_I_0_937_2_lut_3_lut.init = 16'hd0d0;
    LUT4 done_N_1107_I_0_2_lut_3_lut_4_lut_4_lut (.A(fsm_state_i[4]), .B(n9803), 
         .C(main_reset_i), .D(fsm_state_i[3]), .Z(start_i_N_1108)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;
    defparam done_N_1107_I_0_2_lut_3_lut_4_lut_4_lut.init = 16'hf0f8;
    LUT4 i1_4_lut_4_lut_adj_329 (.A(fsm_state_i[4]), .B(n70), .C(n8956), 
         .D(n9787), .Z(tb_clk_c_enable_42)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam i1_4_lut_4_lut_adj_329.init = 16'h00f4;
    LUT4 i1_2_lut_rep_163_3_lut_4_lut_4_lut (.A(fsm_state_i[4]), .B(n10298), 
         .C(n9845), .D(n10306), .Z(n9781)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_rep_163_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i3330_3_lut_4_lut (.A(fsm_state_i[2]), .B(n9797), .C(fsm_state_i[0]), 
         .D(n18), .Z(n5243)) /* synthesis lut_function=(!(A (D)+!A (B (C (D))+!B (D)))) */ ;
    defparam i3330_3_lut_4_lut.init = 16'h04ff;
    LUT4 mux_959_i2_3_lut_3_lut_4_lut (.A(start_N_652), .B(executed_i), 
         .C(fsm_state_i[0]), .D(\passthrough_value_i[1] ), .Z(n2003[1])) /* synthesis lut_function=(A (B (C (D))+!B !(C))+!A (C (D))) */ ;
    defparam mux_959_i2_3_lut_3_lut_4_lut.init = 16'hd202;
    LUT4 i1_2_lut_4_lut (.A(fsm_state_i[2]), .B(n9797), .C(fsm_state_i[0]), 
         .D(n18), .Z(n6_adj_1179)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C (D))+!B (D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h7300;
    LUT4 i1_2_lut_rep_164_3_lut_4_lut (.A(n10306), .B(executed_i), .C(fsm_state_i[0]), 
         .D(n10300), .Z(n9782)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_rep_164_3_lut_4_lut.init = 16'h0002;
    LUT4 i1_4_lut_4_lut_adj_330 (.A(n10306), .B(executed_i), .C(n119), 
         .D(n10298), .Z(n78)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_4_lut_adj_330.init = 16'heee2;
    LUT4 i1462_2_lut_rep_181_3_lut (.A(start_N_652), .B(executed_i), .C(fsm_state_i[0]), 
         .Z(n9799)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1462_2_lut_rep_181_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_3_lut (.A(n10306), .B(executed_i), .C(fsm_state_i[3]), 
         .Z(n8987)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i1_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i5222_2_lut_3_lut (.A(n10306), .B(executed_i), .C(n10302), .Z(n3683[0])) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i5222_2_lut_3_lut.init = 16'h0202;
    PFUMX i2297 (.BLUT(n4156), .ALUT(n2196[1]), .C0(fsm_state_i[3]), .Z(valueout_passthrough_15__N_981[1]));
    LUT4 i7303_2_lut (.A(n9243), .B(tb_clk_c_enable_106), .Z(tb_clk_c_enable_19)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7303_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_331 (.A(start_N_652), .B(executed_i), .C(n8411), 
         .Z(valueout_passthrough_15__N_981[3])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_331.init = 16'h2020;
    LUT4 i7319_2_lut_2_lut_3_lut_4_lut_4_lut (.A(fsm_state_i[4]), .B(n9803), 
         .C(n9787), .D(fsm_state_i[3]), .Z(tb_clk_c_enable_35)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i7319_2_lut_2_lut_3_lut_4_lut_4_lut.init = 16'h0008;
    LUT4 i2_4_lut_adj_332 (.A(n18), .B(n9799), .C(fsm_state_i[2]), .D(n9778), 
         .Z(n8409)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;
    defparam i2_4_lut_adj_332.init = 16'h8008;
    LUT4 i1_2_lut_rep_187_3_lut (.A(start_N_652), .B(executed_i), .C(n10300), 
         .Z(n9805)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_rep_187_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_rep_210 (.A(fsm_state_i[4]), .B(n10298), .Z(n9828)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam i1_2_lut_rep_210.init = 16'h2222;
    LUT4 i5453_4_lut (.A(n10290), .B(fsm_state_i[3]), .C(n18), .D(n12_adj_1185), 
         .Z(valueout_passthrough_15__N_981[5])) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;
    defparam i5453_4_lut.init = 16'h2202;
    LUT4 i1_2_lut_rep_179_3_lut (.A(fsm_state_i[4]), .B(n10298), .C(fsm_state_i[1]), 
         .Z(n9797)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam i1_2_lut_rep_179_3_lut.init = 16'h0202;
    LUT4 n997_bdd_3_lut_7457 (.A(fsm_state_i[3]), .B(fsm_state_i[2]), .C(fsm_state_i[4]), 
         .Z(n9681)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam n997_bdd_3_lut_7457.init = 16'h8c8c;
    LUT4 i1_2_lut_3_lut_4_lut_adj_333 (.A(fsm_state_i[4]), .B(fsm_state_i[3]), 
         .C(fsm_state_i[0]), .D(n9849), .Z(n8997)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam i1_2_lut_3_lut_4_lut_adj_333.init = 16'h0020;
    FD1S3BX counter_i_841_i0_i1_3702_3703_set (.D(n16[1]), .CK(tb_clk_c), 
            .PD(counter_i_6__N_847), .Q(n5617)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam counter_i_841_i0_i1_3702_3703_set.GSR = "DISABLED";
    LUT4 n997_bdd_4_lut_7449 (.A(n9810), .B(n9846), .C(fsm_state_i[2]), 
         .D(n9), .Z(n9679)) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;
    defparam n997_bdd_4_lut_7449.init = 16'hf888;
    LUT4 fsm_state_i_4__N_716_bdd_4_lut (.A(n9787), .B(n10304), .C(n10302), 
         .D(n10300), .Z(n9418)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam fsm_state_i_4__N_716_bdd_4_lut.init = 16'h4000;
    PFUMX i7453 (.BLUT(n9683), .ALUT(n9679), .C0(n2496), .Z(n9684));
    LUT4 n997_bdd_4_lut_7456 (.A(fsm_state_i[3]), .B(fsm_state_i[2]), .C(fsm_state_i[4]), 
         .D(fsm_state_i[1]), .Z(n9680)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C (D))+!B !(C))) */ ;
    defparam n997_bdd_4_lut_7456.init = 16'h96d6;
    PFUMX i7451 (.BLUT(n9681), .ALUT(n9680), .C0(n9810), .Z(n9682));
    LUT4 i2_2_lut_rep_215 (.A(n10300), .B(fsm_state_i[1]), .Z(n9833)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut_rep_215.init = 16'h2222;
    LUT4 i3_2_lut_rep_183_3_lut_4_lut (.A(fsm_state_i[2]), .B(fsm_state_i[1]), 
         .C(fsm_state_i[3]), .D(fsm_state_i[4]), .Z(n9801)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_2_lut_rep_183_3_lut_4_lut.init = 16'h0002;
    LUT4 fsm_state_i_4__bdd_4_lut_7484 (.A(fsm_state_i[4]), .B(fsm_state_i[2]), 
         .C(n10304), .D(n10302), .Z(n18)) /* synthesis lut_function=(!(A (B (D)+!B !((D)+!C))+!A ((C)+!B))) */ ;
    defparam fsm_state_i_4__bdd_4_lut_7484.init = 16'h268e;
    LUT4 counter_i_6__N_810_I_0_931_2_lut_3_lut (.A(counter_i[3]), .B(n3357), 
         .C(counter_i_6__N_810), .Z(counter_i_6__N_839)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(642[7] 647[14])
    defparam counter_i_6__N_810_I_0_931_2_lut_3_lut.init = 16'h2020;
    LUT4 counter_i_6__N_810_I_0_938_2_lut_3_lut (.A(counter_i[3]), .B(n3357), 
         .C(counter_i_6__N_810), .Z(counter_i_6__N_864)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(642[7] 647[14])
    defparam counter_i_6__N_810_I_0_938_2_lut_3_lut.init = 16'hd0d0;
    PFUMX i119 (.BLUT(n8983), .ALUT(n91), .C0(n10302), .Z(n93));
    FD1S3AX fsm_state_i_i0_rep_246 (.D(fsm_state_i_4__N_683[0]), .CK(tb_clk_c), 
            .Q(n10304)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam fsm_state_i_i0_rep_246.GSR = "ENABLED";
    LUT4 i5201_2_lut_rep_222 (.A(fsm_state_i[2]), .B(fsm_state_i[0]), .Z(n9840)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5201_2_lut_rep_222.init = 16'h8888;
    LUT4 i19_3_lut_4_lut_3_lut (.A(fsm_state_i[2]), .B(fsm_state_i[0]), 
         .C(n9797), .Z(n12_adj_1185)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;
    defparam i19_3_lut_4_lut_3_lut.init = 16'hc5c5;
    LUT4 i2285_3_lut_4_lut (.A(fsm_state_i[0]), .B(n9805), .C(fsm_state_i[3]), 
         .D(n4144), .Z(valueout_passthrough_15__N_981[7])) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[4] 655[11])
    defparam i2285_3_lut_4_lut.init = 16'h4f40;
    LUT4 i1_4_lut_rep_147 (.A(n9787), .B(fsm_state_i[3]), .C(n9893), .D(n9043), 
         .Z(n9765)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C)))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[4] 655[11])
    defparam i1_4_lut_rep_147.init = 16'h5054;
    LUT4 i5199_2_lut_rep_223 (.A(fsm_state_i[2]), .B(fsm_state_i[0]), .Z(n9841)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5199_2_lut_rep_223.init = 16'heeee;
    LUT4 i7090_2_lut_3_lut (.A(n10300), .B(fsm_state_i[0]), .C(n10302), 
         .Z(n9056)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i7090_2_lut_3_lut.init = 16'hfefe;
    LUT4 i15_4_lut_4_lut (.A(fsm_state_i[2]), .B(fsm_state_i[0]), .C(fsm_state_i[1]), 
         .D(start_i), .Z(n9_adj_1176)) /* synthesis lut_function=(A (C)+!A !(B+(C+(D)))) */ ;
    defparam i15_4_lut_4_lut.init = 16'ha0a1;
    LUT4 i117_3_lut_4_lut_3_lut (.A(fsm_state_i[2]), .B(n10304), .C(fsm_state_i[1]), 
         .Z(n119)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;
    defparam i117_3_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 i2_4_lut_adj_334 (.A(n9844), .B(n9815), .C(n9849), .D(fsm_state_i[0]), 
         .Z(n2496)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C+!(D))))) */ ;
    defparam i2_4_lut_adj_334.init = 16'h0322;
    LUT4 i2_2_lut_4_lut (.A(n9787), .B(n6), .C(n9819), .D(n9784), .Z(n6_adj_1175)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[4] 655[11])
    defparam i2_2_lut_4_lut.init = 16'h5400;
    LUT4 i5242_2_lut_rep_226 (.A(n10300), .B(fsm_state_i[1]), .Z(n9844)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5242_2_lut_rep_226.init = 16'heeee;
    L6MUX21 i7352 (.D0(n9449), .D1(n9446), .SD(n2496), .Z(fsm_state_i_4__N_761));
    LUT4 i1_2_lut_rep_227 (.A(executing_i), .B(executed_i), .Z(n9845)) /* synthesis lut_function=(A (B)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(180[6] 200[13])
    defparam i1_2_lut_rep_227.init = 16'h8888;
    LUT4 i1_2_lut_rep_184_3_lut (.A(executing_i), .B(executed_i), .C(setbacklight_done_i), 
         .Z(n9802)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(180[6] 200[13])
    defparam i1_2_lut_rep_184_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_192_3_lut (.A(executing_i), .B(executed_i), .C(n10306), 
         .Z(n9810)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(180[6] 200[13])
    defparam i1_2_lut_rep_192_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_228 (.A(n10304), .B(fsm_state_i[1]), .Z(n9846)) /* synthesis lut_function=(A (B)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[4] 655[11])
    defparam i1_2_lut_rep_228.init = 16'h8888;
    LUT4 fsm_state_i_2__bdd_3_lut_4_lut (.A(fsm_state_i[0]), .B(fsm_state_i[1]), 
         .C(n9682), .D(fsm_state_i[2]), .Z(n9683)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[4] 655[11])
    defparam fsm_state_i_2__bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 fsm_state_i_2__bdd_4_lut_4_lut (.A(fsm_state_i[0]), .B(n10302), 
         .C(n9810), .D(n10300), .Z(n9686)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B ((D)+!C)+!B !(C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[4] 655[11])
    defparam fsm_state_i_2__bdd_4_lut_4_lut.init = 16'hb8f0;
    LUT4 i1_2_lut_3_lut_2_lut (.A(n10304), .B(n10302), .Z(n9039)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[4] 655[11])
    defparam i1_2_lut_3_lut_2_lut.init = 16'h6666;
    LUT4 i3696_3_lut (.A(n5610), .B(n5609), .C(n5608), .Z(counter_i_6__N_688[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam i3696_3_lut.init = 16'hcaca;
    PFUMX i7350 (.BLUT(n9448), .ALUT(n9447), .C0(n4053), .Z(n9449));
    LUT4 i7304_4_lut_4_lut (.A(fsm_state_i[0]), .B(fsm_state_i[1]), .C(fsm_state_i[2]), 
         .D(n8987), .Z(n9243)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(C (D))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[4] 655[11])
    defparam i7304_4_lut_4_lut.init = 16'ha7ff;
    LUT4 fsm_state_i_4__N_701_I_0_924_2_lut (.A(n8995), .B(fsm_state_i_4__N_774), 
         .Z(fsm_state_i_4__N_773)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam fsm_state_i_4__N_701_I_0_924_2_lut.init = 16'h4444;
    PFUMX i7709 (.BLUT(n10293), .ALUT(n10294), .C0(fsm_state_i[0]), .Z(n10295));
    LUT4 i823_2_lut_rep_185_3_lut (.A(fsm_state_i[0]), .B(n10302), .C(n10300), 
         .Z(n9803)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[4] 655[11])
    defparam i823_2_lut_rep_185_3_lut.init = 16'h8080;
    FD1S3AX fsm_state_i_i3_rep_240 (.D(fsm_state_i_4__N_683[3]), .CK(tb_clk_c), 
            .Q(n10298)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam fsm_state_i_i3_rep_240.GSR = "ENABLED";
    FD1S3AX fsm_state_i_i1_rep_244 (.D(fsm_state_i_4__N_683[1]), .CK(tb_clk_c), 
            .Q(n10302)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam fsm_state_i_i1_rep_244.GSR = "ENABLED";
    LUT4 i2198_4_lut (.A(fsm_state_i[0]), .B(n4053), .C(n1521), .D(n1469), 
         .Z(fsm_state_i_4__N_725[0])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B+(C)))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[4] 655[11])
    defparam i2198_4_lut.init = 16'h7476;
    LUT4 i1_2_lut_3_lut_4_lut_adj_335 (.A(n10306), .B(n9845), .C(n9828), 
         .D(n9833), .Z(n1521)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(147[5] 174[12])
    defparam i1_2_lut_3_lut_4_lut_adj_335.init = 16'h8000;
    LUT4 counter_i_6__N_810_I_0_2_lut_3_lut (.A(counter_i[0]), .B(n3357), 
         .C(counter_i_6__N_810), .Z(counter_i_6__N_873)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(642[7] 647[14])
    defparam counter_i_6__N_810_I_0_2_lut_3_lut.init = 16'hd0d0;
    LUT4 counter_i_6__N_810_I_0_934_2_lut_3_lut (.A(counter_i[0]), .B(n3357), 
         .C(counter_i_6__N_810), .Z(counter_i_6__N_851)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(642[7] 647[14])
    defparam counter_i_6__N_810_I_0_934_2_lut_3_lut.init = 16'h2020;
    LUT4 mux_984_i2_4_lut_4_lut_4_lut (.A(fsm_state_i[0]), .B(fsm_state_i[1]), 
         .C(\passthrough_value_i[1] ), .D(n10290), .Z(n2124[1])) /* synthesis lut_function=(!(A (B+!(D))+!A ((D)+!C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[4] 655[11])
    defparam mux_984_i2_4_lut_4_lut_4_lut.init = 16'h2250;
    LUT4 i5279_2_lut_4_lut (.A(n9819), .B(start_i), .C(n9818), .D(fsm_state_i_4__N_775), 
         .Z(fsm_state_i_4__N_774)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;
    defparam i5279_2_lut_4_lut.init = 16'hff04;
    LUT4 i2_4_lut_adj_336 (.A(n9783), .B(n7346), .C(n9808), .D(executed_i), 
         .Z(tb_clk_c_enable_38)) /* synthesis lut_function=(!((B (C+(D))+!B (C))+!A)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[4] 655[11])
    defparam i2_4_lut_adj_336.init = 16'h020a;
    LUT4 i5440_2_lut (.A(resetroutine_done_i), .B(executing_i), .Z(n7346)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5440_2_lut.init = 16'heeee;
    LUT4 fsm_state_i_4__N_701_I_0_923_2_lut (.A(n8995), .B(fsm_state_i_4__N_760), 
         .Z(fsm_state_i_4__N_759)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam fsm_state_i_4__N_701_I_0_923_2_lut.init = 16'h4444;
    LUT4 i2_3_lut_rep_160_4_lut (.A(n9828), .B(n10302), .C(n10304), .D(fsm_state_i[2]), 
         .Z(n9778)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;
    defparam i2_3_lut_rep_160_4_lut.init = 16'h2202;
    LUT4 n9684_bdd_2_lut_4_lut (.A(n9819), .B(start_i), .C(n9818), .D(n9684), 
         .Z(fsm_state_i_4__N_746)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;
    defparam n9684_bdd_2_lut_4_lut.init = 16'hfb00;
    LUT4 i1_4_lut_adj_337 (.A(n2), .B(n61), .C(n9793), .D(n10290), .Z(n8956)) /* synthesis lut_function=(!(A+(B (C)+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_337.init = 16'h0504;
    LUT4 i1_4_lut_adj_338 (.A(n2), .B(fsm_state_i[3]), .C(n78), .D(n93), 
         .Z(n70)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;
    defparam i1_4_lut_adj_338.init = 16'h7350;
    LUT4 i1_2_lut (.A(fsm_state_i[4]), .B(executed_i), .Z(n61)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_4_lut_adj_339 (.A(fsm_state_i[0]), .B(n10290), .C(fsm_state_i[1]), 
         .D(fsm_state_i[2]), .Z(n8410)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((D)+!C))) */ ;
    defparam i1_4_lut_4_lut_adj_339.init = 16'h0058;
    LUT4 i5501_2_lut_4_lut_4_lut (.A(fsm_state_i[0]), .B(n10290), .C(n9797), 
         .D(fsm_state_i[2]), .Z(n7409)) /* synthesis lut_function=(A (B+(C (D)))+!A (C)) */ ;
    defparam i5501_2_lut_4_lut_4_lut.init = 16'hf8d8;
    LUT4 i1_4_lut_adj_340 (.A(n9787), .B(n19), .C(n9881), .D(n34), .Z(tb_clk_c_enable_43)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_340.init = 16'h1000;
    LUT4 n997_bdd_3_lut_7450_4_lut (.A(n9815), .B(n9833), .C(fsm_state_i[0]), 
         .D(n9810), .Z(n9444)) /* synthesis lut_function=(!(A (C (D))+!A !(B (C+!(D))+!B !(C (D))))) */ ;
    defparam n997_bdd_3_lut_7450_4_lut.init = 16'h4bff;
    LUT4 i7220_3_lut_4_lut (.A(n9815), .B(n9833), .C(n9151), .D(n9150), 
         .Z(n9152)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i7220_3_lut_4_lut.init = 16'hfb40;
    LUT4 i825_2_lut_3_lut_4_lut (.A(fsm_state_i[2]), .B(n9846), .C(fsm_state_i[4]), 
         .D(fsm_state_i[3]), .Z(n1469)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam i825_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 fsm_state_i_4__I_0_948_i6_2_lut (.A(fsm_state_i[0]), .B(fsm_state_i[1]), 
         .Z(n6)) /* synthesis lut_function=((B)+!A) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(620[11:28])
    defparam fsm_state_i_4__I_0_948_i6_2_lut.init = 16'hdddd;
    PFUMX i7348 (.BLUT(n9445), .ALUT(n9444), .C0(fsm_state_i[1]), .Z(n9446));
    LUT4 i5278_2_lut_4_lut (.A(n9819), .B(start_i), .C(n9818), .D(fsm_state_i_4__N_761), 
         .Z(fsm_state_i_4__N_760)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;
    defparam i5278_2_lut_4_lut.init = 16'hfb00;
    LUT4 i1_2_lut_rep_188 (.A(fsm_state_i[3]), .B(n18), .Z(n9806)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_188.init = 16'h4444;
    LUT4 i7243_4_lut_4_lut (.A(n10298), .B(n18), .C(n10290), .D(n9900), 
         .Z(n9182)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam i7243_4_lut_4_lut.init = 16'h00fe;
    LUT4 i1_2_lut_rep_159_4_lut (.A(n9819), .B(start_i), .C(n9818), .D(executed_i), 
         .Z(n9777)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;
    defparam i1_2_lut_rep_159_4_lut.init = 16'hff04;
    PFUMX i7515 (.BLUT(n9898), .ALUT(n9899), .C0(fsm_state_i[2]), .Z(n9900));
    LUT4 i7247_2_lut_2_lut_3_lut_4_lut (.A(n9846), .B(n9819), .C(n9771), 
         .D(n9809), .Z(commanddata_passthrough_N_1053)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(117[11:27])
    defparam i7247_2_lut_2_lut_3_lut_4_lut.init = 16'h0d00;
    PFUMX i7513 (.BLUT(n9895), .ALUT(n9896), .C0(fsm_state_i[1]), .Z(n9897));
    LUT4 i5275_4_lut_rep_148 (.A(n9897), .B(n9787), .C(n9791), .D(n9781), 
         .Z(n9766)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(85[4] 655[11])
    defparam i5275_4_lut_rep_148.init = 16'h3022;
    PFUMX i7511 (.BLUT(n9891), .ALUT(n9892), .C0(n10304), .Z(n9893));
    LUT4 counter_i_6__N_810_I_0_939_2_lut_3_lut (.A(counter_i[2]), .B(n3357), 
         .C(counter_i_6__N_810), .Z(counter_i_6__N_867)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(642[7] 647[14])
    defparam counter_i_6__N_810_I_0_939_2_lut_3_lut.init = 16'hd0d0;
    PFUMX i7507 (.BLUT(n9885), .ALUT(n9886), .C0(fsm_state_i[2]), .Z(tb_clk_c_enable_110));
    LUT4 i2457_3_lut_4_lut (.A(n9819), .B(n9816), .C(setbacklight_done_i), 
         .D(resetroutine_done_i), .Z(n4440)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(201[11:27])
    defparam i2457_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i3700_3_lut (.A(n5614), .B(n5613), .C(n5612), .Z(fsm_state_i_4__N_683[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam i3700_3_lut.init = 16'hcaca;
    LUT4 i7266_2_lut_2_lut (.A(fsm_state_i_4__N_746), .B(n8995), .Z(fsm_state_i_4__N_793)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i7266_2_lut_2_lut.init = 16'h1111;
    PFUMX i7503 (.BLUT(n9879), .ALUT(n9880), .C0(fsm_state_i[4]), .Z(n9881));
    FD1S3AX fsm_state_i_i2_rep_242 (.D(fsm_state_i_4__N_683[2]), .CK(tb_clk_c), 
            .Q(n10300)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=441, LSE_RLINE=441 */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(60[3] 658[10])
    defparam fsm_state_i_i2_rep_242.GSR = "ENABLED";
    LUT4 i1_4_lut_3_lut_then_4_lut (.A(fsm_state_i[3]), .B(n10290), .C(fsm_state_i[1]), 
         .D(fsm_state_i[2]), .Z(n9865)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;
    defparam i1_4_lut_3_lut_then_4_lut.init = 16'h2202;
    LUT4 i3728_3_lut (.A(n5642), .B(n5641), .C(n5640), .Z(fsm_state_i_4__N_683[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam i3728_3_lut.init = 16'hcaca;
    LUT4 i3732_3_lut (.A(n5646), .B(n5645), .C(n5644), .Z(fsm_state_i_4__N_683[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam i3732_3_lut.init = 16'hcaca;
    PFUMX i7495 (.BLUT(n9867), .ALUT(n9868), .C0(fsm_state_i[1]), .Z(n2));
    PFUMX i7493 (.BLUT(n9864), .ALUT(n9865), .C0(n10304), .Z(n9866));
    LUT4 i3736_3_lut (.A(n5650), .B(n5649), .C(n5648), .Z(fsm_state_i_4__N_683[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam i3736_3_lut.init = 16'hcaca;
    LUT4 i3740_3_lut (.A(n5654), .B(n5653), .C(n5652), .Z(fsm_state_i_4__N_683[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/fsm_init.vhd(232[5] 238[12])
    defparam i3740_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module fillcolor
//

module fillcolor (GND_net, \fillcolor_value_i[5] , tb_clk_c, start_N_652, 
            n10306, fillcolor_commanddata_i, fillcolor_start_i);
    input GND_net;
    output \fillcolor_value_i[5] ;
    input tb_clk_c;
    input start_N_652;
    input n10306;
    output fillcolor_commanddata_i;
    output fillcolor_start_i;
    
    wire tb_clk_c /* synthesis SET_AS_NETWORK=tb_clk_c, is_clock=1 */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(63[4:10])
    
    wire n8162;
    wire [17:0]counter_i;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(33[9:18])
    wire [17:0]n77;
    
    wire n8163, tb_clk_c_enable_11, n4800, executed_i, tb_clk_c_enable_14, 
        executed_i_N_619, n9519, n9518;
    wire [2:0]fsm_state_i;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(25[9:20])
    
    wire tb_clk_c_enable_26, tb_clk_c_enable_91, n8993, n9517, tb_clk_c_enable_98, 
        n5693, n9515, executing_i, n9874, n9873, n8161, tb_clk_c_enable_84, 
        tb_clk_c_enable_49, executing_i_N_631, n10291, n8160, n8159, 
        n8158, n9821, commanddata_N_612, n8992, tb_clk_c_enable_97, 
        start_N_648, n9859, n9858, n8165, n8164, n9834, n8975, 
        n16, n21, n34, n30, n22, n35, n28, n31;
    
    CCU2D counter_i_1684_add_4_12 (.A0(counter_i[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter_i[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8162), .COUT(n8163), .S0(n77[10]), .S1(n77[11]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684_add_4_12.INIT0 = 16'hfaaa;
    defparam counter_i_1684_add_4_12.INIT1 = 16'hfaaa;
    defparam counter_i_1684_add_4_12.INJECT1_0 = "NO";
    defparam counter_i_1684_add_4_12.INJECT1_1 = "NO";
    FD1P3AX valueout__i1 (.D(n4800), .SP(tb_clk_c_enable_11), .CK(tb_clk_c), 
            .Q(\fillcolor_value_i[5] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=425, LSE_RLINE=425 */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(44[3] 130[10])
    defparam valueout__i1.GSR = "DISABLED";
    FD1P3AX executed_i_127 (.D(executed_i_N_619), .SP(tb_clk_c_enable_14), 
            .CK(tb_clk_c), .Q(executed_i)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=425, LSE_RLINE=425 */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(44[3] 130[10])
    defparam executed_i_127.GSR = "ENABLED";
    PFUMX i7373 (.BLUT(n9519), .ALUT(n9518), .C0(fsm_state_i[2]), .Z(tb_clk_c_enable_26));
    FD1P3AX fsm_state_i__i2 (.D(n8993), .SP(tb_clk_c_enable_91), .CK(tb_clk_c), 
            .Q(fsm_state_i[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=425, LSE_RLINE=425 */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(44[3] 130[10])
    defparam fsm_state_i__i2.GSR = "ENABLED";
    FD1P3AX fsm_state_i__i1 (.D(n9517), .SP(tb_clk_c_enable_26), .CK(tb_clk_c), 
            .Q(fsm_state_i[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=425, LSE_RLINE=425 */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(44[3] 130[10])
    defparam fsm_state_i__i1.GSR = "ENABLED";
    FD1P3IX counter_i_1684__i17 (.D(n77[17]), .SP(tb_clk_c_enable_98), .CD(n5693), 
            .CK(tb_clk_c), .Q(counter_i[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684__i17.GSR = "ENABLED";
    LUT4 n9516_bdd_2_lut_4_lut (.A(fsm_state_i[0]), .B(n9515), .C(fsm_state_i[1]), 
         .D(fsm_state_i[2]), .Z(n9517)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n9516_bdd_2_lut_4_lut.init = 16'h00ca;
    FD1P3IX counter_i_1684__i16 (.D(n77[16]), .SP(tb_clk_c_enable_98), .CD(n5693), 
            .CK(tb_clk_c), .Q(counter_i[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684__i16.GSR = "ENABLED";
    LUT4 i7321_4_lut_then_4_lut (.A(executing_i), .B(fsm_state_i[2]), .C(fsm_state_i[1]), 
         .D(fsm_state_i[0]), .Z(n9874)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A ((C+(D))+!B))) */ ;
    defparam i7321_4_lut_then_4_lut.init = 16'h202c;
    LUT4 i7321_4_lut_else_4_lut (.A(fsm_state_i[2]), .B(fsm_state_i[1]), 
         .C(fsm_state_i[0]), .Z(n9873)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i7321_4_lut_else_4_lut.init = 16'h0202;
    FD1P3IX counter_i_1684__i15 (.D(n77[15]), .SP(tb_clk_c_enable_98), .CD(n5693), 
            .CK(tb_clk_c), .Q(counter_i[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684__i15.GSR = "ENABLED";
    FD1P3IX counter_i_1684__i14 (.D(n77[14]), .SP(tb_clk_c_enable_98), .CD(n5693), 
            .CK(tb_clk_c), .Q(counter_i[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684__i14.GSR = "ENABLED";
    FD1P3IX counter_i_1684__i13 (.D(n77[13]), .SP(tb_clk_c_enable_98), .CD(n5693), 
            .CK(tb_clk_c), .Q(counter_i[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684__i13.GSR = "ENABLED";
    FD1P3IX counter_i_1684__i12 (.D(n77[12]), .SP(tb_clk_c_enable_98), .CD(n5693), 
            .CK(tb_clk_c), .Q(counter_i[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684__i12.GSR = "ENABLED";
    FD1P3IX counter_i_1684__i11 (.D(n77[11]), .SP(tb_clk_c_enable_98), .CD(n5693), 
            .CK(tb_clk_c), .Q(counter_i[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684__i11.GSR = "ENABLED";
    CCU2D counter_i_1684_add_4_10 (.A0(counter_i[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter_i[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8161), .COUT(n8162), .S0(n77[8]), .S1(n77[9]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684_add_4_10.INIT0 = 16'hfaaa;
    defparam counter_i_1684_add_4_10.INIT1 = 16'hfaaa;
    defparam counter_i_1684_add_4_10.INJECT1_0 = "NO";
    defparam counter_i_1684_add_4_10.INJECT1_1 = "NO";
    LUT4 executed_i_bdd_4_lut_7653 (.A(executed_i), .B(start_N_652), .C(fsm_state_i[2]), 
         .D(fsm_state_i[1]), .Z(tb_clk_c_enable_84)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam executed_i_bdd_4_lut_7653.init = 16'h0400;
    FD1P3IX counter_i_1684__i10 (.D(n77[10]), .SP(tb_clk_c_enable_98), .CD(n5693), 
            .CK(tb_clk_c), .Q(counter_i[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684__i10.GSR = "ENABLED";
    FD1P3IX counter_i_1684__i9 (.D(n77[9]), .SP(tb_clk_c_enable_98), .CD(n5693), 
            .CK(tb_clk_c), .Q(counter_i[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684__i9.GSR = "ENABLED";
    FD1P3IX counter_i_1684__i8 (.D(n77[8]), .SP(tb_clk_c_enable_98), .CD(n5693), 
            .CK(tb_clk_c), .Q(counter_i[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684__i8.GSR = "ENABLED";
    FD1P3IX counter_i_1684__i7 (.D(n77[7]), .SP(tb_clk_c_enable_98), .CD(n5693), 
            .CK(tb_clk_c), .Q(counter_i[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684__i7.GSR = "ENABLED";
    FD1P3AX executing_i_130 (.D(executing_i_N_631), .SP(tb_clk_c_enable_49), 
            .CK(tb_clk_c), .Q(executing_i));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(44[3] 130[10])
    defparam executing_i_130.GSR = "ENABLED";
    FD1P3IX counter_i_1684__i6 (.D(n77[6]), .SP(tb_clk_c_enable_98), .CD(n5693), 
            .CK(tb_clk_c), .Q(counter_i[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684__i6.GSR = "ENABLED";
    FD1P3IX counter_i_1684__i5 (.D(n77[5]), .SP(tb_clk_c_enable_98), .CD(n5693), 
            .CK(tb_clk_c), .Q(counter_i[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684__i5.GSR = "ENABLED";
    LUT4 i6251_2_lut (.A(start_N_652), .B(counter_i[0]), .Z(n77[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i6251_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_rep_238 (.A(n10306), .B(executed_i), .Z(n10291)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(89[5] 121[12])
    defparam i1_2_lut_rep_238.init = 16'h2222;
    CCU2D counter_i_1684_add_4_8 (.A0(counter_i[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter_i[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8160), .COUT(n8161), .S0(n77[6]), .S1(n77[7]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684_add_4_8.INIT0 = 16'hfaaa;
    defparam counter_i_1684_add_4_8.INIT1 = 16'hfaaa;
    defparam counter_i_1684_add_4_8.INJECT1_0 = "NO";
    defparam counter_i_1684_add_4_8.INJECT1_1 = "NO";
    FD1P3IX counter_i_1684__i4 (.D(n77[4]), .SP(tb_clk_c_enable_98), .CD(n5693), 
            .CK(tb_clk_c), .Q(counter_i[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684__i4.GSR = "ENABLED";
    CCU2D counter_i_1684_add_4_6 (.A0(counter_i[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter_i[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8159), .COUT(n8160), .S0(n77[4]), .S1(n77[5]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684_add_4_6.INIT0 = 16'hfaaa;
    defparam counter_i_1684_add_4_6.INIT1 = 16'hfaaa;
    defparam counter_i_1684_add_4_6.INJECT1_0 = "NO";
    defparam counter_i_1684_add_4_6.INJECT1_1 = "NO";
    LUT4 n9823_bdd_3_lut_4_lut (.A(start_N_652), .B(executed_i), .C(fsm_state_i[2]), 
         .D(fsm_state_i[1]), .Z(tb_clk_c_enable_11)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(89[5] 121[12])
    defparam n9823_bdd_3_lut_4_lut.init = 16'h0200;
    CCU2D counter_i_1684_add_4_4 (.A0(counter_i[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter_i[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8158), .COUT(n8159), .S0(n77[2]), .S1(n77[3]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684_add_4_4.INIT0 = 16'hfaaa;
    defparam counter_i_1684_add_4_4.INIT1 = 16'hfaaa;
    defparam counter_i_1684_add_4_4.INJECT1_0 = "NO";
    defparam counter_i_1684_add_4_4.INJECT1_1 = "NO";
    FD1P3IX counter_i_1684__i3 (.D(n77[3]), .SP(tb_clk_c_enable_98), .CD(n5693), 
            .CK(tb_clk_c), .Q(counter_i[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684__i3.GSR = "ENABLED";
    LUT4 executed_i_bdd_4_lut (.A(executed_i), .B(start_N_652), .C(fsm_state_i[1]), 
         .D(fsm_state_i[2]), .Z(tb_clk_c_enable_49)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam executed_i_bdd_4_lut.init = 16'h00e0;
    LUT4 i3640_2_lut_3_lut_4_lut (.A(fsm_state_i[1]), .B(fsm_state_i[2]), 
         .C(executed_i), .D(fsm_state_i[0]), .Z(executed_i_N_619)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+(D))))) */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(53[11:32])
    defparam i3640_2_lut_3_lut_4_lut.init = 16'h0e0f;
    LUT4 i1_2_lut_rep_203 (.A(fsm_state_i[1]), .B(fsm_state_i[2]), .Z(n9821)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(44[3] 130[10])
    defparam i1_2_lut_rep_203.init = 16'h2222;
    FD1P3IX counter_i_1684__i2 (.D(n77[2]), .SP(tb_clk_c_enable_98), .CD(n5693), 
            .CK(tb_clk_c), .Q(counter_i[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684__i2.GSR = "ENABLED";
    FD1P3IX counter_i_1684__i1 (.D(n77[1]), .SP(tb_clk_c_enable_98), .CD(n5693), 
            .CK(tb_clk_c), .Q(counter_i[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684__i1.GSR = "ENABLED";
    LUT4 i3455_4_lut_3_lut_4_lut (.A(fsm_state_i[1]), .B(fsm_state_i[2]), 
         .C(n10291), .D(fsm_state_i[0]), .Z(commanddata_N_612)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(44[3] 130[10])
    defparam i3455_4_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_4_lut (.A(fsm_state_i[2]), .B(fsm_state_i[1]), .C(fsm_state_i[0]), 
         .D(n10291), .Z(n4800)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0400;
    FD1P3AX commanddata_i_129 (.D(commanddata_N_612), .SP(tb_clk_c_enable_84), 
            .CK(tb_clk_c), .Q(fillcolor_commanddata_i));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(44[3] 130[10])
    defparam commanddata_i_129.GSR = "DISABLED";
    FD1P3AX fsm_state_i__i0 (.D(n8992), .SP(tb_clk_c_enable_91), .CK(tb_clk_c), 
            .Q(fsm_state_i[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=425, LSE_RLINE=425 */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(44[3] 130[10])
    defparam fsm_state_i__i0.GSR = "ENABLED";
    FD1P3IX go_i_125 (.D(n10291), .SP(tb_clk_c_enable_97), .CD(start_N_648), 
            .CK(tb_clk_c), .Q(fillcolor_start_i)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=425, LSE_RLINE=425 */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(44[3] 130[10])
    defparam go_i_125.GSR = "ENABLED";
    FD1P3IX counter_i_1684__i0 (.D(n77[0]), .SP(tb_clk_c_enable_98), .CD(n5693), 
            .CK(tb_clk_c), .Q(counter_i[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684__i0.GSR = "ENABLED";
    LUT4 i1_4_lut_then_4_lut (.A(start_N_652), .B(fsm_state_i[2]), .C(executed_i), 
         .D(executing_i), .Z(n9859)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h2202;
    PFUMX i7489 (.BLUT(n9858), .ALUT(n9859), .C0(fsm_state_i[1]), .Z(tb_clk_c_enable_14));
    CCU2D counter_i_1684_add_4_18 (.A0(counter_i[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter_i[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8165), .S0(n77[16]), .S1(n77[17]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684_add_4_18.INIT0 = 16'hfaaa;
    defparam counter_i_1684_add_4_18.INIT1 = 16'hfaaa;
    defparam counter_i_1684_add_4_18.INJECT1_0 = "NO";
    defparam counter_i_1684_add_4_18.INJECT1_1 = "NO";
    CCU2D counter_i_1684_add_4_2 (.A0(start_N_652), .B0(counter_i[0]), .C0(GND_net), 
          .D0(GND_net), .A1(counter_i[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n8158), .S1(n77[1]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684_add_4_2.INIT0 = 16'h7000;
    defparam counter_i_1684_add_4_2.INIT1 = 16'hfaaa;
    defparam counter_i_1684_add_4_2.INJECT1_0 = "NO";
    defparam counter_i_1684_add_4_2.INJECT1_1 = "NO";
    CCU2D counter_i_1684_add_4_16 (.A0(counter_i[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter_i[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8164), .COUT(n8165), .S0(n77[14]), .S1(n77[15]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684_add_4_16.INIT0 = 16'hfaaa;
    defparam counter_i_1684_add_4_16.INIT1 = 16'hfaaa;
    defparam counter_i_1684_add_4_16.INJECT1_0 = "NO";
    defparam counter_i_1684_add_4_16.INJECT1_1 = "NO";
    LUT4 i1_4_lut_else_4_lut (.A(start_N_652), .B(fsm_state_i[0]), .C(fsm_state_i[2]), 
         .Z(n9858)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h0808;
    CCU2D counter_i_1684_add_4_14 (.A0(counter_i[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter_i[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8163), .COUT(n8164), .S0(n77[12]), .S1(n77[13]));   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(110[22:31])
    defparam counter_i_1684_add_4_14.INIT0 = 16'hfaaa;
    defparam counter_i_1684_add_4_14.INIT1 = 16'hfaaa;
    defparam counter_i_1684_add_4_14.INJECT1_0 = "NO";
    defparam counter_i_1684_add_4_14.INJECT1_1 = "NO";
    LUT4 i7255_2_lut_3_lut (.A(fsm_state_i[1]), .B(fsm_state_i[0]), .C(fsm_state_i[2]), 
         .Z(start_N_648)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i7255_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_rep_216 (.A(executing_i), .B(executed_i), .Z(n9834)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_216.init = 16'h8888;
    LUT4 n6515_bdd_4_lut_7479 (.A(n9821), .B(executing_i), .C(executed_i), 
         .D(start_N_652), .Z(tb_clk_c_enable_97)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)+!C !(D)))+!A)) */ ;
    defparam n6515_bdd_4_lut_7479.init = 16'h0a20;
    LUT4 i1_2_lut_3_lut_4_lut (.A(start_N_652), .B(fsm_state_i[2]), .C(executed_i), 
         .D(executing_i), .Z(n8975)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i33_3_lut_3_lut (.A(start_N_652), .B(fsm_state_i[2]), .C(fsm_state_i[0]), 
         .Z(n16)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;
    defparam i33_3_lut_3_lut.init = 16'h2c2c;
    LUT4 n6515_bdd_4_lut_7463 (.A(fsm_state_i[0]), .B(start_N_652), .C(fsm_state_i[1]), 
         .D(n9834), .Z(n9519)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B (C (D)))) */ ;
    defparam n6515_bdd_4_lut_7463.init = 16'hc808;
    LUT4 n6515_bdd_2_lut (.A(fsm_state_i[0]), .B(fsm_state_i[1]), .Z(n9518)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam n6515_bdd_2_lut.init = 16'h1111;
    LUT4 i17_4_lut (.A(n21), .B(n34), .C(n30), .D(n22), .Z(n35)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(112[12:42])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut (.A(fsm_state_i[0]), .B(fsm_state_i[1]), .C(fsm_state_i[2]), 
         .Z(n5693)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_3_lut.init = 16'h1010;
    LUT4 i10_4_lut (.A(counter_i[1]), .B(counter_i[6]), .C(counter_i[14]), 
         .D(counter_i[11]), .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(112[12:42])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i13_4_lut (.A(counter_i[17]), .B(counter_i[15]), .C(counter_i[16]), 
         .D(counter_i[4]), .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(112[12:42])
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i4_2_lut (.A(counter_i[7]), .B(counter_i[12]), .Z(n22)) /* synthesis lut_function=(A+(B)) */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(112[12:42])
    defparam i4_2_lut.init = 16'heeee;
    LUT4 i3_2_lut (.A(counter_i[13]), .B(counter_i[8]), .Z(n21)) /* synthesis lut_function=(A+(B)) */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(112[12:42])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i16_4_lut (.A(n31), .B(counter_i[9]), .C(n28), .D(counter_i[2]), 
         .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(112[12:42])
    defparam i16_4_lut.init = 16'hfffe;
    PFUMX i32 (.BLUT(n16), .ALUT(n8975), .C0(fsm_state_i[1]), .Z(tb_clk_c_enable_91));
    LUT4 i12_4_lut (.A(counter_i[3]), .B(counter_i[10]), .C(counter_i[5]), 
         .D(counter_i[0]), .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(112[12:42])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_adj_321 (.A(fsm_state_i[1]), .B(n35), .C(fsm_state_i[0]), 
         .Z(n8993)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i2_3_lut_adj_321.init = 16'h2020;
    LUT4 n19_bdd_4_lut (.A(n9834), .B(fsm_state_i[0]), .C(start_N_652), 
         .D(n35), .Z(n9515)) /* synthesis lut_function=(A (B (C (D))+!B (C))) */ ;
    defparam n19_bdd_4_lut.init = 16'ha020;
    LUT4 i5234_3_lut (.A(start_N_652), .B(executed_i), .C(executing_i), 
         .Z(executing_i_N_631)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(89[5] 121[12])
    defparam i5234_3_lut.init = 16'hc4c4;
    PFUMX i7499 (.BLUT(n9873), .ALUT(n9874), .C0(executed_i), .Z(tb_clk_c_enable_98));
    LUT4 i1_2_lut_3_lut (.A(n35), .B(fsm_state_i[0]), .C(fsm_state_i[1]), 
         .Z(n8992)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(49[4] 129[11])
    defparam i1_2_lut_3_lut.init = 16'hb0b0;
    
endmodule
//
// Verilog Description of module clk_divider
//

module clk_divider (GND_net, n9775, clk1k_i, tb_clk_c_enable_111, counter_i_6__N_688, 
            n1605, n16, fsm_state_i, n8919, n131, vivaz_RESET_N_69, 
            tb_clk_c, n9767, n321, fsm_state_i_adj_12, fsm_state_i_4__N_683, 
            n12_adj_13, n6394, tb_clk_c_enable_89, n143, n8288, n6361, 
            n8_adj_11, n9788, \counter[0] , \counter[3] , \counter[2] , 
            \counter[1] , n124, n5718, start_i, counter_5__N_64);
    input GND_net;
    output n9775;
    output clk1k_i;
    output tb_clk_c_enable_111;
    input [6:0]counter_i_6__N_688;
    input [6:0]n1605;
    output [6:0]n16;
    input [1:0]fsm_state_i;
    input n8919;
    input n131;
    output vivaz_RESET_N_69;
    input tb_clk_c;
    output n9767;
    input n321;
    input [4:0]fsm_state_i_adj_12;
    input [4:0]fsm_state_i_4__N_683;
    output [4:0]n12_adj_13;
    input n6394;
    output tb_clk_c_enable_89;
    input n143;
    output n8288;
    output n6361;
    input n8_adj_11;
    input n9788;
    input \counter[0] ;
    input \counter[3] ;
    input \counter[2] ;
    input \counter[1] ;
    output n124;
    output n5718;
    input start_i;
    output counter_5__N_64;
    
    wire clk1k_i /* synthesis is_clock=1, SET_AS_NETWORK=clk1k_i */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(252[9:16])
    wire tb_clk_c /* synthesis SET_AS_NETWORK=tb_clk_c, is_clock=1 */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(63[4:10])
    
    wire n8210;
    wire [15:0]counter53000;   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(20[9:21])
    wire [14:0]n65;
    
    wire n8211, n8209, n8208, n8207, n8206, n8205, clk1k_out_N_49, 
        n8322, n12_adj_1164, n8_adj_1165, n6363, n9045, n14_adj_1172, 
        n10_adj_1173;
    
    CCU2D counter53000_1679_1680_add_4_13 (.A0(counter53000[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter53000[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8210), .COUT(n8211), .S0(n65[11]), 
          .S1(n65[12]));   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(53[22:34])
    defparam counter53000_1679_1680_add_4_13.INIT0 = 16'hfaaa;
    defparam counter53000_1679_1680_add_4_13.INIT1 = 16'hfaaa;
    defparam counter53000_1679_1680_add_4_13.INJECT1_0 = "NO";
    defparam counter53000_1679_1680_add_4_13.INJECT1_1 = "NO";
    CCU2D counter53000_1679_1680_add_4_11 (.A0(counter53000[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter53000[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8209), .COUT(n8210), .S0(n65[9]), 
          .S1(n65[10]));   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(53[22:34])
    defparam counter53000_1679_1680_add_4_11.INIT0 = 16'hfaaa;
    defparam counter53000_1679_1680_add_4_11.INIT1 = 16'hfaaa;
    defparam counter53000_1679_1680_add_4_11.INJECT1_0 = "NO";
    defparam counter53000_1679_1680_add_4_11.INJECT1_1 = "NO";
    LUT4 i46_1_lut_rep_145_2_lut (.A(n9775), .B(clk1k_i), .Z(tb_clk_c_enable_111)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i46_1_lut_rep_145_2_lut.init = 16'h2222;
    LUT4 counter_i_841_i1_i2_3_lut_3_lut_4_lut (.A(n9775), .B(clk1k_i), 
         .C(counter_i_6__N_688[1]), .D(n1605[1]), .Z(n16[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam counter_i_841_i1_i2_3_lut_3_lut_4_lut.init = 16'hf2d0;
    LUT4 counter_i_841_i1_i3_3_lut_3_lut_4_lut (.A(n9775), .B(clk1k_i), 
         .C(counter_i_6__N_688[2]), .D(n1605[2]), .Z(n16[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam counter_i_841_i1_i3_3_lut_3_lut_4_lut.init = 16'hf2d0;
    LUT4 counter_i_841_i1_i4_3_lut_3_lut_4_lut (.A(n9775), .B(clk1k_i), 
         .C(counter_i_6__N_688[3]), .D(n1605[3]), .Z(n16[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam counter_i_841_i1_i4_3_lut_3_lut_4_lut.init = 16'hf2d0;
    CCU2D counter53000_1679_1680_add_4_9 (.A0(counter53000[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter53000[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8208), .COUT(n8209), .S0(n65[7]), 
          .S1(n65[8]));   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(53[22:34])
    defparam counter53000_1679_1680_add_4_9.INIT0 = 16'hfaaa;
    defparam counter53000_1679_1680_add_4_9.INIT1 = 16'hfaaa;
    defparam counter53000_1679_1680_add_4_9.INJECT1_0 = "NO";
    defparam counter53000_1679_1680_add_4_9.INJECT1_1 = "NO";
    LUT4 counter_i_841_i1_i5_3_lut_3_lut_4_lut (.A(n9775), .B(clk1k_i), 
         .C(counter_i_6__N_688[4]), .D(n1605[4]), .Z(n16[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam counter_i_841_i1_i5_3_lut_3_lut_4_lut.init = 16'hf2d0;
    LUT4 counter_i_841_i1_i6_3_lut_3_lut_4_lut (.A(n9775), .B(clk1k_i), 
         .C(counter_i_6__N_688[5]), .D(n1605[5]), .Z(n16[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam counter_i_841_i1_i6_3_lut_3_lut_4_lut.init = 16'hf2d0;
    LUT4 counter_i_841_i1_i7_3_lut_3_lut_4_lut (.A(n9775), .B(clk1k_i), 
         .C(counter_i_6__N_688[6]), .D(n1605[6]), .Z(n16[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam counter_i_841_i1_i7_3_lut_3_lut_4_lut.init = 16'hf2d0;
    LUT4 counter_i_841_i1_i1_3_lut_3_lut_4_lut (.A(n9775), .B(clk1k_i), 
         .C(counter_i_6__N_688[0]), .D(n1605[0]), .Z(n16[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam counter_i_841_i1_i1_3_lut_3_lut_4_lut.init = 16'hf2d0;
    CCU2D counter53000_1679_1680_add_4_7 (.A0(counter53000[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter53000[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8207), .COUT(n8208), .S0(n65[5]), 
          .S1(n65[6]));   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(53[22:34])
    defparam counter53000_1679_1680_add_4_7.INIT0 = 16'hfaaa;
    defparam counter53000_1679_1680_add_4_7.INIT1 = 16'hfaaa;
    defparam counter53000_1679_1680_add_4_7.INJECT1_0 = "NO";
    defparam counter53000_1679_1680_add_4_7.INJECT1_1 = "NO";
    CCU2D counter53000_1679_1680_add_4_5 (.A0(counter53000[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter53000[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8206), .COUT(n8207), .S0(n65[3]), 
          .S1(n65[4]));   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(53[22:34])
    defparam counter53000_1679_1680_add_4_5.INIT0 = 16'hfaaa;
    defparam counter53000_1679_1680_add_4_5.INIT1 = 16'hfaaa;
    defparam counter53000_1679_1680_add_4_5.INJECT1_0 = "NO";
    defparam counter53000_1679_1680_add_4_5.INJECT1_1 = "NO";
    CCU2D counter53000_1679_1680_add_4_3 (.A0(counter53000[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter53000[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8205), .COUT(n8206), .S0(n65[1]), 
          .S1(n65[2]));   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(53[22:34])
    defparam counter53000_1679_1680_add_4_3.INIT0 = 16'hfaaa;
    defparam counter53000_1679_1680_add_4_3.INIT1 = 16'hfaaa;
    defparam counter53000_1679_1680_add_4_3.INJECT1_0 = "NO";
    defparam counter53000_1679_1680_add_4_3.INJECT1_1 = "NO";
    CCU2D counter53000_1679_1680_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter53000[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n8205), .S1(n65[0]));   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(53[22:34])
    defparam counter53000_1679_1680_add_4_1.INIT0 = 16'hF000;
    defparam counter53000_1679_1680_add_4_1.INIT1 = 16'h0555;
    defparam counter53000_1679_1680_add_4_1.INJECT1_0 = "NO";
    defparam counter53000_1679_1680_add_4_1.INJECT1_1 = "NO";
    LUT4 i20_4_lut (.A(fsm_state_i[1]), .B(n8919), .C(fsm_state_i[0]), 
         .D(n131), .Z(vivaz_RESET_N_69)) /* synthesis lut_function=(A (C)+!A !(B (C (D))+!B (C))) */ ;
    defparam i20_4_lut.init = 16'ha5e5;
    LUT4 i72_2_lut (.A(clk1k_i), .B(n9775), .Z(clk1k_out_N_49)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i72_2_lut.init = 16'h6666;
    FD1S3IX counter53000_1679_1680__i1 (.D(n65[0]), .CK(tb_clk_c), .CD(n9775), 
            .Q(counter53000[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(53[22:34])
    defparam counter53000_1679_1680__i1.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_149 (.A(n9775), .B(clk1k_i), .Z(n9767)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_149.init = 16'hdddd;
    FD1S3AX div53000_28 (.D(clk1k_out_N_49), .CK(tb_clk_c), .Q(clk1k_i)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=30, LSE_LLINE=321, LSE_RLINE=321 */ ;   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(38[4] 56[11])
    defparam div53000_28.GSR = "DISABLED";
    LUT4 i7327_4_lut_rep_157 (.A(n8322), .B(counter53000[10]), .C(n12_adj_1164), 
         .D(n8_adj_1165), .Z(n9775)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i7327_4_lut_rep_157.init = 16'h4000;
    FD1S3IX counter53000_1679_1680__i2 (.D(n65[1]), .CK(tb_clk_c), .CD(n9775), 
            .Q(counter53000[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(53[22:34])
    defparam counter53000_1679_1680__i2.GSR = "DISABLED";
    FD1S3IX counter53000_1679_1680__i3 (.D(n65[2]), .CK(tb_clk_c), .CD(n9775), 
            .Q(counter53000[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(53[22:34])
    defparam counter53000_1679_1680__i3.GSR = "DISABLED";
    FD1S3IX counter53000_1679_1680__i4 (.D(n65[3]), .CK(tb_clk_c), .CD(n9775), 
            .Q(counter53000[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(53[22:34])
    defparam counter53000_1679_1680__i4.GSR = "DISABLED";
    FD1S3IX counter53000_1679_1680__i5 (.D(n65[4]), .CK(tb_clk_c), .CD(n9775), 
            .Q(counter53000[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(53[22:34])
    defparam counter53000_1679_1680__i5.GSR = "DISABLED";
    FD1S3IX counter53000_1679_1680__i6 (.D(n65[5]), .CK(tb_clk_c), .CD(n9775), 
            .Q(counter53000[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(53[22:34])
    defparam counter53000_1679_1680__i6.GSR = "DISABLED";
    FD1S3IX counter53000_1679_1680__i7 (.D(n65[6]), .CK(tb_clk_c), .CD(n9775), 
            .Q(counter53000[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(53[22:34])
    defparam counter53000_1679_1680__i7.GSR = "DISABLED";
    FD1S3IX counter53000_1679_1680__i8 (.D(n65[7]), .CK(tb_clk_c), .CD(n9775), 
            .Q(counter53000[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(53[22:34])
    defparam counter53000_1679_1680__i8.GSR = "DISABLED";
    FD1S3IX counter53000_1679_1680__i9 (.D(n65[8]), .CK(tb_clk_c), .CD(n9775), 
            .Q(counter53000[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(53[22:34])
    defparam counter53000_1679_1680__i9.GSR = "DISABLED";
    FD1S3IX counter53000_1679_1680__i10 (.D(n65[9]), .CK(tb_clk_c), .CD(n9775), 
            .Q(counter53000[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(53[22:34])
    defparam counter53000_1679_1680__i10.GSR = "DISABLED";
    FD1S3IX counter53000_1679_1680__i11 (.D(n65[10]), .CK(tb_clk_c), .CD(n9775), 
            .Q(counter53000[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(53[22:34])
    defparam counter53000_1679_1680__i11.GSR = "DISABLED";
    FD1S3IX counter53000_1679_1680__i12 (.D(n65[11]), .CK(tb_clk_c), .CD(n9775), 
            .Q(counter53000[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(53[22:34])
    defparam counter53000_1679_1680__i12.GSR = "DISABLED";
    FD1S3IX counter53000_1679_1680__i13 (.D(n65[12]), .CK(tb_clk_c), .CD(n9775), 
            .Q(counter53000[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(53[22:34])
    defparam counter53000_1679_1680__i13.GSR = "DISABLED";
    FD1S3IX counter53000_1679_1680__i14 (.D(n65[13]), .CK(tb_clk_c), .CD(n9775), 
            .Q(counter53000[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(53[22:34])
    defparam counter53000_1679_1680__i14.GSR = "DISABLED";
    FD1S3IX counter53000_1679_1680__i15 (.D(n65[14]), .CK(tb_clk_c), .CD(n9775), 
            .Q(counter53000[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(53[22:34])
    defparam counter53000_1679_1680__i15.GSR = "DISABLED";
    LUT4 fsm_state_i_832_i1_i2_4_lut_4_lut (.A(n9767), .B(n321), .C(fsm_state_i_adj_12[1]), 
         .D(fsm_state_i_4__N_683[1]), .Z(n12_adj_13[1])) /* synthesis lut_function=(A (D)+!A !(B+!(C))) */ ;
    defparam fsm_state_i_832_i1_i2_4_lut_4_lut.init = 16'hba10;
    LUT4 fsm_state_i_832_i1_i3_4_lut_4_lut (.A(n9767), .B(n321), .C(fsm_state_i_adj_12[2]), 
         .D(fsm_state_i_4__N_683[2]), .Z(n12_adj_13[2])) /* synthesis lut_function=(A (D)+!A !(B+!(C))) */ ;
    defparam fsm_state_i_832_i1_i3_4_lut_4_lut.init = 16'hba10;
    LUT4 fsm_state_i_832_i1_i4_4_lut_4_lut (.A(n9767), .B(n321), .C(fsm_state_i_adj_12[3]), 
         .D(fsm_state_i_4__N_683[3]), .Z(n12_adj_13[3])) /* synthesis lut_function=(A (D)+!A (B+(C))) */ ;
    defparam fsm_state_i_832_i1_i4_4_lut_4_lut.init = 16'hfe54;
    LUT4 fsm_state_i_832_i1_i5_4_lut_4_lut (.A(n9767), .B(n321), .C(fsm_state_i_adj_12[4]), 
         .D(fsm_state_i_4__N_683[4]), .Z(n12_adj_13[4])) /* synthesis lut_function=(A (D)+!A !(B+!(C))) */ ;
    defparam fsm_state_i_832_i1_i5_4_lut_4_lut.init = 16'hba10;
    LUT4 fsm_state_i_832_i1_i1_4_lut_4_lut (.A(n9767), .B(n321), .C(fsm_state_i_adj_12[0]), 
         .D(fsm_state_i_4__N_683[0]), .Z(n12_adj_13[0])) /* synthesis lut_function=(A (D)+!A !(B+!(C))) */ ;
    defparam fsm_state_i_832_i1_i1_4_lut_4_lut.init = 16'hba10;
    CCU2D counter53000_1679_1680_add_4_15 (.A0(counter53000[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter53000[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8211), .S0(n65[13]), .S1(n65[14]));   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(53[22:34])
    defparam counter53000_1679_1680_add_4_15.INIT0 = 16'hfaaa;
    defparam counter53000_1679_1680_add_4_15.INIT1 = 16'hfaaa;
    defparam counter53000_1679_1680_add_4_15.INJECT1_0 = "NO";
    defparam counter53000_1679_1680_add_4_15.INJECT1_1 = "NO";
    LUT4 i1_3_lut (.A(clk1k_i), .B(n6394), .C(n6363), .Z(tb_clk_c_enable_89)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;
    defparam i1_3_lut.init = 16'h5454;
    LUT4 i7290_3_lut (.A(fsm_state_i[0]), .B(n143), .C(clk1k_i), .Z(n8288)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i7290_3_lut.init = 16'h0101;
    LUT4 i1_3_lut_adj_319 (.A(clk1k_i), .B(n9775), .C(n9045), .Z(n6361)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/github/lattice/vivaz machxo2/clk_divider.vhd(38[4] 56[11])
    defparam i1_3_lut_adj_319.init = 16'h4040;
    LUT4 i4447_3_lut (.A(n8_adj_11), .B(n9788), .C(fsm_state_i[0]), .Z(n9045)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(22[8:19])
    defparam i4447_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut (.A(\counter[0] ), .B(\counter[3] ), .C(\counter[2] ), 
         .D(\counter[1] ), .Z(n124)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_4_lut.init = 16'h0100;
    LUT4 i1_4_lut (.A(clk1k_i), .B(fsm_state_i[0]), .C(n6363), .D(n6394), 
         .Z(n5718)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+(D))))) */ ;
    defparam i1_4_lut.init = 16'h5150;
    LUT4 i4450_4_lut (.A(n143), .B(n9775), .C(fsm_state_i[0]), .D(n9788), 
         .Z(n6363)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // d:/github/lattice/vivaz machxo2/reset_routine.vhd(22[8:19])
    defparam i4450_4_lut.init = 16'hc505;
    LUT4 i7_4_lut (.A(counter53000[12]), .B(n14_adj_1172), .C(n10_adj_1173), 
         .D(counter53000[5]), .Z(n8322)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i5_4_lut (.A(counter53000[7]), .B(counter53000[2]), .C(counter53000[13]), 
         .D(counter53000[9]), .Z(n12_adj_1164)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_adj_320 (.A(fsm_state_i[0]), .B(start_i), .C(fsm_state_i[1]), 
         .Z(counter_5__N_64)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_3_lut_adj_320.init = 16'h0404;
    LUT4 i1_2_lut (.A(counter53000[14]), .B(counter53000[8]), .Z(n8_adj_1165)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i6_4_lut (.A(counter53000[4]), .B(counter53000[1]), .C(counter53000[0]), 
         .D(counter53000[3]), .Z(n14_adj_1172)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(counter53000[6]), .B(counter53000[11]), .Z(n10_adj_1173)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    
endmodule
//
// Verilog Description of module movetopoint
//

module movetopoint (fsm_state_i, tb_clk_c, main_reset_i, start_N_652, 
            \movetopoint_value_i[1] , n9808, executing_i, executed_i, 
            fsm_state_i_adj_5, movetopoint_commanddata_i, movetopoint_start_i, 
            tb_clk_c_enable_82, tb_clk_c_enable_83, \movetopoint_value_i[0] , 
            n9727, n9779, n9589, n6536, n9786, n4440, n9122, n9771, 
            executing_i_N_913);
    output [3:0]fsm_state_i;
    input tb_clk_c;
    input main_reset_i;
    input start_N_652;
    output \movetopoint_value_i[1] ;
    input n9808;
    input executing_i;
    input executed_i;
    input [4:0]fsm_state_i_adj_5;
    output movetopoint_commanddata_i;
    output movetopoint_start_i;
    input tb_clk_c_enable_82;
    input tb_clk_c_enable_83;
    output \movetopoint_value_i[0] ;
    output n9727;
    output n9779;
    input n9589;
    output n6536;
    input n9786;
    input n4440;
    output n9122;
    output n9771;
    output executing_i_N_913;
    
    wire tb_clk_c /* synthesis SET_AS_NETWORK=tb_clk_c, is_clock=1 */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(63[4:10])
    
    wire tb_clk_c_enable_105, n8479, n9591, n9798, executed_i_c, tb_clk_c_enable_85, 
        executing_i_c, executing_i_N_370, tb_clk_c_enable_101, n9800, 
        n9877, n9876, n9889, n8865, n9888, n9708, n9812, n101, 
        n9837, n9611, n4, n8220, n6508;
    wire [15:0]valueout_15__N_301;
    
    wire n125, n9829, n6535, n9838, n6530, n9132, n9726, n9725, 
        n9060, n9612, n7, n9610, n6529;
    
    FD1P3IX fsm_state_i__i3 (.D(n8479), .SP(tb_clk_c_enable_105), .CD(main_reset_i), 
            .CK(tb_clk_c), .Q(fsm_state_i[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=21, LSE_RCOL=32, LSE_LLINE=392, LSE_RLINE=392 */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(51[4] 375[11])
    defparam fsm_state_i__i3.GSR = "DISABLED";
    FD1P3IX fsm_state_i__i2 (.D(n9591), .SP(tb_clk_c_enable_105), .CD(main_reset_i), 
            .CK(tb_clk_c), .Q(fsm_state_i[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=21, LSE_RCOL=32, LSE_LLINE=392, LSE_RLINE=392 */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(51[4] 375[11])
    defparam fsm_state_i__i2.GSR = "DISABLED";
    LUT4 i190_3_lut (.A(start_N_652), .B(n9798), .C(executed_i_c), .Z(tb_clk_c_enable_85)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(18[3:8])
    defparam i190_3_lut.init = 16'hc8c8;
    LUT4 i1_3_lut (.A(start_N_652), .B(executed_i_c), .C(executing_i_c), 
         .Z(executing_i_N_370)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(18[3:8])
    defparam i1_3_lut.init = 16'hc4c4;
    FD1P3AX valueout_i1 (.D(n9800), .SP(tb_clk_c_enable_101), .CK(tb_clk_c), 
            .Q(\movetopoint_value_i[1] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=21, LSE_RCOL=32, LSE_LLINE=392, LSE_RLINE=392 */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(51[4] 375[11])
    defparam valueout_i1.GSR = "DISABLED";
    LUT4 i2146_4_lut_4_lut_then_4_lut (.A(n9808), .B(executing_i), .C(executed_i), 
         .D(start_N_652), .Z(n9877)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !(B+!(C))) */ ;
    defparam i2146_4_lut_4_lut_then_4_lut.init = 16'h90b0;
    LUT4 i2146_4_lut_4_lut_else_4_lut (.A(executing_i), .B(executed_i), 
         .Z(n9876)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2146_4_lut_4_lut_else_4_lut.init = 16'h4444;
    LUT4 i1_4_lut_rep_153_then_4_lut (.A(fsm_state_i_adj_5[3]), .B(fsm_state_i_adj_5[4]), 
         .C(fsm_state_i_adj_5[1]), .D(fsm_state_i_adj_5[0]), .Z(n9889)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_rep_153_then_4_lut.init = 16'h0400;
    FD1P3AX commanddata_i_356 (.D(n8865), .SP(tb_clk_c_enable_101), .CK(tb_clk_c), 
            .Q(movetopoint_commanddata_i));   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(51[4] 375[11])
    defparam commanddata_i_356.GSR = "DISABLED";
    LUT4 i1_4_lut_rep_153_else_4_lut (.A(fsm_state_i_adj_5[3]), .B(fsm_state_i_adj_5[4]), 
         .C(fsm_state_i_adj_5[1]), .D(fsm_state_i_adj_5[0]), .Z(n9888)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B ((D)+!C)))) */ ;
    defparam i1_4_lut_rep_153_else_4_lut.init = 16'h4406;
    LUT4 i1_4_lut (.A(start_N_652), .B(n9708), .C(n9812), .D(fsm_state_i[1]), 
         .Z(n101)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'ha088;
    LUT4 fsm_state_i_2__bdd_4_lut_7441 (.A(fsm_state_i[2]), .B(n9837), .C(fsm_state_i[3]), 
         .D(fsm_state_i[0]), .Z(n9611)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A (C+!(D)))) */ ;
    defparam fsm_state_i_2__bdd_4_lut_7441.init = 16'h0da8;
    LUT4 i2_4_lut (.A(fsm_state_i[3]), .B(n4), .C(fsm_state_i[1]), .D(fsm_state_i[2]), 
         .Z(n8220)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C+(D)))) */ ;
    defparam i2_4_lut.init = 16'hc4c8;
    FD1P3AX go_i_352 (.D(n6508), .SP(tb_clk_c_enable_82), .CK(tb_clk_c), 
            .Q(movetopoint_start_i));   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(51[4] 375[11])
    defparam go_i_352.GSR = "DISABLED";
    FD1P3AX executed_i_354 (.D(n6508), .SP(tb_clk_c_enable_83), .CK(tb_clk_c), 
            .Q(executed_i_c));   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(51[4] 375[11])
    defparam executed_i_354.GSR = "DISABLED";
    FD1P3IX executing_i_357 (.D(executing_i_N_370), .SP(tb_clk_c_enable_85), 
            .CD(main_reset_i), .CK(tb_clk_c), .Q(executing_i_c));   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(51[4] 375[11])
    defparam executing_i_357.GSR = "DISABLED";
    FD1P3IX fsm_state_i__i1 (.D(n101), .SP(tb_clk_c_enable_105), .CD(main_reset_i), 
            .CK(tb_clk_c), .Q(fsm_state_i[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=21, LSE_RCOL=32, LSE_LLINE=392, LSE_RLINE=392 */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(51[4] 375[11])
    defparam fsm_state_i__i1.GSR = "DISABLED";
    FD1P3AX valueout_i0 (.D(valueout_15__N_301[0]), .SP(tb_clk_c_enable_101), 
            .CK(tb_clk_c), .Q(\movetopoint_value_i[0] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=21, LSE_RCOL=32, LSE_LLINE=392, LSE_RLINE=392 */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(51[4] 375[11])
    defparam valueout_i0.GSR = "DISABLED";
    FD1P3IX fsm_state_i__i0 (.D(n8220), .SP(tb_clk_c_enable_105), .CD(main_reset_i), 
            .CK(tb_clk_c), .Q(fsm_state_i[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=21, LSE_RCOL=32, LSE_LLINE=392, LSE_RLINE=392 */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(51[4] 375[11])
    defparam fsm_state_i__i0.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(fsm_state_i[0]), .B(fsm_state_i[1]), .Z(n125)) /* synthesis lut_function=(A+(B)) */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(27[9:20])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i4618_4_lut (.A(n9829), .B(n6535), .C(start_N_652), .D(n9838), 
         .Z(n6530)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(27[9:20])
    defparam i4618_4_lut.init = 16'hcac0;
    LUT4 i7330_2_lut (.A(start_N_652), .B(fsm_state_i[2]), .Z(n9132)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/github/lattice/vivaz machxo2/fillcolor.vhd(18[3:8])
    defparam i7330_2_lut.init = 16'hbbbb;
    PFUMX i7474 (.BLUT(n9726), .ALUT(n9725), .C0(fsm_state_i[2]), .Z(n9727));
    LUT4 i1_2_lut_rep_150_3_lut (.A(executed_i_c), .B(n9798), .C(start_N_652), 
         .Z(tb_clk_c_enable_101)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(27[9:20])
    defparam i1_2_lut_rep_150_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_3_lut (.A(executed_i_c), .B(n9798), .C(main_reset_i), 
         .Z(n6508)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(27[9:20])
    defparam i1_2_lut_3_lut.init = 16'h0404;
    LUT4 i7158_4_lut (.A(main_reset_i), .B(n6535), .C(n9060), .D(start_N_652), 
         .Z(tb_clk_c_enable_105)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam i7158_4_lut.init = 16'hfaee;
    LUT4 i7094_4_lut (.A(fsm_state_i[2]), .B(n9612), .C(fsm_state_i[3]), 
         .D(n9837), .Z(n9060)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i7094_4_lut.init = 16'hdccc;
    LUT4 i1_2_lut_rep_211 (.A(fsm_state_i[1]), .B(fsm_state_i[3]), .Z(n9829)) /* synthesis lut_function=(A+(B)) */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(27[9:20])
    defparam i1_2_lut_rep_211.init = 16'heeee;
    LUT4 i1_2_lut_rep_161_4_lut_4_lut (.A(fsm_state_i[1]), .B(fsm_state_i[3]), 
         .C(executed_i_c), .D(fsm_state_i[2]), .Z(n9779)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (B (C+(D))+!B (C+!(D))))) */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(27[9:20])
    defparam i1_2_lut_rep_161_4_lut_4_lut.init = 16'h030e;
    LUT4 i1_4_lut_adj_318 (.A(fsm_state_i[1]), .B(fsm_state_i[2]), .C(fsm_state_i[0]), 
         .D(fsm_state_i[3]), .Z(n7)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (C (D))+!B (D))) */ ;
    defparam i1_4_lut_adj_318.init = 16'hfb80;
    LUT4 i4695_3_lut_rep_180_3_lut (.A(fsm_state_i[1]), .B(fsm_state_i[3]), 
         .C(fsm_state_i[2]), .Z(n9798)) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !(C)))) */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(27[9:20])
    defparam i4695_3_lut_rep_180_3_lut.init = 16'h3e3e;
    LUT4 i6_1_lut_3_lut_4_lut (.A(fsm_state_i[1]), .B(fsm_state_i[3]), .C(fsm_state_i[2]), 
         .D(fsm_state_i[0]), .Z(n8865)) /* synthesis lut_function=((B+!(C (D)+!C !(D)))+!A) */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(51[4] 375[11])
    defparam i6_1_lut_3_lut_4_lut.init = 16'hdffd;
    LUT4 i2_3_lut_rep_182_4_lut (.A(fsm_state_i[1]), .B(fsm_state_i[3]), 
         .C(fsm_state_i[2]), .D(fsm_state_i[0]), .Z(n9800)) /* synthesis lut_function=(!((B+!(C (D)+!C !(D)))+!A)) */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(51[4] 375[11])
    defparam i2_3_lut_rep_182_4_lut.init = 16'h2002;
    LUT4 i1_3_lut_4_lut (.A(fsm_state_i[1]), .B(fsm_state_i[3]), .C(fsm_state_i[0]), 
         .D(fsm_state_i[2]), .Z(valueout_15__N_301[0])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(51[4] 375[11])
    defparam i1_3_lut_4_lut.init = 16'h2000;
    LUT4 i3_4_lut (.A(fsm_state_i[2]), .B(fsm_state_i[0]), .C(fsm_state_i[1]), 
         .D(fsm_state_i[3]), .Z(n6535)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(51[4] 375[11])
    defparam i3_4_lut.init = 16'h0200;
    LUT4 fsm_state_i_0__bdd_4_lut_7473 (.A(fsm_state_i[0]), .B(n9837), .C(fsm_state_i[2]), 
         .D(fsm_state_i[3]), .Z(n9708)) /* synthesis lut_function=(!((B (C (D))+!B (C+(D)))+!A)) */ ;
    defparam fsm_state_i_0__bdd_4_lut_7473.init = 16'h088a;
    LUT4 i1_2_lut_rep_219 (.A(executing_i_c), .B(executed_i_c), .Z(n9837)) /* synthesis lut_function=(A (B)) */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(51[4] 375[11])
    defparam i1_2_lut_rep_219.init = 16'h8888;
    LUT4 fsm_state_i_2__bdd_2_lut_3_lut (.A(executing_i_c), .B(executed_i_c), 
         .C(fsm_state_i[3]), .Z(n9610)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(51[4] 375[11])
    defparam fsm_state_i_2__bdd_2_lut_3_lut.init = 16'h0808;
    LUT4 i2_3_lut_4_lut (.A(executing_i_c), .B(executed_i_c), .C(start_N_652), 
         .D(n7), .Z(n8479)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(51[4] 375[11])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_194_3_lut (.A(executing_i_c), .B(executed_i_c), .C(fsm_state_i[0]), 
         .Z(n9812)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(51[4] 375[11])
    defparam i1_2_lut_rep_194_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_3_lut_4_lut (.A(executing_i_c), .B(executed_i_c), .C(start_N_652), 
         .D(fsm_state_i[0]), .Z(n4)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(51[4] 375[11])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 n341_bdd_2_lut_7459_3_lut_4_lut (.A(executing_i_c), .B(executed_i_c), 
         .C(start_N_652), .D(n9589), .Z(n9591)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(51[4] 375[11])
    defparam n341_bdd_2_lut_7459_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_220 (.A(executing_i_c), .B(executed_i_c), .Z(n9838)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(51[4] 375[11])
    defparam i1_2_lut_rep_220.init = 16'h4444;
    LUT4 i12_3_lut_4_lut (.A(executing_i_c), .B(executed_i_c), .C(fsm_state_i[3]), 
         .D(n125), .Z(n6529)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/github/lattice/vivaz machxo2/movetopoint.vhd(51[4] 375[11])
    defparam i12_3_lut_4_lut.init = 16'h04f4;
    LUT4 fsm_state_i_0__bdd_2_lut_7703 (.A(fsm_state_i[3]), .B(executing_i_c), 
         .Z(n9725)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam fsm_state_i_0__bdd_2_lut_7703.init = 16'h4444;
    LUT4 fsm_state_i_0__bdd_4_lut_7704 (.A(fsm_state_i[0]), .B(fsm_state_i[3]), 
         .C(executing_i_c), .D(fsm_state_i[1]), .Z(n9726)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (B (C)+!B (C (D)))) */ ;
    defparam fsm_state_i_0__bdd_4_lut_7704.init = 16'hf0e2;
    PFUMX i4624 (.BLUT(n6529), .ALUT(n6530), .C0(n9132), .Z(n6536));
    LUT4 i7155_3_lut_4_lut (.A(n9786), .B(n9808), .C(n4440), .D(executing_i), 
         .Z(n9122)) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;
    defparam i7155_3_lut_4_lut.init = 16'hf888;
    PFUMX i7416 (.BLUT(n9611), .ALUT(n9610), .C0(fsm_state_i[1]), .Z(n9612));
    PFUMX i7509 (.BLUT(n9888), .ALUT(n9889), .C0(fsm_state_i_adj_5[2]), 
          .Z(n9771));
    PFUMX i7501 (.BLUT(n9876), .ALUT(n9877), .C0(n9786), .Z(executing_i_N_913));
    
endmodule
//
// Verilog Description of module debounce
//

module debounce (clk, GND_net, main_reset_c, main_reset_i, n6507);
    input clk;
    input GND_net;
    input main_reset_c;
    output main_reset_i;
    output n6507;
    
    wire clk /* synthesis is_clock=1, SET_AS_NETWORK=clk */ ;   // d:/github/lattice/vivaz machxo2/top.vhdl(68[12:15])
    wire [20:0]count;   // d:/github/lattice/vivaz machxo2/debounce.vhd(18[12:17])
    
    wire output_N_1154, n9835;
    wire [20:0]n66;
    
    wire n8198, n8199;
    wire [1:0]inff;   // d:/github/lattice/vivaz machxo2/debounce.vhd(16[12:16])
    
    wire n8197;
    wire [20:0]n5;
    
    wire n8196, n8195, n8194, clk_enable_18, n8193, n8192, n8191, 
        n8200, n12, n8, n8_adj_1155, n8291, n6_adj_1156, n10;
    
    FD1P3IX count__i0 (.D(n66[0]), .SP(output_N_1154), .CD(n9835), .CK(clk), 
            .Q(count[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=518, LSE_RLINE=518 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i0.GSR = "DISABLED";
    CCU2D add_5_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8198), .COUT(n8199), .S0(n66[15]), .S1(n66[16]));   // d:/github/lattice/vivaz machxo2/debounce.vhd(27[18:23])
    defparam add_5_17.INIT0 = 16'h5aaa;
    defparam add_5_17.INIT1 = 16'h5aaa;
    defparam add_5_17.INJECT1_0 = "NO";
    defparam add_5_17.INJECT1_1 = "NO";
    FD1S3AX inff_i0 (.D(main_reset_c), .CK(clk), .Q(inff[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=518, LSE_RLINE=518 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam inff_i0.GSR = "DISABLED";
    CCU2D add_5_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8197), .COUT(n8198), .S0(n5[13]), .S1(n66[14]));   // d:/github/lattice/vivaz machxo2/debounce.vhd(27[18:23])
    defparam add_5_15.INIT0 = 16'h5aaa;
    defparam add_5_15.INIT1 = 16'h5aaa;
    defparam add_5_15.INJECT1_0 = "NO";
    defparam add_5_15.INJECT1_1 = "NO";
    CCU2D add_5_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8196), .COUT(n8197), .S0(n5[11]), .S1(n5[12]));   // d:/github/lattice/vivaz machxo2/debounce.vhd(27[18:23])
    defparam add_5_13.INIT0 = 16'h5aaa;
    defparam add_5_13.INIT1 = 16'h5aaa;
    defparam add_5_13.INJECT1_0 = "NO";
    defparam add_5_13.INJECT1_1 = "NO";
    CCU2D add_5_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8195), .COUT(n8196), .S0(n5[9]), .S1(n5[10]));   // d:/github/lattice/vivaz machxo2/debounce.vhd(27[18:23])
    defparam add_5_11.INIT0 = 16'h5aaa;
    defparam add_5_11.INIT1 = 16'h5aaa;
    defparam add_5_11.INJECT1_0 = "NO";
    defparam add_5_11.INJECT1_1 = "NO";
    FD1P3IX count__i20 (.D(n5[20]), .SP(output_N_1154), .CD(n9835), .CK(clk), 
            .Q(count[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=518, LSE_RLINE=518 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i20.GSR = "DISABLED";
    CCU2D add_5_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8194), 
          .COUT(n8195), .S0(n5[7]), .S1(n5[8]));   // d:/github/lattice/vivaz machxo2/debounce.vhd(27[18:23])
    defparam add_5_9.INIT0 = 16'h5aaa;
    defparam add_5_9.INIT1 = 16'h5aaa;
    defparam add_5_9.INJECT1_0 = "NO";
    defparam add_5_9.INJECT1_1 = "NO";
    FD1P3IX count__i19 (.D(n5[19]), .SP(output_N_1154), .CD(n9835), .CK(clk), 
            .Q(count[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=518, LSE_RLINE=518 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i19.GSR = "DISABLED";
    FD1P3IX count__i18 (.D(n66[18]), .SP(output_N_1154), .CD(n9835), .CK(clk), 
            .Q(count[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=518, LSE_RLINE=518 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i18.GSR = "DISABLED";
    FD1P3IX count__i17 (.D(n66[17]), .SP(output_N_1154), .CD(n9835), .CK(clk), 
            .Q(count[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=518, LSE_RLINE=518 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i17.GSR = "DISABLED";
    FD1P3IX count__i16 (.D(n66[16]), .SP(output_N_1154), .CD(n9835), .CK(clk), 
            .Q(count[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=518, LSE_RLINE=518 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i16.GSR = "DISABLED";
    FD1P3IX count__i15 (.D(n66[15]), .SP(output_N_1154), .CD(n9835), .CK(clk), 
            .Q(count[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=518, LSE_RLINE=518 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i15.GSR = "DISABLED";
    FD1P3IX count__i14 (.D(n66[14]), .SP(output_N_1154), .CD(n9835), .CK(clk), 
            .Q(count[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=518, LSE_RLINE=518 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i14.GSR = "DISABLED";
    FD1P3IX count__i13 (.D(n5[13]), .SP(output_N_1154), .CD(n9835), .CK(clk), 
            .Q(count[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=518, LSE_RLINE=518 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i13.GSR = "DISABLED";
    FD1P3IX count__i12 (.D(n5[12]), .SP(output_N_1154), .CD(n9835), .CK(clk), 
            .Q(count[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=518, LSE_RLINE=518 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i12.GSR = "DISABLED";
    FD1P3IX count__i11 (.D(n5[11]), .SP(output_N_1154), .CD(n9835), .CK(clk), 
            .Q(count[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=518, LSE_RLINE=518 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i11.GSR = "DISABLED";
    FD1P3IX count__i10 (.D(n5[10]), .SP(output_N_1154), .CD(n9835), .CK(clk), 
            .Q(count[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=518, LSE_RLINE=518 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i10.GSR = "DISABLED";
    FD1P3IX count__i9 (.D(n5[9]), .SP(output_N_1154), .CD(n9835), .CK(clk), 
            .Q(count[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=518, LSE_RLINE=518 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i9.GSR = "DISABLED";
    FD1P3IX count__i8 (.D(n5[8]), .SP(output_N_1154), .CD(n9835), .CK(clk), 
            .Q(count[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=518, LSE_RLINE=518 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i8.GSR = "DISABLED";
    FD1P3IX count__i7 (.D(n5[7]), .SP(output_N_1154), .CD(n9835), .CK(clk), 
            .Q(count[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=518, LSE_RLINE=518 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i7.GSR = "DISABLED";
    FD1P3IX count__i6 (.D(n5[6]), .SP(output_N_1154), .CD(n9835), .CK(clk), 
            .Q(count[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=518, LSE_RLINE=518 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i6.GSR = "DISABLED";
    FD1P3IX count__i5 (.D(n5[5]), .SP(output_N_1154), .CD(n9835), .CK(clk), 
            .Q(count[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=518, LSE_RLINE=518 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i5.GSR = "DISABLED";
    FD1P3IX count__i4 (.D(n5[4]), .SP(output_N_1154), .CD(n9835), .CK(clk), 
            .Q(count[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=518, LSE_RLINE=518 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i4.GSR = "DISABLED";
    FD1P3IX count__i3 (.D(n5[3]), .SP(output_N_1154), .CD(n9835), .CK(clk), 
            .Q(count[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=518, LSE_RLINE=518 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i3.GSR = "DISABLED";
    FD1P3IX count__i2 (.D(n5[2]), .SP(output_N_1154), .CD(n9835), .CK(clk), 
            .Q(count[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=518, LSE_RLINE=518 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i2.GSR = "DISABLED";
    FD1P3IX count__i1 (.D(n5[1]), .SP(output_N_1154), .CD(n9835), .CK(clk), 
            .Q(count[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=518, LSE_RLINE=518 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam count__i1.GSR = "DISABLED";
    FD1S3AX inff_i1 (.D(inff[0]), .CK(clk), .Q(inff[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=19, LSE_RCOL=27, LSE_LLINE=518, LSE_RLINE=518 */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam inff_i1.GSR = "DISABLED";
    FD1P3AX output_16 (.D(inff[1]), .SP(clk_enable_18), .CK(clk), .Q(main_reset_i));   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam output_16.GSR = "DISABLED";
    LUT4 i4595_1_lut (.A(main_reset_i), .Z(n6507)) /* synthesis lut_function=(!(A)) */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(22[5] 31[12])
    defparam i4595_1_lut.init = 16'h5555;
    CCU2D add_5_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8193), 
          .COUT(n8194), .S0(n5[5]), .S1(n5[6]));   // d:/github/lattice/vivaz machxo2/debounce.vhd(27[18:23])
    defparam add_5_7.INIT0 = 16'h5aaa;
    defparam add_5_7.INIT1 = 16'h5aaa;
    defparam add_5_7.INJECT1_0 = "NO";
    defparam add_5_7.INJECT1_1 = "NO";
    CCU2D add_5_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8192), 
          .COUT(n8193), .S0(n5[3]), .S1(n5[4]));   // d:/github/lattice/vivaz machxo2/debounce.vhd(27[18:23])
    defparam add_5_5.INIT0 = 16'h5aaa;
    defparam add_5_5.INIT1 = 16'h5aaa;
    defparam add_5_5.INJECT1_0 = "NO";
    defparam add_5_5.INJECT1_1 = "NO";
    CCU2D add_5_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8191), 
          .COUT(n8192), .S0(n5[1]), .S1(n5[2]));   // d:/github/lattice/vivaz machxo2/debounce.vhd(27[18:23])
    defparam add_5_3.INIT0 = 16'h5aaa;
    defparam add_5_3.INIT1 = 16'h5aaa;
    defparam add_5_3.INJECT1_0 = "NO";
    defparam add_5_3.INJECT1_1 = "NO";
    CCU2D add_5_21 (.A0(count[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8200), .S0(n5[19]), .S1(n5[20]));   // d:/github/lattice/vivaz machxo2/debounce.vhd(27[18:23])
    defparam add_5_21.INIT0 = 16'h5aaa;
    defparam add_5_21.INIT1 = 16'h5aaa;
    defparam add_5_21.INJECT1_0 = "NO";
    defparam add_5_21.INJECT1_1 = "NO";
    CCU2D add_5_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n8191), 
          .S1(n66[0]));   // d:/github/lattice/vivaz machxo2/debounce.vhd(27[18:23])
    defparam add_5_1.INIT0 = 16'hF000;
    defparam add_5_1.INIT1 = 16'h5555;
    defparam add_5_1.INJECT1_0 = "NO";
    defparam add_5_1.INJECT1_1 = "NO";
    CCU2D add_5_19 (.A0(count[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8199), .COUT(n8200), .S0(n66[17]), .S1(n66[18]));   // d:/github/lattice/vivaz machxo2/debounce.vhd(27[18:23])
    defparam add_5_19.INIT0 = 16'h5aaa;
    defparam add_5_19.INIT1 = 16'h5aaa;
    defparam add_5_19.INJECT1_0 = "NO";
    defparam add_5_19.INJECT1_1 = "NO";
    LUT4 i7232_4_lut (.A(count[17]), .B(count[20]), .C(n12), .D(n8), 
         .Z(output_N_1154)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))))) */ ;
    defparam i7232_4_lut.init = 16'h3337;
    LUT4 i5_4_lut (.A(count[14]), .B(count[18]), .C(count[15]), .D(count[19]), 
         .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 inff_0__I_0_2_lut_rep_217 (.A(inff[0]), .B(inff[1]), .Z(n9835)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(24[10:26])
    defparam inff_0__I_0_2_lut_rep_217.init = 16'h6666;
    LUT4 i7281_2_lut_2_lut_3_lut (.A(inff[0]), .B(inff[1]), .C(output_N_1154), 
         .Z(clk_enable_18)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+(C)))) */ ;   // d:/github/lattice/vivaz machxo2/debounce.vhd(24[10:26])
    defparam i7281_2_lut_2_lut_3_lut.init = 16'h0909;
    LUT4 i1_4_lut (.A(count[12]), .B(count[16]), .C(n8_adj_1155), .D(count[13]), 
         .Z(n8)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut.init = 16'heccc;
    LUT4 i3_3_lut (.A(count[11]), .B(n8291), .C(count[10]), .Z(n8_adj_1155)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3_3_lut.init = 16'h8080;
    LUT4 i4_4_lut (.A(count[8]), .B(count[7]), .C(count[9]), .D(n6_adj_1156), 
         .Z(n8291)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_316 (.A(count[1]), .B(count[6]), .C(n10), .D(count[5]), 
         .Z(n6_adj_1156)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_316.init = 16'heccc;
    LUT4 i4_4_lut_adj_317 (.A(count[0]), .B(count[2]), .C(count[4]), .D(count[3]), 
         .Z(n10)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_317.init = 16'h8000;
    
endmodule
