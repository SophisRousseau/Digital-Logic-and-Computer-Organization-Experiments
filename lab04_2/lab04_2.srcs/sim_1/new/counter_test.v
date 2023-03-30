`timescale 1ns / 1ps

module Counter_tb();

    // Declare inputs and outputs for the testbench module
    reg clk;
    reg start;
    reg stop;
    reg rst;
    reg [5:0] cnt_limit;
    wire [5:0] Q;
    wire rco;

    // Instantiate the Counter module to be tested
    Counter counter(
        .clk(clk),
        .start(start),
        .stop(stop),
        .rst(rst),
        .cnt_limit(cnt_limit),
        .Q(Q),
        .rco(rco)
    );


    initial begin
        clk=0;
        start=0;
        stop=0;
        rst=0;
        cnt_limit=60;
    
        forever #5 clk=~clk;
    end
    
    initial begin
    // Start the counter at time 20
        #20 start=1;
        #1 start=0;
    end
    
    initial begin
    // Stop the counter at time 60
        #60 stop=1;
        #1 stop=0;
    end
    
    initial begin
    // Restart the counter at time 80
        #80 start=1;
        #1 start=0;
    end
    
    initial begin
    // Reset the counter at time 120
        #120 rst=1;
        #1 rst=0;    
    end
endmodule