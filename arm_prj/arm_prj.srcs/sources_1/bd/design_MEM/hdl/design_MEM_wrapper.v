//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sat May 17 00:57:42 2025
//Host        : LAPTOP-CENKQ72F running 64-bit major release  (build 9200)
//Command     : generate_target design_MEM_wrapper.bd
//Design      : design_MEM_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_MEM_wrapper
   (DataMemoryOut_0,
    MEM_ReadyOut_0,
    SRAM_ADDROut_0,
    SRAM_CE_NOut_0,
    SRAM_DQInOut_0,
    SRAM_LB_NOut_0,
    SRAM_OE_NOut_0,
    SRAM_UB_NOut_0,
    SRAM_WE_NOut_0,
    branchAddress_0,
    branchTaken_0,
    clk_0,
    freeze_0,
    freeze_1,
    rst_0);
  output [31:0]DataMemoryOut_0;
  output [0:0]MEM_ReadyOut_0;
  output [17:0]SRAM_ADDROut_0;
  output [17:0]SRAM_CE_NOut_0;
  inout [15:0]SRAM_DQInOut_0;
  output [17:0]SRAM_LB_NOut_0;
  output [17:0]SRAM_OE_NOut_0;
  output [17:0]SRAM_UB_NOut_0;
  output [17:0]SRAM_WE_NOut_0;
  input [31:0]branchAddress_0;
  input branchTaken_0;
  input clk_0;
  input freeze_0;
  input freeze_1;
  input rst_0;

  wire [31:0]DataMemoryOut_0;
  wire [0:0]MEM_ReadyOut_0;
  wire [17:0]SRAM_ADDROut_0;
  wire [17:0]SRAM_CE_NOut_0;
  wire [15:0]SRAM_DQInOut_0;
  wire [17:0]SRAM_LB_NOut_0;
  wire [17:0]SRAM_OE_NOut_0;
  wire [17:0]SRAM_UB_NOut_0;
  wire [17:0]SRAM_WE_NOut_0;
  wire [31:0]branchAddress_0;
  wire branchTaken_0;
  wire clk_0;
  wire freeze_0;
  wire freeze_1;
  wire rst_0;

  design_MEM design_MEM_i
       (.DataMemoryOut_0(DataMemoryOut_0),
        .MEM_ReadyOut_0(MEM_ReadyOut_0),
        .SRAM_ADDROut_0(SRAM_ADDROut_0),
        .SRAM_CE_NOut_0(SRAM_CE_NOut_0),
        .SRAM_DQInOut_0(SRAM_DQInOut_0),
        .SRAM_LB_NOut_0(SRAM_LB_NOut_0),
        .SRAM_OE_NOut_0(SRAM_OE_NOut_0),
        .SRAM_UB_NOut_0(SRAM_UB_NOut_0),
        .SRAM_WE_NOut_0(SRAM_WE_NOut_0),
        .branchAddress_0(branchAddress_0),
        .branchTaken_0(branchTaken_0),
        .clk_0(clk_0),
        .freeze_0(freeze_0),
        .freeze_1(freeze_1),
        .rst_0(rst_0));
endmodule
