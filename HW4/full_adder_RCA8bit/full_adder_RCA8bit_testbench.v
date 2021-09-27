
`timescale 1ns/1ps

module full_adder_RCA8bit_testbench;
   
   reg [7:0] a;
   reg [7:0] b;
   reg cin;
   wire [7:0] s;
   wire cout;
   
full_adder_RCA8bit dut1(s, cout, a, b, cin);
           
   initial
     begin
         $dumpfile ("full_adder_RCA8bit_testbench.vcd");
         $dumpvars (0, full_adder_RCA8bit_testbench);
           
        #0
        a  = 4'd2;
        b  = 4'd3;
        cin = 4'd6;
        
        #10;
        
        a  = 4'd5;
        b   = 4'd4;
        cin = 4'd5;
        
        #15;
        
        a  = 4'd7;
        b  = 4'd5;
        cin = 4'd4;
        
        #50; $stop;
     end
   
endmodule
