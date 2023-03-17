`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/14 19:24:39
// Design Name: 
// Module Name: counter_test
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


module Timer(
    input CLK100MHZ,
    input en,
    input rst,
    output rco,
    output [7:0] F,
    output [7:0] AN
);
    
wire CLK1HZ;
wire CLK1000HZ;

Divider divider1(CLK100MHZ, 100000000, CLK1HZ);
Divider divider2(CLK100MHZ, 100000, CLK1000HZ);

wire [5:0] Q;

Counter counter(CLK1HZ, en, rst, 60, Q, rco);

wire [7:0] F1;
wire [7:0] F2;

bcd7seg bcd7seg1(Q%10, F1);
bcd7seg bcd7seg2(Q/10, F2);

SelectSeg selectSeg(CLK1000HZ, F1, F2, F, AN);

endmodule
