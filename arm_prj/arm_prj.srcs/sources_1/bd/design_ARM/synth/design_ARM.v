//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sat May 17 03:17:58 2025
//Host        : LAPTOP-CENKQ72F running 64-bit major release  (build 9200)
//Command     : generate_target design_ARM.bd
//Design      : design_ARM
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_ARM,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_ARM,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_ARM.hwdef" *) 
module design_ARM
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET rst_0, CLK_DOMAIN design_ARM_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_0;
  input forwardENIn_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_0;

  wire [17:0]ARM_0_MEM_SRAM_ADDR;
  wire [0:0]ARM_0_MEM_SRAM_CE_N;
  wire [0:0]ARM_0_MEM_SRAM_LB_N;
  wire [0:0]ARM_0_MEM_SRAM_OE_N;
  wire [0:0]ARM_0_MEM_SRAM_UB_N;
  wire [0:0]ARM_0_MEM_SRAM_WE_N;
  wire [15:0]Net;
  wire clk_0_1;
  wire forwardENIn_0_1;
  wire rst_0_1;

  assign MEM_SRAM_ADDR_0[17:0] = ARM_0_MEM_SRAM_ADDR;
  assign MEM_SRAM_CE_N_0[0] = ARM_0_MEM_SRAM_CE_N;
  assign MEM_SRAM_LB_N_0[0] = ARM_0_MEM_SRAM_LB_N;
  assign MEM_SRAM_OE_N_0[0] = ARM_0_MEM_SRAM_OE_N;
  assign MEM_SRAM_UB_N_0[0] = ARM_0_MEM_SRAM_UB_N;
  assign MEM_SRAM_WE_N_0[0] = ARM_0_MEM_SRAM_WE_N;
  assign clk_0_1 = clk_0;
  assign forwardENIn_0_1 = forwardENIn_0;
  assign rst_0_1 = rst_0;
  design_ARM_ARM_0_0 ARM_0
       (.MEM_SRAM_ADDR(ARM_0_MEM_SRAM_ADDR),
        .MEM_SRAM_CE_N(ARM_0_MEM_SRAM_CE_N),
        .MEM_SRAM_DQ(MEM_SRAM_DQ_0[15:0]),
        .MEM_SRAM_LB_N(ARM_0_MEM_SRAM_LB_N),
        .MEM_SRAM_OE_N(ARM_0_MEM_SRAM_OE_N),
        .MEM_SRAM_UB_N(ARM_0_MEM_SRAM_UB_N),
        .MEM_SRAM_WE_N(ARM_0_MEM_SRAM_WE_N),
        .clk(clk_0_1),
        .forwardENIn(forwardENIn_0_1),
        .rst(rst_0_1));
endmodule
