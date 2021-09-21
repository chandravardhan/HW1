module dump();
	initial begin
	    $dumpfile ("History_FSM_A38.vcd");
	    $dumpvars (0, History_FSM_A38);
	    #1;
	end
endmodule
	
