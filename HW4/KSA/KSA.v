module KSA #(parameter N=4)
            (input [N-1:0] a,b, 
             input c_in, 
             output [N:0] sum);
  
  reg [N-1:0] p,g,p1,g1,p2,g2,s;
  reg [N-1:0] carry;
  integer i;
   always @(*)
   begin
   
   
   for(i=0;i<N;i=i+1)
   	begin
   	  p[i] <= a[i] ^ b[i];
   	  g[i] <= a[i] & b[i];
   	end  
   
   for(i=0;i<N;i=i+1)
   	if (i == 0) 
   		begin
      		  p1[i] <= p[i];
    		  g1[i] <= g[i]; 
   		end
   	else 
   		begin
     		  p1[i] <= p[i] & p[i-1];
     		  g1[i] <= g[i] || (p[i] & g[i-1]);
   		end
   
   for(i=0;i<N;i=i+1)
   	if (i == 0 )
   		begin
     		  p2[i] <= p1[i];
     		  g2[i] <= g1[i]; 
   		end
   	else 
   	if (i == 1 )
   		begin
     		  p2[i] <= p1[i];
     		  g2[i] <= g1[i]; 
   		end
   	else
   		begin 
   		  p2[i] <= p1[i] & p1[i-2];
   		  g2[i] <= g1[i] || (p1[i] & g1[i-2]);
   		end
   
   for(i=0;i<N;i=i+1)
   	if (i == 0) 
   		begin
   		  s[i] <= p[i] ^ c_in;
   		  carry[i] <= g2[i];
   		end
   	else
   		begin
   		  s[i] <= p[i] ^ carry[i-1];
   		  carry[i] <= g2[i];
   		end
   end
   assign sum = {carry[N-1], s};
endmodule 
