module RegsIfId(
    input clk, rst,
    input freeze, flush,
    input [31:0] pcIn, instructionIn,
    output reg [31:0] pcOut, instructionOut
);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        pcOut <= 32'b0;
        instructionOut <= 32'b0;
    end else if (flush) begin
        pcOut <= 32'b0;
        instructionOut <= 32'b0;
    end else if (!freeze) begin
        pcOut <= pcIn;
        instructionOut <= instructionIn;
    end
end

endmodule
