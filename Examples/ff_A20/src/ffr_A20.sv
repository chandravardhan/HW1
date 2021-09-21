`timescale 1ns/1ps
module ffr_A20
             #(parameter w = 2)
             (input logic clk,
             input logic [w-1:0] d,
             output logic [w-1:0] q);

             always_ff @(posedge clk)
               q <= d;

endmodule
