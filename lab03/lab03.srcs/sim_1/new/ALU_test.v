`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/14 14:55:36
// Design Name: 
// Module Name: ALU_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU_test();

reg [3:0] A;
reg [3:0] B;
reg [2:0] ALUctr;
wire [7:0] F;
wire [7:0] AN;
wire cf;
wire zero;
wire of;

ALU alu(
    .A(A),
    .B(B),
    .ALUctr(ALUctr),
    .F(F),
    .AN(AN),
    .cf(cf),
    .zero(zero),
    .of(of)
);

initial begin

	A=4'b0000; B=4'b0111; ALUctr=3'b000;
#10 A=4'b0000; B=4'b0111; ALUctr=3'b001;
#10 A=4'b1111; B=4'b1000; ALUctr=3'b001;
#10 A=4'b1111; B=4'b0111; ALUctr=3'b001;
#10 A=4'b1000; B=4'b1000; ALUctr=3'b001;
#10 A=4'b1000; B=4'b1000; ALUctr=3'b010;
#10 A=4'b1111; B=4'b0000; ALUctr=3'b010;
#10 A=4'b1111; B=4'b1000; ALUctr=3'b011;
#10 A=4'b0101; B=4'b1010; ALUctr=3'b011;
#10 A=4'b0101; B=4'b1010; ALUctr=3'b100;
#10 A=4'b0100; B=4'b1110; ALUctr=3'b100;
#10 A=4'b0101; B=4'b1010; ALUctr=3'b101;
#10 A=4'b0101; B=4'b1111; ALUctr=3'b101;
#10 A=4'b0101; B=4'b1111; ALUctr=3'b110;
#10 A=4'b1100; B=4'b1111; ALUctr=3'b110;
#10 A=4'b1111; B=4'b1111; ALUctr=3'b110;
#10 A=4'b1000; B=4'b1111; ALUctr=3'b110;
#10 A=4'b0000; B=4'b1111; ALUctr=3'b110;
#10 A=4'b1111; B=4'b1000; ALUctr=3'b110;
#10 A=4'b0111; B=4'b1000; ALUctr=3'b110;
#10 A=4'b0000; B=4'b1000; ALUctr=3'b110;
#10 A=4'b1111; B=4'b0111; ALUctr=3'b110;
#10 A=4'b1000; B=4'b0111; ALUctr=3'b110;
#10 A=4'b0000; B=4'b0000; ALUctr=3'b110;
#10 A=4'b0001; B=4'b0000; ALUctr=3'b110;
#10 A=4'b0111; B=4'b0011; ALUctr=3'b110;
#10 A=4'b0011; B=4'b0001; ALUctr=3'b110;
#10 A=4'b0011; B=4'b0111; ALUctr=3'b110;
#10 A=4'b0011; B=4'b0001; ALUctr=3'b111;
#10 A=4'b0011; B=4'b0011; ALUctr=3'b111;
#10 A=4'b1000; B=4'b1000; ALUctr=3'b111;
#10 A=4'b1000; B=4'b1100; ALUctr=3'b111;

end
	  
endmodule
