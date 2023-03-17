`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/14 18:30:49
// Design Name: 
// Module Name: counter
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


module Counter(
	input  clk,
	input  en,
	input  rst,
	input  [5:0] cnt_limit,
	output reg [5:0] Q,
	output reg rco
	);
    // add your code here
    // always块如果是用非阻塞(<=)是并行执行的；如果是用阻塞(=)是顺序执行的
    
    always @(posedge clk or negedge rst) begin
        if(rst==0) begin
            Q<=0;
            rco<=0;
        end
        else if(en==1) begin
            Q<=(Q+1)%cnt_limit;
            if(Q==cnt_limit-1) rco<=1;
            else rco<=0;
        end
    end
    
endmodule
