`timescale 1 ps / 1 ps

module tb_design_MEM_wrapper;

  // ?????????? ?????
  reg clk_0;
  reg rst_0;
  reg [31:0] branchAddress_0 = 32'd0;
  reg branchTaken_0 = 0;
  reg freeze_0 = 0;
  reg freeze_1 = 0;

  // ?????????? ?????
  wire [31:0] DataMemoryOut_0;
  wire [0:0] MEM_ReadyOut_0;
  wire [17:0] SRAM_ADDROut_0;
  wire [17:0] SRAM_CE_NOut_0;
  wire [17:0] SRAM_LB_NOut_0;
  wire [17:0] SRAM_OE_NOut_0;
  wire [17:0] SRAM_UB_NOut_0;
  wire [17:0] SRAM_WE_NOut_0;

  // ?????? inout (???? SRAM)
  wire [15:0] SRAM_DQInOut_0;

  // ?????????? ?? ????? ???? ???
  design_MEM_wrapper uut (
    .clk_0(clk_0),
    .rst_0(rst_0),
    .branchAddress_0(branchAddress_0),
    .branchTaken_0(branchTaken_0),
    .freeze_0(freeze_0),
    .freeze_1(freeze_1),
    .DataMemoryOut_0(DataMemoryOut_0),
    .MEM_ReadyOut_0(MEM_ReadyOut_0),
    .SRAM_ADDROut_0(SRAM_ADDROut_0),
    .SRAM_CE_NOut_0(SRAM_CE_NOut_0),
    .SRAM_DQInOut_0(SRAM_DQInOut_0),
    .SRAM_LB_NOut_0(SRAM_LB_NOut_0),
    .SRAM_OE_NOut_0(SRAM_OE_NOut_0),
    .SRAM_UB_NOut_0(SRAM_UB_NOut_0),
    .SRAM_WE_NOut_0(SRAM_WE_NOut_0)
  );

  // ????? ???? 100MHz
  initial clk_0 = 0;
  always #5 clk_0 = ~clk_0;

  // ?????? ???
  initial begin
    // ????? ???: ????? ????
    rst_0 = 1;
    #20;
    rst_0 = 0;

    // ????? ????? ?????????
    #1000;

    // ????? ???
    $finish;
  end

endmodule
