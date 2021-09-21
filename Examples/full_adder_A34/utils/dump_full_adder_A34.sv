module dump();
	initial begin
	    $dumpfile ("full_adder_A34.vcd");
	    $dumpvars (0, full_adder_A34);
	    #1;
	end
endmodule
	
