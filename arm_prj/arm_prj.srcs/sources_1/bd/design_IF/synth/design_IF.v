//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Apr 30 19:17:59 2025
//Host        : LAPTOP-CENKQ72F running 64-bit major release  (build 9200)
//Command     : generate_target design_IF.bd
//Design      : design_IF
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_IF,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_IF,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_IF.hwdef" *) 
module design_IF
   (branchAddress_0,
    branchTaken_0,
    clk_0,
    freeze_0,
    instructionOut_0,
    pcOut_0,
    rst_0);
  input [31:0]branchAddress_0;
  input branchTaken_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET rst_0, CLK_DOMAIN design_IF_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_0;
  input freeze_0;
  output [31:0]instructionOut_0;
  output [31:0]pcOut_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_0;

  wire [31:0]IF_0_PC;
  wire [31:0]IF_0_instruction;
  wire [31:0]\^RegsIfId_0 ;
  wire [31:0]RegsIfId_0_instructionOut;
  wire [31:0]branchAddress_0_1;
  wire branchTaken_0_1;
  wire clk_0_1;
  wire freeze_0_1;
  wire rst_0_1;

  assign branchAddress_0_1 = branchAddress_0[31:0];
  assign branchTaken_0_1 = branchTaken_0;
  assign clk_0_1 = clk_0;
  assign freeze_0_1 = freeze_0;
  assign instructionOut_0[31:0] = RegsIfId_0_instructionOut;
  assign pcOut_0[31:0] = \^RegsIfId_0 [31:0];
  assign rst_0_1 = rst_0;
  design_IF_IF_0_0 IF_0
       (.PC(IF_0_PC),
        .branchAddress(branchAddress_0_1),
        .branchTaken(branchTaken_0_1),
        .clk(clk_0_1),
        .freeze(freeze_0_1),
        .instruction(IF_0_instruction),
        .rst(rst_0_1));
  design_IF_RegsIfId_0_0 RegsIfId_0
       (.clk(clk_0_1),
        .flush(branchTaken_0_1),
        .freeze(freeze_0_1),
        .instructionIn(IF_0_instruction),
        .instructionOut(RegsIfId_0_instructionOut),
        .pcIn(IF_0_PC),
        .pcOut(\^RegsIfId_0 ),
        .rst(rst_0_1));
endmodule
