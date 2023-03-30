`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/14 15:33:01
// Design Name: 
// Module Name: bcd7seg
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

module Bcd7seg(
	 input  [3:0] b,
	 output reg [7:0] h
	 );

    //add your code here

    always @(*) begin
        case(b)
            4'd0:h=8'b10000001;
            4'd1:h=8'b11110011;
            4'd2:h=8'b01001001;
            4'd3:h=8'b01100001;
            4'd4:h=8'b00110011;
            4'd5:h=8'b00100101;
            4'd6:h=8'b00000101;
            4'd7:h=8'b11110001;
            4'd8:h=8'b00000001;
            4'd9:h=8'b00100001;
            4'd10:h=8'b00010001;
            4'd11:h=8'b00000111;
            4'd12:h=8'b10001101;
            4'd13:h=8'b01000011;
            4'd14:h=8'b00001101;
            4'd15:h=8'b00011101;
	    endcase
	end

initial begin
    h=0;
end

endmodule
