`timescale 1ns / 1ns
module KSA_tb;
  reg [3:0] a, b;
  reg c_in;
  wire [4:0] sum;
  KSA ksa1(a, b, c_in, sum);
           
    initial
        begin
            $dumpfile ("KSA_tb.vcd");
            $dumpvars (0, KSA_tb);
            #0 a = 4'b0;
            #0 b = 4'b0;
            #0 c_in = 1'b0;
            
            #10 a = 4'b1;
            #10 b = 4'b0;
            #10 c_in = 1'b0;
            
            #20 a = 4'b0;
            #20 b = 4'b1;
            #20 c_in = 1'b0;
            
            #100 $finish ;
        end
        always #2 a = a + 2'b110;
	always #2 b = b + 3'b100;
endmodule
