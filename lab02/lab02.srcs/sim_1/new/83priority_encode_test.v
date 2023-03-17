`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/14 13:00:27
// Design Name: 
// Module Name: 83priority_encode_test
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


module priority_encode_test;

reg  [7:0] X;
reg  en;
wire valid;
wire [2:0] Y;
wire [7:0] F;
wire [7:0] AN;

priority_encode priority_encode(
    .X(X),
    .en(en),
    .valid(valid),
    .Y(Y),
    .F(F),
    .AN(AN)
);

initial 
begin

    X=8'b00000000; en=1;
#10 X=8'b00000001;
#10 X=8'b00000011;
#10 X=8'b00000111;  
#10 X=8'b00001111;  
#10 X=8'b00011111;  
#10 X=8'b00111111;  
#10 X=8'b01111111;  
#10 X=8'b11111111;  
#10 en=0;

end

endmodule
