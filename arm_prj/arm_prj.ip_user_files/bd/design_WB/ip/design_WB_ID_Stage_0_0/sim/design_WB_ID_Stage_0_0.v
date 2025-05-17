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


// IP VLNV: xilinx.com:module_ref:ID_Stage:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_WB_ID_Stage_0_0 (
  clk,
  rst,
  instructionIn,
  WB_ENIn,
  WB_DestIn,
  WB_ValueIn,
  HazardIn,
  statusIn,
  Val_RnOut,
  Val_RmOut,
  TwoSrcOut,
  SOut,
  BOut,
  EXE_CMDOut,
  MEM_W_ENOut,
  MEM_R_ENOut,
  DestOut,
  IOut,
  shiftOperandOut,
  WB_ENOut,
  Imm24Out,
  src1Out,
  src2Out
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_WB_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire [0 : 0] clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire [0 : 0] rst;
input wire [31 : 0] instructionIn;
input wire [0 : 0] WB_ENIn;
input wire [3 : 0] WB_DestIn;
input wire [31 : 0] WB_ValueIn;
input wire [0 : 0] HazardIn;
input wire [3 : 0] statusIn;
output wire [31 : 0] Val_RnOut;
output wire [31 : 0] Val_RmOut;
output wire [0 : 0] TwoSrcOut;
output wire [0 : 0] SOut;
output wire [0 : 0] BOut;
output wire [3 : 0] EXE_CMDOut;
output wire [0 : 0] MEM_W_ENOut;
output wire [0 : 0] MEM_R_ENOut;
output wire [3 : 0] DestOut;
output wire [0 : 0] IOut;
output wire [11 : 0] shiftOperandOut;
output wire [0 : 0] WB_ENOut;
output wire [23 : 0] Imm24Out;
output wire [3 : 0] src1Out;
output wire [3 : 0] src2Out;

  ID_Stage #(
    .N(32)
  ) inst (
    .clk(clk),
    .rst(rst),
    .instructionIn(instructionIn),
    .WB_ENIn(WB_ENIn),
    .WB_DestIn(WB_DestIn),
    .WB_ValueIn(WB_ValueIn),
    .HazardIn(HazardIn),
    .statusIn(statusIn),
    .Val_RnOut(Val_RnOut),
    .Val_RmOut(Val_RmOut),
    .TwoSrcOut(TwoSrcOut),
    .SOut(SOut),
    .BOut(BOut),
    .EXE_CMDOut(EXE_CMDOut),
    .MEM_W_ENOut(MEM_W_ENOut),
    .MEM_R_ENOut(MEM_R_ENOut),
    .DestOut(DestOut),
    .IOut(IOut),
    .shiftOperandOut(shiftOperandOut),
    .WB_ENOut(WB_ENOut),
    .Imm24Out(Imm24Out),
    .src1Out(src1Out),
    .src2Out(src2Out)
  );
endmodule
