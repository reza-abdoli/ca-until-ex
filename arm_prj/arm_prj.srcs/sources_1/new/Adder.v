module Adder (
    input  [31:0] a,
    input  [31:0] b,
    output [31:0] out
);
    assign out = a + b; // zero-extend b to 32 bits
endmodule
