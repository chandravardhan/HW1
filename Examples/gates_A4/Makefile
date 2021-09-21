# COCOTB variables
export COCOTB_REDUCED_LOG_FMT=1
export PYTHONPATH := test:$(PYTHONPATH)

gates_A4:
	rm -rf bin/
	mkdir bin
	iverilog -o bin/gates_A4.vvp -s gates_A4 -s dump -g2012 src/gates_A4.sv utils/dump_gates_A4.sv
	PYTHONOPTIMIZE=${NOASSERT} MODULE=test_gates_A4 vvp -M $$(cocotb-config --prefix)/cocotb/libs -m libcocotbvpi_icarus  bin/gates_A4.vvp
	! grep failure results.xml

show_graph:
	gtkwave gates_A4.vcd

synth:
	yosys -p "read_verilog -sv src/gates_A4.sv; proc; opt; show -colors 2 -width -signed"

clean:
	rm -rf bin/
	rm -rf *.vcd
	rm -rf *.xml
	rm -rf __pycache__

.PHONY: clean

	
