// (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:ID_Stage_Reg:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_MEM_ID_Stage_Reg_0_0 (
  clk,
  rst,
  en,
  clr,
  PCIn,
  PCOut,
  WB_ENIn,
  WB_ENOut,
  MEM_R_ENIn,
  MEM_R_ENOut,
  MEM_W_ENIn,
  MEM_W_ENOut,
  EXE_CMDIn,
  EXE_CMDOut,
  BIn,
  BOut,
  SIn,
  SOut,
  Val_RmIn,
  Val_RmOut,
  Val_RnIn,
  Val_RnOut,
  shiftOperandIn,
  shiftOperandOut,
  IIn,
  IOut,
  Imm24In,
  Imm24Out,
  DestIn,
  DestOut,
  statusIn,
  statusOut,
  src1In,
  src1Out,
  src2In,
  src2Out
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_MEM_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire [0 : 0] clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire [0 : 0] rst;
input wire [0 : 0] en;
input wire [0 : 0] clr;
input wire [31 : 0] PCIn;
output wire [31 : 0] PCOut;
input wire [0 : 0] WB_ENIn;
output wire [0 : 0] WB_ENOut;
input wire [0 : 0] MEM_R_ENIn;
output wire [0 : 0] MEM_R_ENOut;
input wire [0 : 0] MEM_W_ENIn;
output wire [0 : 0] MEM_W_ENOut;
input wire [3 : 0] EXE_CMDIn;
output wire [3 : 0] EXE_CMDOut;
input wire [0 : 0] BIn;
output wire [0 : 0] BOut;
input wire [0 : 0] SIn;
output wire [0 : 0] SOut;
input wire [31 : 0] Val_RmIn;
output wire [31 : 0] Val_RmOut;
input wire [31 : 0] Val_RnIn;
output wire [31 : 0] Val_RnOut;
input wire [11 : 0] shiftOperandIn;
output wire [11 : 0] shiftOperandOut;
input wire [0 : 0] IIn;
output wire [0 : 0] IOut;
input wire [23 : 0] Imm24In;
output wire [23 : 0] Imm24Out;
input wire [3 : 0] DestIn;
output wire [3 : 0] DestOut;
input wire [3 : 0] statusIn;
output wire [3 : 0] statusOut;
input wire [3 : 0] src1In;
output wire [3 : 0] src1Out;
input wire [3 : 0] src2In;
output wire [3 : 0] src2Out;

  ID_Stage_Reg #(
    .N(32)
  ) inst (
    .clk(clk),
    .rst(rst),
    .en(en),
    .clr(clr),
    .PCIn(PCIn),
    .PCOut(PCOut),
    .WB_ENIn(WB_ENIn),
    .WB_ENOut(WB_ENOut),
    .MEM_R_ENIn(MEM_R_ENIn),
    .MEM_R_ENOut(MEM_R_ENOut),
    .MEM_W_ENIn(MEM_W_ENIn),
    .MEM_W_ENOut(MEM_W_ENOut),
    .EXE_CMDIn(EXE_CMDIn),
    .EXE_CMDOut(EXE_CMDOut),
    .BIn(BIn),
    .BOut(BOut),
    .SIn(SIn),
    .SOut(SOut),
    .Val_RmIn(Val_RmIn),
    .Val_RmOut(Val_RmOut),
    .Val_RnIn(Val_RnIn),
    .Val_RnOut(Val_RnOut),
    .shiftOperandIn(shiftOperandIn),
    .shiftOperandOut(shiftOperandOut),
    .IIn(IIn),
    .IOut(IOut),
    .Imm24In(Imm24In),
    .Imm24Out(Imm24Out),
    .DestIn(DestIn),
    .DestOut(DestOut),
    .statusIn(statusIn),
    .statusOut(statusOut),
    .src1In(src1In),
    .src1Out(src1Out),
    .src2In(src2In),
    .src2Out(src2Out)
  );
endmodule
