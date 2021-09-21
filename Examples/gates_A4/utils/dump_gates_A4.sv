module dump();
	initial begin
	    $dumpfile ("gates_A4.vcd");
	    $dumpvars (0, gates_A4);
	    #1;
	end
endmodule
	
