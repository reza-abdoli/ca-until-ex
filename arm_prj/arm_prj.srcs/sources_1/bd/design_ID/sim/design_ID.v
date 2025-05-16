//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Fri May 16 21:51:44 2025
//Host        : LAPTOP-CENKQ72F running 64-bit major release  (build 9200)
//Command     : generate_target design_ID.bd
//Design      : design_ID
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_ID,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_ID,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_ID.hwdef" *) 
module design_ID
   (Imm24Out_0,
    PCOut_0,
    branchAddress_0,
    branchTaken_0,
    clk_0,
    freeze_0,
    rst_0);
  output [23:0]Imm24Out_0;
  output [31:0]PCOut_0;
  input [31:0]branchAddress_0;
  input branchTaken_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET rst_0, CLK_DOMAIN design_ID_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_0;
  input freeze_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_0;

  wire [0:0]ID_Stage_0_BOut;
  wire [3:0]ID_Stage_0_DestOut;
  wire [3:0]ID_Stage_0_EXE_CMDOut;
  wire [0:0]ID_Stage_0_IOut;
  wire [23:0]ID_Stage_0_Imm24Out;
  wire [0:0]ID_Stage_0_MEM_R_ENOut;
  wire [0:0]ID_Stage_0_MEM_W_ENOut;
  wire [0:0]ID_Stage_0_SOut;
  wire [31:0]ID_Stage_0_Val_RmOut;
  wire [31:0]ID_Stage_0_Val_RnOut;
  wire [0:0]ID_Stage_0_WB_ENOut;
  wire [11:0]ID_Stage_0_shiftOperandOut;
  wire [3:0]ID_Stage_0_src1Out;
  wire [3:0]ID_Stage_0_src2Out;
  wire [23:0]ID_Stage_Reg_0_Imm24Out;
  wire [31:0]ID_Stage_Reg_0_PCOut;
  wire [31:0]IF_0_PC;
  wire [31:0]IF_0_instruction;
  wire [31:0]RegsIfId_0_instructionOut;
  wire [31:0]RegsIfId_0_pcOut;
  wire [31:0]branchAddress_0_1;
  wire branchTaken_0_1;
  wire clk_0_1;
  wire freeze_0_1;
  wire rst_0_1;

  assign Imm24Out_0[23:0] = ID_Stage_Reg_0_Imm24Out;
  assign PCOut_0[31:0] = ID_Stage_Reg_0_PCOut;
  assign branchAddress_0_1 = branchAddress_0[31:0];
  assign branchTaken_0_1 = branchTaken_0;
  assign clk_0_1 = clk_0;
  assign freeze_0_1 = freeze_0;
  assign rst_0_1 = rst_0;
  design_ID_ID_Stage_0_0 ID_Stage_0
       (.BOut(ID_Stage_0_BOut),
        .DestOut(ID_Stage_0_DestOut),
        .EXE_CMDOut(ID_Stage_0_EXE_CMDOut),
        .HazardIn(1'b0),
        .IOut(ID_Stage_0_IOut),
        .Imm24Out(ID_Stage_0_Imm24Out),
        .MEM_R_ENOut(ID_Stage_0_MEM_R_ENOut),
        .MEM_W_ENOut(ID_Stage_0_MEM_W_ENOut),
        .SOut(ID_Stage_0_SOut),
        .Val_RmOut(ID_Stage_0_Val_RmOut),
        .Val_RnOut(ID_Stage_0_Val_RnOut),
        .WB_DestIn({1'b0,1'b0,1'b0,1'b0}),
        .WB_ENIn(1'b0),
        .WB_ENOut(ID_Stage_0_WB_ENOut),
        .WB_ValueIn({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clk(clk_0_1),
        .instructionIn(RegsIfId_0_instructionOut),
        .rst(rst_0_1),
        .shiftOperandOut(ID_Stage_0_shiftOperandOut),
        .src1Out(ID_Stage_0_src1Out),
        .src2Out(ID_Stage_0_src2Out),
        .statusIn({1'b0,1'b0,1'b0,1'b0}));
  design_ID_ID_Stage_Reg_0_0 ID_Stage_Reg_0
       (.BIn(ID_Stage_0_BOut),
        .DestIn(ID_Stage_0_DestOut),
        .EXE_CMDIn(ID_Stage_0_EXE_CMDOut),
        .IIn(ID_Stage_0_IOut),
        .Imm24In(ID_Stage_0_Imm24Out),
        .Imm24Out(ID_Stage_Reg_0_Imm24Out),
        .MEM_R_ENIn(ID_Stage_0_MEM_R_ENOut),
        .MEM_W_ENIn(ID_Stage_0_MEM_W_ENOut),
        .PCIn(RegsIfId_0_pcOut),
        .PCOut(ID_Stage_Reg_0_PCOut),
        .SIn(ID_Stage_0_SOut),
        .Val_RmIn(ID_Stage_0_Val_RmOut),
        .Val_RnIn(ID_Stage_0_Val_RnOut),
        .WB_ENIn(ID_Stage_0_WB_ENOut),
        .clk(clk_0_1),
        .clr(branchTaken_0_1),
        .en(freeze_0_1),
        .rst(rst_0_1),
        .shiftOperandIn(ID_Stage_0_shiftOperandOut),
        .src1In(ID_Stage_0_src1Out),
        .src2In(ID_Stage_0_src2Out),
        .statusIn({1'b0,1'b0,1'b0,1'b0}));
  design_ID_IF_0_0 IF_0
       (.PC(IF_0_PC),
        .branchAddress(branchAddress_0_1),
        .branchTaken(branchTaken_0_1),
        .clk(clk_0_1),
        .freeze(freeze_0_1),
        .instruction(IF_0_instruction),
        .rst(rst_0_1));
  design_ID_RegsIfId_0_0 RegsIfId_0
       (.clk(clk_0_1),
        .flush(branchTaken_0_1),
        .freeze(freeze_0_1),
        .instructionIn(IF_0_instruction),
        .instructionOut(RegsIfId_0_instructionOut),
        .pcIn(IF_0_PC),
        .pcOut(RegsIfId_0_pcOut),
        .rst(rst_0_1));
endmodule
