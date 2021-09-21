module dump();
	initial begin
	    $dumpfile ("example_A20.vcd");
	    $dumpvars (0, example_A20);
	    #1;
	end
endmodule
	
