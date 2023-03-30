`timescale 1ns / 1ps

module Lab05(
    input CLK100MHZ,
    input [15:0] SW,
    input [4:0] BTN,
    output [15:0] LED,
    output [7:0] AN,
    output [7:0] F
);

wire [4:0] btn;

Debounce5 debounce5(BTN[4:0], CLK100MHZ, 0, btn[4:0]); 

wire [7:0] dout1;
wire [7:0] dout2;
wire CLK1000HZ;
    
Divider divider(CLK100MHZ, 100000, CLK1000HZ);

Regfile regfile(
    SW[3:0], // addr
    SW[7:4], // din
    SW[8], // en
    BTN[0], // clk
    dout1
);

blk_mem_gen_0 myram(
    .addra(SW[3:0]), 
    .clka(BTN[0]), 
    .dina(SW[7:4]),
    .douta(dout2),
    .ena(SW[9]),
    .wea(SW[10])
);

wire [7:0] F1;
wire [7:0] F2;
wire [7:0] F3;
wire [7:0] F4;

Bcd7seg bcd7seg1(dout2[7:4], F4);
Bcd7seg bcd7seg2(dout2[3:0], F3);
Bcd7seg bcd7seg3(dout1[7:4], F2);
Bcd7seg bcd7seg4(dout1[3:0], F1);

SelectLed selectLed(CLK1000HZ,F1,F2,F3,F4,F,AN);

endmodule