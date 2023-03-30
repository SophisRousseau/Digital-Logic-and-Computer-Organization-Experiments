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
    
    reg run=0;
    
    always @(posedge clk or posedge rst) begin
        if(rst==1) begin
            Q<=0;
            rco<=0;
        end
        else if(run==1) begin
            Q<=(Q+1)%cnt_limit;
            if(Q==cnt_limit-1) rco<=1;
            else rco<=0;
        end
    end
    
    always @(posedge rst or posedge en) begin
        if(rst==1) run<=0;
        else if(en==1) run<=~run;
    end
      
initial begin
    Q=0;
    rco=0;
end

endmodule
