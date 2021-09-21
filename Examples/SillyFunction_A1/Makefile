# COCOTB variables
export COCOTB_REDUCED_LOG_FMT=1
export PYTHONPATH := test:$(PYTHONPATH)

SillyFunction_A1:
	rm -rf bin/
	mkdir bin
	iverilog -o bin/SillyFunction_A1.vvp -s SillyFunction_A1 -s dump -g2012 src/SillyFunction_A1.sv utils/dump_SillyFunction_A1.sv
	PYTHONOPTIMIZE=${NOASSERT} MODULE=test_SillyFunction_A1 vvp -M $$(cocotb-config --prefix)/cocotb/libs -m libcocotbvpi_icarus  bin/SillyFunction_A1.vvp
	! grep failure results.xml

show_graph:
	gtkwave SillyFunction_A1.vcd

synth:
	yosys -p "read_verilog -sv src/SillyFunction_A1.sv; proc; opt; show -colors 2 -width -signed"

clean:
	rm -rf bin/
	rm -rf *.vcd
	rm -rf *.xml
	rm -rf __pycache__

.PHONY: clean

	
