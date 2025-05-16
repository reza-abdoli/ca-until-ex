//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Apr 30 17:57:05 2025
//Host        : LAPTOP-CENKQ72F running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=8,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk_0,
    pout_0,
    rst_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET rst_0, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_0;
  output [31:0]pout_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_0;

  wire [31:0]AdderIf_out;
  wire [31:0]InstructionMemory_0_mem;
  wire [31:0]Mux2to1_0_out;
  wire [31:0]ProgramCounter_0_pcOut;
  wire clk_0_1;
  wire [31:0]register_0_pout;
  wire [31:0]register_1_pout;
  wire [31:0]register_2_pout;
  wire [31:0]register_3_pout;
  wire rst_0_1;
  wire [31:0]xlconstant_0_dout;

  assign clk_0_1 = clk_0;
  assign pout_0[31:0] = register_3_pout;
  assign rst_0_1 = rst_0;
  design_1_Adder_0_2 Adder
       (.a(xlconstant_0_dout),
        .b(ProgramCounter_0_pcOut),
        .out(AdderIf_out));
  design_1_InstructionMemory_0_0 InstructionMemory_0
       (.mem(InstructionMemory_0_mem),
        .memAddr(ProgramCounter_0_pcOut));
  design_1_Mux2to1_0_0 Mux2to1_0
       (.in0(AdderIf_out),
        .in1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .out(Mux2to1_0_out),
        .select(1'b0));
  design_1_ProgramCounter_0_1 ProgramCounter_0
       (.clk(clk_0_1),
        .freeze(1'b0),
        .pcIn(Mux2to1_0_out),
        .pcOut(ProgramCounter_0_pcOut),
        .rst(rst_0_1));
  design_1_register_0_0 register_0
       (.clk(clk_0_1),
        .pin(InstructionMemory_0_mem),
        .pout(register_0_pout),
        .rst(rst_0_1));
  design_1_register_0_1 register_1
       (.clk(clk_0_1),
        .pin(register_0_pout),
        .pout(register_1_pout),
        .rst(rst_0_1));
  design_1_register_0_2 register_2
       (.clk(clk_0_1),
        .pin(register_1_pout),
        .pout(register_2_pout),
        .rst(rst_0_1));
  design_1_register_0_3 register_3
       (.clk(clk_0_1),
        .pin(register_2_pout),
        .pout(register_3_pout),
        .rst(rst_0_1));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
