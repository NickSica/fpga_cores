vivado = vivado -mode batch -source
script = compile.tcl
tb_script = waveform.tcl
constr = ./V707/constraints.xdc

VLOG_SRC_FILES = LRU.sv \
		 LRU_tb.sv \
		 xilinx_extern/RAM.v 

.PHONY: build clean

build:
	$(vivado) $(script) -tclargs $(constr)

test:
	vlog -sv $(VLOG_SRC_FILES)
	vsim LRU_tb

clean: 
	-rm -r build
	-rm vivado*
	-rm webtalk*
	-rm x*

