module RCA_pipe1_testbench;
    wire [3:0] F;
    reg [3:0] A, B, C, D;
    reg clk;
    
       	
 RCA_pipe1 pipe2(F, A, B, C, D, clk);
    initial clk = 0;
    
    always #10 clk = ~clk;
          
   initial
        begin
           #5  A = 3;  B = 5;  C = 3;  D = 0;   
           #20 A = 3;  B = 8;  C = 3;  D = 2;   
           #20 A = 10; B = 5;  C = 1;  D = 1;     
           #20 A = 7;  B = 3;  C = 8;  D = 4;    
           #20 A = 10; B = 5;  C = 5;  D = 1;    
           #20 A = 12; B = 13; C = 5;  D = 3;   
           #20 A = 10; B = 13; C = 30; D = 1;  
           #20 A = 12; B = 13; C = 2;  D = 4;     
        end
        
      initial
         begin
           $dumpfile ("RCA_pipe1_testbench.vcd");
           $dumpvars (0, RCA_pipe1_testbench);
           $monitor ("Time: %d, F = %d", F);
            #300 $finish;
         end
endmodule
