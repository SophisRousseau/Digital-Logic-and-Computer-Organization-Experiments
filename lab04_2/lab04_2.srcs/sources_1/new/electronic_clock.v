`timescale 1ns / 1ps

module ElectronicClock(
    input CLK100MHZ,
    input [15:0] SW,
    input [4:0] BTN,
    output [15:0] LED,
    output [7:0] AN,
    output [7:0] F
);
// 在Nexys A7-100 开发板上实现一个电子时钟，时钟要求能够显示时、分、 秒；还可以有以下功能：调整时间；闹铃（在特定时间 LED闪烁）；秒表（提
// 供百分之一秒精度，可以停止重启）等。
// if `mode` is 0, then display time (Q1,Q0)
// if `mode` is 1(adjust time), then time display is stopped, and the value of hour and minute can be changed
// if `mode` is 2(set alarm), then the value of hour and minute can be set to have an alarm at that time
// if `mo` is 3(stopwatch), then display the stopwatch time

    wire [1:0] state;
    
    wire [31:0] hour_count;
    wire [31:0] minute_count;
    wire [31:0] second_count;
    
    wire [31:0] stopwatch_count;
    
    wire [31:0] hour_alarm=0;
    wire [31:0] minute_alarm=0;
    
    wire CLK1HZ;
    wire CLK100HZ;
    wire CLK10000HZ;
    
    Divider divider1(CLK100MHZ, 100000000, CLK1HZ);
    Divider divider2(CLK100MHZ, 1000000, CLK100HZ);
    Divider divider3(CLK100MHZ, 10000, CLK10000HZ);
    
    wire rco[3:0];
    
    wire [4:0] btn;
    
    Debounce5 debounce5(BTN[4:0], CLK100MHZ, 0, btn[4:0]);
    
    Counter second_counter(CLK1HZ, 0, state, 1, 0, 60, second_count, rco[0]);
    Counter minute_counter(rco[0], 0, state, 1, 0, 60, minute_count, rco[1]);
    Counter hour_counter(rco[1], 0, state, 1, 0, 24, hour_count, rco[2]);
    
    Counter stopwatch_counter(CLK100HZ, 3, state, btn[1], btn[0], 24*60*60*100, stopwatch_count, rco[3]);
    
    wire [7:0]out[7:0];
    
    reg [3:0]in[7:0];
    
    assign state = SW[1:0];
    
    assign LED[0] = hour_alarm==hour_count && minute_alarm==minute_count;
    
    
    Alarm alarm(BTN[4:0], state, hour_count, minute_count, hour_alarm, minute_alarm);
    
    always @(*) begin
        case(state)
            0,1: begin
                in[0] <= 0;
                in[1] <= 0;
                in[2] <= second_count%10;
                in[3] <= second_count/10;
                in[4] <= minute_count%10;
                in[5] <= minute_count/10;
                in[6] <= hour_count%10;
                in[7] <= hour_count/10;
            end
            2: begin
                in[0] <= 0;
                in[1] <= 0;
                in[2] <= 0;
                in[3] <= 0;
                in[4] <= minute_alarm%10;
                in[5] <= minute_alarm/10;
                in[6] <= hour_alarm%10;
                in[7] <= hour_alarm/10;
            end     
            3: begin
                in[0] = (stopwatch_count%100)%10;
                in[1] = (stopwatch_count%100)/10;
                in[2] = ((stopwatch_count/100)%60)%10;
                in[3] = ((stopwatch_count/100)%60)/10;
                in[4] = (((stopwatch_count/100)/60)%60)%10;
                in[5] = (((stopwatch_count/100)/60)%60)/10;
                in[6] = ((((stopwatch_count/100)/60)/60)%24)%10;
                in[7] = ((((stopwatch_count/100)/60)/60)%24)/10;
            end
        endcase
    end
     
    Bcd7seg bcd7seg0(in[0], out[0]);
    Bcd7seg bcd7seg1(in[1], out[1]);
    Bcd7seg bcd7seg2(in[2], out[2]);
    Bcd7seg bcd7seg3(in[3], out[3]);
    Bcd7seg bcd7seg4(in[4], out[4]);
    Bcd7seg bcd7seg5(in[5], out[5]);
    Bcd7seg bcd7seg6(in[6], out[6]);
    Bcd7seg bcd7seg7(in[7], out[7]);
    
    SelectSeg selecSeg(CLK10000HZ, state, {out[7],out[6],out[5],out[4],out[3],out[2],out[1],out[0]}, F, AN);

    
endmodule
