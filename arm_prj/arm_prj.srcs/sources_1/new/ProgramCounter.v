module ProgramCounter(
    input  [31:0] pcIn,
    output reg [31:0] pcOut,
    input  freeze,
    input  rst,
    input  clk
);

always @(posedge clk or posedge rst) begin
    if (rst)
        pcOut <= 32'b0;
    else if (!freeze)
        pcOut <= pcIn;
    // else: freeze is active, keep current pcOut
end

endmodule
