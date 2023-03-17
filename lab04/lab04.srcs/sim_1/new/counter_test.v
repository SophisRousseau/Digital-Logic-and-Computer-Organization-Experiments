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


module Timer_test(
    input CLK100MHZ
);
    reg rst;
    reg en;
    wire rco;
    wire [7:0] F;
    wire [7:0] AN;
    
Timer timer(CLK100MHZ, en, rst, rco, F, AN);

endmodule
