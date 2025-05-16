module IF ( input clk , rst, branchTaken, freeze,
            input[31:0] branchAddress,
            output [31:0] PC, instruction);

    wire [31:0] PCIn, PCOut;

//    Mux2to1 mux (branchTaken, PC, branchAddress, PCIn);
    Mux2to1 #(32) muxPC(  // For updating PC value to branch address if branch is taken
        .a(PC), .b(branchAddress), .s(branchTaken), .out(PCIn)
    ); 
    
    ProgramCounter programCounter(PCIn , PCOut, freeze, rst, clk);
//    assign PC = PCOut;
//    ProgramCounter programCounter(PCOut, PC);    
    Adder adder(32'd4, PCOut, PC);
    InstructionMemory instructionMem(PCOut, instruction);

endmodule