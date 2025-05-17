`timescale 1 ps / 1 ps

module tb_design_EX_wrapper;

  // Inputs
  reg clk_0;
  reg rst_0;

  // Output
  wire [31:0] ALU_ResOut_0;

  // Instantiate the Unit Under Test (UUT)
  design_EX_wrapper uut (
    .ALU_ResOut_0(ALU_ResOut_0),
    .clk_0(clk_0),
    .rst_0(rst_0)
  );

  // Clock generation
  always #5 clk_0 = ~clk_0;  // 100MHz clock

  initial begin
    // Initialize Inputs
    clk_0 = 0;
    rst_0 = 1;

    // Wait for global reset
    #20;
    rst_0 = 0;

    // Add your stimulus here
    // ?? ??? ?? ????? ????? ???? ??? ???? ????? ?????? ? ????? ?? ????? ????? ?????

    #1000; // Wait some time to observe output

    $finish;
  end

endmodule
