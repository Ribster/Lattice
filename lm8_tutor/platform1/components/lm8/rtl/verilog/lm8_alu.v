// ============================================================================
// >>>>>>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
// ----------------------------------------------------------------------------
// Copyright (c) 2006-2011 by Lattice Semiconductor Corporation
// ALL RIGHTS RESERVED 
// ----------------------------------------------------------------------------
//
// IMPORTANT: THIS FILE IS AUTO-GENERATED BY THE LATTICEMICO SYSTEM.
//
// Permission:
//
//      Lattice Semiconductor grants permission to use this code
//      pursuant to the terms of the Lattice Semiconductor Corporation
//      Open Source License Agreement.  
//
// Disclaimer:
//
//      Lattice Semiconductor provides no warranty regarding the use or
//      functionality of this code. It is the user's responsibility to
//      verify the user�s design for consistency and functionality through
//      the use of formal verification methods.
//
// ----------------------------------------------------------------------------
//
//                  Lattice Semiconductor Corporation
//                  5555 NE Moore Court
//                  Hillsboro, OR 97214
//                  U.S.A
//
//                  TEL: 1-800-Lattice (USA and Canada)
//                         503-286-8001 (other locations)
//
//                  web: http://www.latticesemi.com/
//                  email: techsupport@latticesemi.com
//
// ----------------------------------------------------------------------------
//                         FILE DETAILS
//
// Name			: lm8_alu.v
// Project		: LatticeMico8
// Dependencies	: n/a
// Description	: LatticeMico8 microcontroller core's arithmetic module.
// Revisions	: 3.2 (Initial version)
// 				: 3.3 (n/a)
// ============================================================================

module lm8_alu 
  #(
    parameter  FAMILY_NAME="XO"  
    )
   (
    input [17:0] instr,
    input [7:0]  dout_rd,
    input [7:0]  dout_rb,
    input [7:0]  imi_data,
    input        imi_instr,
    input        carry_flag,
    input        sub,
    input        subc,
    input        addc,
    input        cmp,
    output [7:0] dout_alu,
    output       cout_alu
    );

   wire [7:0]    dout_l;
   wire          cout_r;
   wire [7:0]    dout_r;
   wire [7:0]    data_rd ;
   wire [7:0]    data_rb_int ;
   wire [7:0]    data_rb ;
   wire [7:0]    data_add ;
   wire          carry_add_int ;
   wire          carry_add ;
   wire          adsu_ci ; 
   wire          add_sel ; 
   wire          add_sel_inv ; 
   wire          adsu_ci_int ;

   wire [8:0]    cout_dout_alu;
   wire [8:0]    cout_dout_r;

   //---------------------------------------
   assign        data_rd = dout_rd ;
   assign        data_rb = dout_rb ;

   assign        add_sel = (sub | subc | cmp) ; 
   
   assign        add_sel_inv =~add_sel;
   assign        adsu_ci_int = carry_flag & (addc | subc) ;

   assign        adsu_ci = (add_sel) ? ~adsu_ci_int : adsu_ci_int ; 

   assign        data_rb_int  = imi_instr ? imi_data : dout_rb ;

   pmi_addsub #(
                8,
                8,
                "off",
                FAMILY_NAME ,
                "pmi_addsub" 
                ) u1_addsub8
      (
       .DataA  (dout_rd),
       .DataB  (data_rb_int),
       .Cin    (adsu_ci),
       .Add_Sub(add_sel_inv),
       .Result (data_add),
       .Cout   (carry_add_int),
       .Overflow()
       );

   assign        carry_add = (add_sel) ? ~carry_add_int : carry_add_int;

   assign        dout_l = ((instr[15:14] == 2'b00) ? data_rb_int :              // mov
                           (instr[15:14] == 2'b01) ? (data_rd & data_rb_int) :  // and
                           (instr[15:14] == 2'b10) ? (data_rd | data_rb_int) :  // or
                           (data_rd ^ data_rb_int));                            // xor

   assign        cout_r = cout_dout_r[8];
   assign        dout_r = cout_dout_r[7:0];
   
   assign        cout_dout_r = ((instr[1:0] == 2'b00) ? {carry_flag, data_rb[0], data_rb[7:1]} : // ror
                                (instr[1:0] == 2'b10) ? {data_rb[0], carry_flag, data_rb[7:1]} : // rorc
                                (instr[1:0] == 2'b01) ? {carry_flag, data_rb[6:0], data_rb[7]} : // rol
                                {data_rb[7], data_rb[6:0], carry_flag});                         // rolc
   
   assign        cout_alu = cout_dout_alu[8];
   assign        dout_alu = cout_dout_alu[7:0];
   
   assign        cout_dout_alu = (((instr[17:14] == 4'b1000) || instr[17:16] == 2'b00) ? {carry_add, data_add} : // cmp/add/sub
                                  ((instr[17:14] == 4'b1001) || instr[17:16] == 2'b01) ? {carry_flag, dout_l} :  // test/mov/and/or/xor
                                  ((instr[17:14] == 4'b1010) || (instr[17:14] == 4'b1011)) ? {cout_r, dout_r} :      // rotate/set/clr
                                                                                         {1'b0, 8'hFF});         // default (use FF to prevent false
                                                                                                                 // assertion of the Z flag
   
endmodule       

