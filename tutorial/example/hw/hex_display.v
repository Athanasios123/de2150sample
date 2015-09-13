//Legal Notice: (C)2009 Altera Corporation. All rights reserved.  Your
//use of Altera Corporation's design tools, logic functions and other
//software and tools, and its AMPP partner logic functions, and any
//output files any of the foregoing (including device programming or
//simulation files), and any associated documentation or information are
//expressly subject to the terms and conditions of the Altera Program
//License Subscription Agreement or other applicable license agreement,
//including, without limitation, that your use is for the sole purpose
//of programming logic devices manufactured by Altera and sold by Altera
//or its authorized distributors.  Please refer to the applicable
//agreement for further details.

// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module hex_display (
                     // inputs:
                      address,
                      clk,
                      reset_n,
                      write,
                      writedata,

                     // outputs:
                      hex0,
                      hex1,
                      hex2,
                      hex3,
                      hex4,
                      hex5,
                      hex6,
                      hex7
                   )
;

  output  [  6: 0] hex0;
  output  [  6: 0] hex1;
  output  [  6: 0] hex2;
  output  [  6: 0] hex3;
  output  [  6: 0] hex4;
  output  [  6: 0] hex5;
  output  [  6: 0] hex6;
  output  [  6: 0] hex7;
  input            address;
  input            clk;
  input            reset_n;
  input            write;
  input   [ 31: 0] writedata;

  wire    [  6: 0] hex0;
  wire    [  6: 0] hex1;
  wire    [  6: 0] hex2;
  wire    [  6: 0] hex3;
  wire    [  6: 0] hex4;
  wire    [  6: 0] hex5;
  wire    [  6: 0] hex6;
  wire    [  6: 0] hex7;
  hex_display_comp the_hex_display_comp
    (
      .address   (address),
      .clk       (clk),
      .hex0      (hex0),
      .hex1      (hex1),
      .hex2      (hex2),
      .hex3      (hex3),
      .hex4      (hex4),
      .hex5      (hex5),
      .hex6      (hex6),
      .hex7      (hex7),
      .reset_n   (reset_n),
      .write     (write),
      .writedata (writedata)
    );


endmodule

