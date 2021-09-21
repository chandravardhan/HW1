`timescale 1ns/1ps
module example_A20
                      #(parameter w = 4)
                      (input logic clk, reset,
                       input logic [w-1:0] d,
                       output logic [w-1:0] q);
          always_ff @(posedge clk, posedge reset)
          begin
           if (reset == 1) q <= 4'b0;

           else q <= d;
         end
endmodule
	
