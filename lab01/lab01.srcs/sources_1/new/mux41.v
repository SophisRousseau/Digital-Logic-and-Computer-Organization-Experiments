`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/14 11:43:54
// Design Name: 
// Module Name: mux41
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
 module mux41(
	input [1:0] X0,
	input [1:0] X1,
	input [1:0] X2,
	input [1:0] X3,
	input [1:0] Y,
	output [1:0] F
	);

//add your code here

assign F[0]=(~Y[0]&~Y[1]&X0[0])|(Y[0]&~Y[1]&X1[0])|(~Y[0]&Y[1]&X2[0])|(Y[0]&Y[1]&X3[0]);
assign F[1]=(~Y[0]&~Y[1]&X0[1])|(Y[0]&~Y[1]&X1[1])|(~Y[0]&Y[1]&X2[1])|(Y[0]&Y[1]&X3[1]);

endmodule
