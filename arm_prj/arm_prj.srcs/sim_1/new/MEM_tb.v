`timescale 1 ps / 1 ps

module tb_design_MEM_wrapper;

  // Inputs
  reg clk_0;
  reg rst_0;

  // Output
  wire [31:0] DataMemoryOut_0;

  // Instantiate the Unit Under Test (UUT)
  design_MEM_wrapper uut (
    .DataMemoryOut_0(DataMemoryOut_0),
    .clk_0(clk_0),
    .rst_0(rst_0)
  );

  // Clock generation: Toggle every 5ns ? 100MHz clock
  always #5 clk_0 = ~clk_0;

  initial begin
    // Initialize Inputs
    clk_0 = 0;
    rst_0 = 1;

    // Hold reset high for a few cycles
    #20;
    rst_0 = 0;

    // Optional: Add stimulus here if needed
    // ?? ??? ????? ????? `design_MEM` ???? ????? ????? ??????

    #2000; // ???? ???? ???? ???? ?????

    $display("DataMemoryOut_0 = %h", DataMemoryOut_0);
    $finish;
  end

endmodule
