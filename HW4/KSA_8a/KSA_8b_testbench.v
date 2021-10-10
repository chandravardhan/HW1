module KSA_8b_testbench;
reg [3:0] t_a,t_b;
reg t_cin;
wire [3:0] t_S;

initial begin $dumpfile("dump.vcd"); $dumpvars(0, KSA_8b_testbench); end
KSA_8b pra (.a(t_a), .b(t_b), .cin(t_cin), .S(t_S));
initial
begin
        #0
	t_a [3:0] = 4'b0000; 
	t_b [3:0] = 4'b0100;
	t_cin = 1'b0;
	
	#5
	t_a [3:0] = 4'b0110; 
	t_b [3:0] = 4'b0001; 
	t_cin = 1'b0;
	
	#10
	t_a [3:0] = 4'b0100; 
	t_b [3:0] = 4'b1011;
	t_cin = 1'b0;
	
	#15
	t_a [3:0] = 4'b0010;
	t_b [4:0] = 4'b1111;
	t_cin = 1'b0;
	
end
endmodule
