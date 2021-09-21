`timescale 1ns/1ps
module SillyFunction_A1
                       #(parameter w = 4)
                       (input logic [w-1:0] a, b, c,
                        output logic [w-1:0] y);

       assign y = ~a & ~b & ~c | a & ~b & ~c | a & ~b & c;
endmodule
	
