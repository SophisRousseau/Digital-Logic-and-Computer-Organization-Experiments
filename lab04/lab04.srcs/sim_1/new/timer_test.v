`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/14 19:24:39
// Design Name: 
// Module Name: counter_test
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


module Counter_test();
    
    reg clk;
    reg en;
    reg rst;
    wire [5:0] Q;
    wire rco;
    
Counter counter(
    .clk(clk),
    .en(en),
    .rst(rst),
    .cnt_limit(60),
    .Q(Q),
    .rco(rco)
);

initial begin
    rst = 1;
    en = 1;
    clk = 0;
    forever
        #5 clk=~clk;
end

endmodule
