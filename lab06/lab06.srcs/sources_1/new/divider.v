`timescale 1ns / 1ps

module Divider (   
     input clk,
     input [31:0] clk_freq,
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

initial clk_1s = 0;

endmodule
