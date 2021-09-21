# COCOTB variables
export COCOTB_REDUCED_LOG_FMT=1
export PYTHONPATH := test:$(PYTHONPATH)

full_adder_A34:
	rm -rf bin/
	mkdir bin
	iverilog -o bin/full_adder_A34.vvp -s full_adder_A34 -s dump -g2012 src/full_adder_A34.sv utils/dump_full_adder_A34.sv
	PYTHONOPTIMIZE=${NOASSERT} MODULE=test_full_adder_A34 vvp -M $$(cocotb-config --prefix)/cocotb/libs -m libcocotbvpi_icarus  bin/full_adder_A34.vvp
	! grep failure results.xml

show_graph:
	gtkwave full_adder_A34.vcd

synth:
	yosys -p "read_verilog -sv src/full_adder_A34.sv; proc; opt; show -colors 2 -width -signed"

clean:
	rm -rf bin/
	rm -rf *.vcd
	rm -rf *.xml
	rm -rf __pycache__

.PHONY: clean

	
