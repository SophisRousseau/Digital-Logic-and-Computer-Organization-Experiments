`timescale 1ns / 1ps

module Lab06_tb;

// Inputs
reg CLK100MHZ;
reg [15:0] SW;
reg [4:0] BTN;

// Outputs
wire [15:0] LED;
wire [7:0] AN;
wire [7:0] F;
wire [7:0]shift;

// Instantiate the design under test
Lab06 uut(
  .CLK100MHZ(CLK100MHZ),
  .SW(SW),
  .BTN(BTN),
  .LED(LED),
  .AN(AN),
  .F(F),
  .shift(shift)
);

// Clock generation
initial begin
  CLK100MHZ =0;
  SW=3;
  forever
    #5 CLK100MHZ=~CLK100MHZ;
end

initial begin
    BTN=0;
  forever
    #10 BTN[1]=~BTN[1];
end

// Testbench stimulus
initial begin
//  BTN = 5'b11111; // Set all buttons to 1
//  SW = 16'h1234;  // Set switches to some value

  #10 BTN[0] = 1;  // Press
  #1 BTN[0] = 0;  // Press
end

endmodule
