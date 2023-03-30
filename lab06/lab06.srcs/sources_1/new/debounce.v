`timescale 1ns / 1ps

module Debounce5( 
    input wire [4:0] inp, // 4 λ������뿪�ػ򰴼�
    input wire clk, // ����ƽ̨���ڲ�ʱ�ӣ�100MHZ������ 10ns 
    input wire clr, // ��λ���أ�
    output [4:0] outp 
); // ����������
 
    reg [4:0] delay1; // ��һ�β���
    reg [4:0] delay2; // �ڶ��β���
    reg [19:0] count; // ����������Լ 220��106��
    reg clk_20ms; // ʱ�ӣ�����Լ 20ms 

    always @ (posedge clk or posedge clr) 
        if (clr) begin //�첽��λ
            count <= 20'd0; 
            clk_20ms <= 1'b0; 
        end 
    /* ������ count ��ÿ��ʱ�� clk �������أ�Լ 10ns���� 1 ����һ�Σ����� 2
    20�Σ�Լ 10ms ���� 0����ͷ������*/ 
        else if (count == 20'hfffff) begin 
            clk_20ms <= ~clk_20ms; // clk_20ms ÿ 10ms ȡ��һ��
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