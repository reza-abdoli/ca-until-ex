//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sat May 17 01:18:14 2025
//Host        : LAPTOP-CENKQ72F running 64-bit major release  (build 9200)
//Command     : generate_target design_WB_wrapper.bd
//Design      : design_WB_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_WB_wrapper
   (WB_DestOut_0,
    WB_ENOut_0,
    WB_ValueOut_0,
    branchAddress_0,
    branchTaken_0,
    clk_0,
    freeze_0,
    freeze_1,
    rst_0);
  output [3:0]WB_DestOut_0;
  output [0:0]WB_ENOut_0;
  output [31:0]WB_ValueOut_0;
  input [31:0]branchAddress_0;
  input branchTaken_0;
  input clk_0;
  input freeze_0;
  input freeze_1;
  input rst_0;

  wire [3:0]WB_DestOut_0;
  wire [0:0]WB_ENOut_0;
  wire [31:0]WB_ValueOut_0;
  wire [31:0]branchAddress_0;
  wire branchTaken_0;
  wire clk_0;
  wire freeze_0;
  wire freeze_1;
  wire rst_0;

  design_WB design_WB_i
       (.WB_DestOut_0(WB_DestOut_0),
        .WB_ENOut_0(WB_ENOut_0),
        .WB_ValueOut_0(WB_ValueOut_0),
        .branchAddress_0(branchAddress_0),
        .branchTaken_0(branchTaken_0),
        .clk_0(clk_0),
        .freeze_0(freeze_0),
        .freeze_1(freeze_1),
        .rst_0(rst_0));
endmodule
