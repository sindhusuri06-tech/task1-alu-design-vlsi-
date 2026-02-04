module ALU_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] ALU_Sel;

wire [3:0] ALU_Out;

ALU uut (
    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),
    .ALU_Out(ALU_Out)
);

initial begin

    A = 4'b0011;   // 3
    B = 4'b0001;   // 1

    ALU_Sel = 3'b000; #10; // ADD
    ALU_Sel = 3'b001; #10; // SUB
    ALU_Sel = 3'b010; #10; // AND
    ALU_Sel = 3'b011; #10; // OR
    ALU_Sel = 3'b100; #10; // NOT

    $stop;

end

endmodule
