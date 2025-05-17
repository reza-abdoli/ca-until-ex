//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sat May 17 12:03:58 2025
//Host        : LAPTOP-CENKQ72F running 64-bit major release  (build 9200)
//Command     : generate_target design_MEM_wrapper.bd
//Design      : design_MEM_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_MEM_wrapper
   (DataMemoryOut_0,
    clk_0,
    rst_0);
  output [31:0]DataMemoryOut_0;
  input clk_0;
  input rst_0;

  wire [31:0]DataMemoryOut_0;
  wire clk_0;
  wire rst_0;

  design_MEM design_MEM_i
       (.DataMemoryOut_0(DataMemoryOut_0),
        .clk_0(clk_0),
        .rst_0(rst_0));
endmodule
