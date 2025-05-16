//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Apr 30 17:57:05 2025
//Host        : LAPTOP-CENKQ72F running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk_0,
    pout_0,
    rst_0);
  input clk_0;
  output [31:0]pout_0;
  input rst_0;

  wire clk_0;
  wire [31:0]pout_0;
  wire rst_0;

  design_1 design_1_i
       (.clk_0(clk_0),
        .pout_0(pout_0),
        .rst_0(rst_0));
endmodule
