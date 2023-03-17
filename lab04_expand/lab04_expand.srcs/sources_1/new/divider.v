`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/14 19:25:09
// Design Name: 
// Module Name: divider
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


module Divider (   
     input clk,
     input [32:0] clk_freq,
	 output reg clk_1s
);

    integer count_clk=0;
    
    always @(posedge clk)
        if(count_clk==clk_freq/2-1) begin
            count_clk <= 0;
            clk_1s <= ~clk_1s;
        end
        else
            count_clk <= count_clk + 1;

endmodule
