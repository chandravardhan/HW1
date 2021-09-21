# COCOTB variables
export COCOTB_REDUCED_LOG_FMT=1
export PYTHONPATH := test:$(PYTHONPATH)

ffr_A20:
	rm -rf bin/
	mkdir bin
	iverilog -o bin/ffr_A20.vvp -s ffr_A20 -s dump -g2012 src/ffr_A20.sv utils/dump_ffr_A20.sv
	PYTHONOPTIMIZE=${NOASSERT} MODULE=test_ffr_A20 vvp -M $$(cocotb-config --prefix)/cocotb/libs -m libcocotbvpi_icarus  bin/ffr_A20.vvp
	! grep failure results.xml

show_graph:
	gtkwave ffr_A20.vcd

synth:
	yosys -p "read_verilog -sv src/ffr_A20.sv; proc; opt; show -colors 2 -width -signed"

clean:
	rm -rf bin/
	rm -rf *.vcd
	rm -rf *.xml
	rm -rf __pycache__

.PHONY: clean

	
