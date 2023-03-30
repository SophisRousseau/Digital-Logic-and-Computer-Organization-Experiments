// Define timescale for the module
`timescale 1ns / 1ps

// Define the module and its ports
module Lab06(
    input CLK100MHZ, // 100 MHz input clock
    input [15:0] SW, // 16-bit input switch
    input [4:0] BTN, // 5-bit input button
    output [15:0] LED, // 16-bit output LED
    output [7:0] AN, // 8-bit output 7-segment anode
    output [7:0] F // 8-bit output 7-segment cathode
);

// Generate a clock signal at 1000 Hz from the input clock signal
wire CLK1000HZ;
Divider divider(CLK100MHZ, 100000, CLK1000HZ);

wire [4:0] btn;

Debounce5 debounce5(BTN[4:0], CLK100MHZ, 0, btn[4:0]);
 
// Declare an 8-bit shift register
reg [7:0] shift_reg;

// Process block triggered on the rising edge of btn[1] or btn[0]
always @(posedge btn[1]) begin
  if(SW[8]) begin       // When btn[0] is pressed
    shift_reg <= SW[7:0];  // Load the shift register with the value of the switches
  end 
  else if(btn[1]) begin         // When btn[1] is pressed
    shift_reg[6:0] <= shift_reg[7:1];   // Shift the bits to the right
    shift_reg[7] <= shift_reg[4] ^ shift_reg[3] ^ shift_reg[2] ^ shift_reg[0];   // Generate the new bit
//    if(shift_reg == 8'b00000000) begin // special case for all zeroes
//      shift_reg <= 8'b00000001;   // If the shift register contains all zeroes, set it to 1
//    end
  end
end

// Declare wires for the first and second digits of the shift register
wire [7:0] F1;
wire [7:0] F2;

// Instantiate two Bcd7seg modules for each digit of the shift register
Bcd7seg bcd7seg3(shift_reg % 16, F1);  // F1 is the cathode of the first digit
Bcd7seg bcd7seg4(shift_reg / 16, F2);  // F2 is the cathode of the second digit

// Instantiate the SelectLed module to select the digit to display on the 7-segment LED
SelectLed selectLed(CLK1000HZ, F1, F2, F ,AN);

initial begin
    shift_reg=0;
end
endmodule
