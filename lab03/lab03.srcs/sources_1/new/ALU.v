`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/14 14:55:10
// Design Name: 
// Module Name: ALU
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


module ALU( input [3:0] A,
			  input [3:0] B,
			  input [2:0] ALUctr,
			  output [7:0] F,
			  output [7:0] AN,
			  output reg cf,
			  output reg zero,
			  output reg of
);

//add your code here

    reg [3:0] temp;
    reg temp_of;
    reg temp_sf;
    reg temp_zf;
    
    reg [3:0] Y;
    
    assign AN = 8'b11111110;
    
    always @(*) begin
        case (ALUctr)
            0: begin
                {cf,Y}=A+B;
                zero=~(|Y);
                of=(A[3]==B[3])&&(A[3]!=Y[3]);
            end
            1: begin
                {cf,Y}=A-B;
                zero=~(|Y);
                of=(A[3]!=B[3])&&(A[3]!=Y[3]);
            end
            2: begin
                Y=~A;
                zero=~(|Y);
                cf=0;
                of=0;
            end
            3: begin
                Y=A&B;
                zero=~(|Y);
                cf=0;
                of=0;
            end
            4: begin
                Y=A|B;
                zero=~(|Y);
                cf=0;
                of=0;
            end
            5: begin
                Y=A^B;
                zero=~(|Y);
                cf=0;
                of=0;
            end
            6: begin
                temp=A-B;
                temp_sf=temp[3];
                temp_of=(A[3]!=B[3])&&(A[3]!=temp[3]);
                temp_zf=~(|temp);
                if ((temp_sf^temp_of)&&~temp_zf) begin
                    Y=4'b0001;
                end
                else begin
                    Y=4'b0000;
                end
                zero=~(|Y);
                cf=0;
                of=0;
            end
            7: begin
                temp=A-B;
                if(|temp) begin
                    Y=4'b0000;
                end
                else begin
                    Y=4'b0001;
                end
                zero=~(|Y);
                cf=0;
                of=0;
            end
        endcase

    end
    
    bcd7seg bdf7seg(
        .b(Y),
        .h(F)
    );
    
endmodule