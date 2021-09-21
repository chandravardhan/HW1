module dump();
	initial begin
	    $dumpfile ("full_adder_A8.vcd");
	    $dumpvars (0, full_adder_A8);
	    #1;
	end
endmodule
	
