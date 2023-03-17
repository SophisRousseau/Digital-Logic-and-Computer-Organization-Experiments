`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/15 16:34:16
// Design Name: 
// Module Name: Clock
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



//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================


//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module exp4_2_board(

	//////////// CLOCK //////////
	input 		          		CLOCK_50,

	//////////// KEY //////////
	input 		     [3:0]		KEY,

	//////////// SW //////////
	input 		     [9:0]		SW,

	//////////// LED //////////
	output		     [9:0]		LEDR,

	//////////// Seg7 //////////
	output		     [6:0]		HEX0,
	output		     [6:0]		HEX1,
	output		     [6:0]		HEX2,
	output		     [6:0]		HEX3,
	output		     [6:0]		HEX4,
	output		     [6:0]		HEX5
);



//=======================================================
//  REG/WIRE declarations
//=======================================================
wire [3:0]a;
wire [3:0]b;
wire [3:0]c;
wire [3:0]d;
wire [3:0]e;
wire [3:0]f;
mux3_1 m(
  SW[9:8],//ѡ���
  CLOCK_50,
  KEY[3:0],
  SW[0],//ʹ�ܶ�
  SW[1],//����λ
  
  
  LEDR[0],
  a,
  b,
  c,
  d,
  e,
  f
);
bcd7seg b1(a,HEX0);
bcd7seg b2(b,HEX1);
bcd7seg b3(c,HEX2);
bcd7seg b4(d,HEX3);
bcd7seg b5(e,HEX4);
bcd7seg b6(f,HEX5);


//=======================================================
//  Structural coding
//=======================================================



endmodule