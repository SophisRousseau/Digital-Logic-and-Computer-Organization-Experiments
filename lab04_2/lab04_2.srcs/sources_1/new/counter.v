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
	input  [1:0] legal_state,
	input  [1:0] current_state,
	input  en,
	input  rst,
	input  [31:0] cnt_limit,
	output reg [31:0] Q,
	output reg rco
	);
    
    reg run=0;
    
    always @(posedge clk or posedge rst) begin
        if(rst==1) begin
            if(legal_state==current_state) begin
                Q<=0;
                rco<=0;
            end         
        end
        else if(run==1 || legal_state==0) begin
            Q<=(Q+1)%cnt_limit;
            if(Q==cnt_limit-1) rco<=1;
            else rco<=0;
        end
    end
    
    always @(posedge rst or posedge en) begin
        if(legal_state==current_state) begin
            if(rst==1) run<=0;
            else if(en==1) run<=~run;
        end     
    end
      
initial begin
    Q=0;
    rco=0;
end

endmodule
