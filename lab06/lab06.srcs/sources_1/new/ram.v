`timescale 1ns / 1ps

ram()


blk_mem_gen_0 myram(
    .addra(SW[15:12]), 
    .clka(clk), 
    .dina({8'h0,SW[7:0]}), 
    .douta(LED[15:0]), 
    .ena(1'b1),
    .wea(SW[11:10])
);

endmodule