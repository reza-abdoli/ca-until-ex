//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Fri May 16 23:58:33 2025
//Host        : LAPTOP-CENKQ72F running 64-bit major release  (build 9200)
//Command     : generate_target design_EX_wrapper.bd
//Design      : design_EX_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_EX_wrapper
   (ALU_ResOut_0,
    branchAddress_0,
    branchTaken_0,
    clk_0,
    freeze_0,
    freeze_1,
    rst_0);
  output [31:0]ALU_ResOut_0;
  input [31:0]branchAddress_0;
  input branchTaken_0;
  input clk_0;
  input freeze_0;
  input freeze_1;
  input rst_0;

  wire [31:0]ALU_ResOut_0;
  wire [31:0]branchAddress_0;
  wire branchTaken_0;
  wire clk_0;
  wire freeze_0;
  wire freeze_1;
  wire rst_0;

  design_EX design_EX_i
       (.ALU_ResOut_0(ALU_ResOut_0),
        .branchAddress_0(branchAddress_0),
        .branchTaken_0(branchTaken_0),
        .clk_0(clk_0),
        .freeze_0(freeze_0),
        .freeze_1(freeze_1),
        .rst_0(rst_0));
endmodule
