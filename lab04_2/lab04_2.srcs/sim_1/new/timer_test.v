`timescale 1ns / 1ps

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

wire [7:0] F1;
wire [7:0] F2;

bcd7seg bcd7seg1(Q%10, F1);
bcd7seg bcd7seg2(Q/10, F2);

initial begin
    rst = 1;
    en = 1;
    clk = 0;
    forever
        #5 clk=~clk;
        
    #30 rst = 0;
    #5 rst = 1;
    #30 en = 0;
    #30 en = 1;
end

endmodule
