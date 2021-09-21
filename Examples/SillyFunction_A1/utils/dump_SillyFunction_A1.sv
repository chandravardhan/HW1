module dump();
	initial begin
	    $dumpfile ("SillyFunction_A1.vcd");
	    $dumpvars (0, SillyFunction_A1);
	    #1;
	end
endmodule
	
