`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/14 11:48:22
// Design Name: 
// Module Name: mux41_test
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


module mux41_test(); 

reg [1:0] X0;
reg [1:0] X1;
reg [1:0] X2;
reg [1:0] X3;
reg [1:0] Y;
wire [1:0] F; 

mux41 i1 (
    .X0(X0),
	.X1(X1),
	.X2(X2),
	.X3(X3),
	.Y(Y),
	.F(F)
	);
initial 
begin

    X0=0; X1=1; X2=2; X3=3; Y=0;
#10 X0=1; X1=0; X2=2; X3=3; Y=0;
#10 X0=0; X1=1; X2=2; X3=3; Y=1;
#10 X0=0; X1=2; X2=1; X3=3; Y=1;
#10 X0=0; X1=1; X2=2; X3=3; Y=2;
#10 X0=0; X1=1; X2=3; X3=2; Y=2;
#10 X0=0; X1=1; X2=2; X3=3; Y=3;
#10 X0=3; X1=1; X2=2; X3=0; Y=3;

end
endmodule
