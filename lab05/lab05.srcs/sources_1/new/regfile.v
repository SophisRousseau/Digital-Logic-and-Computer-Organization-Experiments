`timescale 1ns / 1ps

 module Regfile(
    input  [3:0] addr,
	input  [7:0] wrdata,
	input  regwr,
	input  wrclk,
	output [7:0] outa
	);
	
	//The regfile
	reg [7:0] regs[15:0];	
	
    // wire ��ʾֱͨ, ��ֻҪ�����б仯, ��������������ط�ӳ; 
    // reg ��ʾһ��Ҫ�д���, ����Żᷴӳ����.
    assign outa = regs[addr];

	always @(wrclk) begin
	   if(wrclk==1) begin
            if(regwr==1) begin
                regs[0]<=0;
                regs[addr]<=wrdata;
            end
        end
    end

initial begin
    $readmemh("D:/Documents/Digital_Logic_Experiments/lab05/regfile.txt", regs, 0, 15);
end

endmodule