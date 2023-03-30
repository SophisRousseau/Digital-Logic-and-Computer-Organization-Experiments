`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/14 20:10:13
// Design Name: 
// Module Name: select_seg
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


module SelectSeg(
    input clk,
    input [1:0] state, 
    input [63:0] out,
    output reg [7:0] F,
    output reg [7:0] AN
);
    
    reg [2:0] select=0;
    
    always @(posedge clk) begin
        case(state) 
        0: begin 
            case(select) 
                0:begin AN <= 8'b11111111; F <= out[7:0]; end
                1:begin AN <= 8'b11111111; F <= out[15:8]; end
                2:begin AN <= 8'b11111011; F <= out[23:16]; end
                3:begin AN <= 8'b11110111; F <= out[31:24]; end
                4:begin AN <= 8'b11101111; F <= out[39:32]; end
                5:begin AN <= 8'b11011111; F <= out[47:40]; end
                6:begin AN <= 8'b10111111; F <= out[55:48]; end
                7:begin AN <= 8'b01111111; F <= out[63:56]; end
            endcase
        end
        1,2: begin 
            case(select)
                0:begin AN <= 8'b11111111; F <= out[7:0]; end
                1:begin AN <= 8'b11111111; F <= out[15:8]; end
                2:begin AN <= 8'b11111111; F <= out[23:16]; end
                3:begin AN <= 8'b11111111; F <= out[31:24]; end
                4:begin AN <= 8'b11101111; F <= out[39:32]; end
                5:begin AN <= 8'b11011111; F <= out[47:40]; end
                6:begin AN <= 8'b10111111; F <= out[55:48]; end
                7:begin AN <= 8'b01111111; F <= out[63:56]; end
            endcase
        end
        3: begin
            case(select)
                0:begin AN <= 8'b11111110; F <= out[7:0]; end
                1:begin AN <= 8'b11111101; F <= out[15:8]; end
                2:begin AN <= 8'b11111011; F <= out[23:16]; end
                3:begin AN <= 8'b11110111; F <= out[31:24]; end
                4:begin AN <= 8'b11101111; F <= out[39:32]; end
                5:begin AN <= 8'b11011111; F <= out[47:40]; end
                6:begin AN <= 8'b10111111; F <= out[55:48]; end
                7:begin AN <= 8'b01111111; F <= out[63:56]; end
                endcase
        end
        endcase
        select<=select+1;
    end 

initial begin
    F=0;
    AN=8'b11111111;
end

endmodule
