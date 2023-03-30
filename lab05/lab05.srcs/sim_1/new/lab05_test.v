`timescale 1ns / 1ps

module Lab05_tb;

    // Inputs
    reg [3:0] addr;
    reg [3:0] din;
    reg en1;
    reg en2;
    reg enwr;
    reg clk;
    reg CLK100MHZ;

    // Outputs
    wire [7:0] F;
    wire [7:0] AN;
    wire [15:0] LED;
    // Instantiate the Unit Under Test (UUT)
    Lab05 uut (
        .CLK100MHZ(CLK100MHZ), 
        .SW({5'b0,enwr,en2,en1,din,addr}),
        .BTN({clk,4'b0}),
        .LED(LED),
        .AN(AN),
        .F(F)
    );
    

    initial begin
        // Initialize inputs
        addr = 4'b0000;
        din = 4'b0000;
        en1 = 1'b0;
        en2 = 1'b0;
        clk = 1'b0;
        enwr = 1'b0;
        CLK100MHZ = 1'b0;

        // Wait for 100 ns for the clock to stabilize
        #100;

        // Enable clock
        clk = 1'b1;

        // Apply input values
        din = 4'b1010;
        en1 = 1'b1;
        addr = 4'b0010;
        en2 = 1'b1;
        enwr = 1'b1;

        // Wait for 100 ns
        #100;

        // Apply new input values
        din = 4'b1100;
        en1 = 1'b1;
        addr = 4'b0010;
        en2 = 1'b0;

        // Wait for 100 ns
        #100;

        // Apply new input values
        din = 4'b0110;
        en1 = 1'b1;
        addr = 4'b0001;
        en2 = 1'b1;

        // Wait for 100 ns
        #100;

        // Apply new input values
        din = 4'b1111;
        en1 = 1'b1;
        addr = 4'b1111;
        en2 = 1'b1;

        // Wait for 100 ns
        #100;

        // Stop clock
        clk = 1'b0;

        // Wait for 100 ns
        #100;
    end

endmodule