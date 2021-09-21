`timescale 1ns/1ps
module full_adder_A34(input logic a, b, c_in,
                      output logic s, c_out);

          logic p, g;
          always_comb
             begin
               p <= a ^ b;     // non-blocking
               g <= a & b;    // non-blocking

               s <= p ^ c_in;
               c_out <= g | (p & c_in);
             end
endmodule

