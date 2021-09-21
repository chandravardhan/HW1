# COCOTB variables
export COCOTB_REDUCED_LOG_FMT=1
export PYTHONPATH := test:$(PYTHONPATH)

History_FSM_A38:
	rm -rf bin/
	mkdir bin
	iverilog -o bin/History_FSM_A38.vvp -s History_FSM_A38 -s dump -g2012 src/History_FSM_A38.sv utils/dump_History_FSM_A38.sv
	PYTHONOPTIMIZE=${NOASSERT} MODULE=test_History_FSM_A38 vvp -M $$(cocotb-config --prefix)/cocotb/libs -m libcocotbvpi_icarus  bin/History_FSM_A38.vvp
	! grep failure results.xml

show_graph:
	gtkwave History_FSM_A38.vcd

synth:
	yosys -p "read_verilog -sv src/History_FSM_A38.sv; proc; opt; show -colors 2 -width -signed"

clean:
	rm -rf bin/
	rm -rf *.vcd
	rm -rf *.xml
	rm -rf __pycache__

.PHONY: clean

	
