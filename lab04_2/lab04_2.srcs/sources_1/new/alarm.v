`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/29 12:55:42
// Design Name: 
// Module Name: Alarm
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


module Alarm(
    input [4:0] btn,
    input [1:0] state,
    output reg [31:0] hour_count,
    output reg [31:0] minute_count,
    output reg [31:0] hour_alarm,
    output reg [31:0] minute_alarm
);
    always @(posedge btn[0] or posedge btn[1]) begin
        case(state)
        1: begin
        
        end
        2: begin
        
            if(btn[1]==1) begin
            
                hour_alarm <= (hour_alarm + 1)%24;
            end
            else if(btn[3]==1)
                hour_alarm <= (hour_alarm - 1)%24;
            else if(btn[2]==1)
                minute_alarm <= (minute_alarm + 1)%60;
            else if(btn[4]==1)
                minute_alarm <= (minute_alarm - 1)%60;
        end
        endcase
    end
endmodule
