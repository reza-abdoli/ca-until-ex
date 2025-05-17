//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sat May 17 03:17:58 2025
//Host        : LAPTOP-CENKQ72F running 64-bit major release  (build 9200)
//Command     : generate_target design_ARM_wrapper.bd
//Design      : design_ARM_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_ARM_wrapper
   (MEM_SRAM_ADDR_0,
    MEM_SRAM_CE_N_0,
    MEM_SRAM_DQ_0,
    MEM_SRAM_LB_N_0,
    MEM_SRAM_OE_N_0,
    MEM_SRAM_UB_N_0,
    MEM_SRAM_WE_N_0,
    clk_0,
    forwardENIn_0,
    rst_0);
  output [17:0]MEM_SRAM_ADDR_0;
  output [0:0]MEM_SRAM_CE_N_0;
  inout [15:0]MEM_SRAM_DQ_0;
  output [0:0]MEM_SRAM_LB_N_0;
  output [0:0]MEM_SRAM_OE_N_0;
  output [0:0]MEM_SRAM_UB_N_0;
  output [0:0]MEM_SRAM_WE_N_0;
  input clk_0;
  input forwardENIn_0;
  input rst_0;

  wire [17:0]MEM_SRAM_ADDR_0;
  wire [0:0]MEM_SRAM_CE_N_0;
  wire [15:0]MEM_SRAM_DQ_0;
  wire [0:0]MEM_SRAM_LB_N_0;
  wire [0:0]MEM_SRAM_OE_N_0;
  wire [0:0]MEM_SRAM_UB_N_0;
  wire [0:0]MEM_SRAM_WE_N_0;
  wire clk_0;
  wire forwardENIn_0;
  wire rst_0;

  design_ARM design_ARM_i
       (.MEM_SRAM_ADDR_0(MEM_SRAM_ADDR_0),
        .MEM_SRAM_CE_N_0(MEM_SRAM_CE_N_0),
        .MEM_SRAM_DQ_0(MEM_SRAM_DQ_0),
        .MEM_SRAM_LB_N_0(MEM_SRAM_LB_N_0),
        .MEM_SRAM_OE_N_0(MEM_SRAM_OE_N_0),
        .MEM_SRAM_UB_N_0(MEM_SRAM_UB_N_0),
        .MEM_SRAM_WE_N_0(MEM_SRAM_WE_N_0),
        .clk_0(clk_0),
        .forwardENIn_0(forwardENIn_0),
        .rst_0(rst_0));
endmodule
