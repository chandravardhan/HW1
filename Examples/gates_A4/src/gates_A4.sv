`timescale 1ns/1ps
module gates_A4
       #(parameter q = 2)
       (input logic [q-1:0] a, b,
       output logic [q-1:0] y1, y2, y3, y4, y5);

       /* five different two_input logic
       * gates acting on #-bit busses*/
       assign y1 = a & b;    //AND
       assign y2 = a | b;   //OR
       assign y3 = a ^ b;  //XOR
       assign y4 = ~(a & b);  //NAND
       assign y5 = ~(a | b); //NOR

endmodule
	
