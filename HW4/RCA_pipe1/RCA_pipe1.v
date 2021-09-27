//This is the module for RCA_pipe1 
module RCA_pipe1(F, A, B, C, D, clk);
input [3:0] A, B, C, D;
input clk;                    
output [3:0] F;

 
reg [15:0] L12_x1, L12_x2, L12_D, L23_x3, L23_D, L34_F;
 
assign  F = L34_F;

// 1st stage
always @(posedge clk)
   begin
      L12_x1  <= #4 A + B;
      L12_x2  <=  #4 C - D;
      L12_D   <= D;
   end

   
 // 2nd stage
always @(posedge clk)
   begin
      L23_x3     <=  #4 L12_x1 + L12_x2;
      L23_D  <=  #2 L12_D;
   end

// 3rd stage
always @(posedge clk)
   begin
     L34_F <=  #6 L23_x3 * L23_D;
   end

endmodule
