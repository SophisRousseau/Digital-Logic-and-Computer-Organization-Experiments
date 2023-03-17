`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/14 20:10:13
// Design Name: 
// Module Name: select_seg
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


module SelectSeg(
    input select,
    input [7:0] F1,
    input [7:0] F2,
    output reg [7:0] F,
    output reg [7:0] AN
    );
    
    always @(select) begin
        case(select)
            1'b0:begin AN <= 8'b11111110; F <= F1; end
            1'b1:begin AN <= 8'b11111101; F <= F2; end
        endcase
    end 
endmodule
