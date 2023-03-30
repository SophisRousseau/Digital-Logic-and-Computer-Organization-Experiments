`timescale 1ns / 1ps

module SelectLed(
    input state,
    input [7:0] F1,
    input [7:0] F2,
    output reg [7:0] F,
    output reg [7:0] AN
    );
    
    reg i = 0;

  always @(posedge state) begin
        i <= (i + 1) % 2;
        case(i)
            0:begin AN <= 8'b11111110; F <= F1; end
            1:begin AN <= 8'b11111101; F <= F2; end
        endcase
    end 
    
endmodule
