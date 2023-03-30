`timescale 1ns / 1ps

module SelectLed(
    input state,
    input [7:0] F1,
    input [7:0] F2,
    input [7:0] F3,
    input [7:0] F4,
    output reg [7:0] F,
    output reg [7:0] AN
    );
    
    reg [1:0] i = 0;
    
//    always @(state) begin
//        case(state)
//            0:begin AN <= 8'b11111110; F <= F1; end
//            1:begin AN <= 8'b11111101; F <= F2; end
////            2:begin AN <= 8'b11111011; F <= F3; end
////            3:begin AN <= 8'b11110111; F <= F4; end
//        endcase
//    end 

  always @(posedge state) begin
        i <= (i + 1) % 4;
        case(i)
            0:begin AN <= 8'b11111110; F <= F1; end
            1:begin AN <= 8'b11111101; F <= F2; end
            2:begin AN <= 8'b11111011; F <= F3; end
            3:begin AN <= 8'b11110111; F <= F4; end
        endcase
    end 
    
endmodule
