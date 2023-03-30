`timescale 1ns / 1ps

module Debounce5( 
    input wire [4:0] inp, // 4 位宽的输入开关或按键
    input wire clk, // 开发平台的内部时钟，100MHZ，周期 10ns 
    input wire clr, // 复位开关，
    output [4:0] outp 
); // 消抖后的输出
 
    reg [4:0] delay1; // 第一次采样
    reg [4:0] delay2; // 第二次采样
    reg [19:0] count; // 计数器计数约 220≈106次
    reg clk_20ms; // 时钟，周期约 20ms 

    always @ (posedge clk or posedge clr) 
        if (clr) begin //异步复位
            count <= 20'd0; 
            clk_20ms <= 1'b0; 
        end 
    /* 计数器 count 在每个时钟 clk 的上升沿（约 10ns）加 1 计数一次，共计 2
    20次，约 10ms 后清 0，重头计数。*/ 
        else if (count == 20'hfffff) begin 
            clk_20ms <= ~clk_20ms; // clk_20ms 每 10ms 取反一次
            count <= 20'd0; 
        end 
        else count <= count + 1'b1; 
     
    always @ (posedge clk_20ms or posedge clr) 
        if (clr) begin 
            delay1 <= 5'b00000; 
            delay2 <= 5'b00000;
        end 
        else begin 
            delay1 <= inp; 
            delay2 <= delay1; 
        end 
     
    assign outp = delay1 & delay2; 
    
endmodule 