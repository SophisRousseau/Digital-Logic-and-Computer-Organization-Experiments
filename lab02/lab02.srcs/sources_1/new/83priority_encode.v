`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/14 12:59:58
// Design Name: 
// Module Name: 83priority_encode
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

module priority_encode(
	input  [7:0] X,
	input  en,
	output reg valid,
	output reg [2:0] Y,
	output [7:0] F,
	output [7:0] AN
	);

    integer i;

    assign AN = 8'b11111110;

    always @(*) begin
        Y = 0;
        valid = 1'b0;
        if (en) begin
            for(i = 0; i < 8; i = i + 1) begin
                if(X[i] == 1) begin
                    Y = i;
                    valid = 1'b1;
                end
            end
        end
    end

    bcd7seg seg({~valid, Y}, F);

endmodule


module bcd7seg(
	 input  [3:0] b,
	 output reg [7:0] h
	 );

    //add your code here

    always @(*) begin
        case(b)
            0:h=8'b10000001;
            1:h=8'b11110011;
            2:h=8'b01001001;
            3:h=8'b01100001;
            4:h=8'b00110011;
            5:h=8'b00100101;
            6:h=8'b00000101;
            7:h=8'b11110001;
            default:h=8'b11111111;
	    endcase
	end

endmodule
