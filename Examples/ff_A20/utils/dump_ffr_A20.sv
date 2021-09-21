module dump();
	initial begin
	    $dumpfile ("ffr_A20.vcd");
	    $dumpvars (0, ffr_A20);
	    #1;
	end
endmodule
	
