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
    input [15:0] SW,
    input [4:0] BTN,
    output [15:0] LED,
    output [7:0] AN,
    output [7:0] F
);

wire [3:0] btn;

Debounce4 debounce4(BTN[3:0], CLK100MHZ, BTN[4], btn);

wire CLK1HZ;
wire CLK1000HZ;

Divider divider1(CLK100MHZ, 100000000, CLK1HZ);
Divider divider2(CLK100MHZ, 100000, CLK1000HZ);

wire [5:0] Q;

Counter counter(CLK1HZ, btn[1], btn[0], 60, Q, LED[0]);

wire [7:0] F1;
wire [7:0] F2;

bcd7seg bcd7seg1(Q%10, F1);
bcd7seg bcd7seg2(Q/10, F2);

SelectSeg selectSeg(CLK1000HZ, F1, F2, F, AN);

endmodule
