//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Apr 30 19:17:59 2025
//Host        : LAPTOP-CENKQ72F running 64-bit major release  (build 9200)
//Command     : generate_target design_IF_wrapper.bd
//Design      : design_IF_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_IF_wrapper
   (branchAddress_0,
    branchTaken_0,
    clk_0,
    freeze_0,
    instructionOut_0,
    pcOut_0,
    rst_0);
  input [31:0]branchAddress_0;
  input branchTaken_0;
  input clk_0;
  input freeze_0;
  output [31:0]instructionOut_0;
  output [31:0]pcOut_0;
  input rst_0;

  wire [31:0]branchAddress_0;
  wire branchTaken_0;
  wire clk_0;
  wire freeze_0;
  wire [31:0]instructionOut_0;
  wire [31:0]pcOut_0;
  wire rst_0;

  design_IF design_IF_i
       (.branchAddress_0(branchAddress_0),
        .branchTaken_0(branchTaken_0),
        .clk_0(clk_0),
        .freeze_0(freeze_0),
        .instructionOut_0(instructionOut_0),
        .pcOut_0(pcOut_0),
        .rst_0(rst_0));
endmodule
