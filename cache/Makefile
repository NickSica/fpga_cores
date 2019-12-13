vivado = vivado -mode batch -source
script = compile.tcl
tb_script = waveform.tcl
constr = ./V707/constraints.xdc

VLOG_SRC_FILES = LRU.sv \
		 Cache.sv \
		 Cache_TB.sv

.PHONY: build clean

build:
	$(vivado) $(script) -tclargs $(constr)

test:
	vlog -sv $(VLOG_SRC_FILES)
	vsim Cache_TB

clean: 
	-rm -r build
	-rm vivado*
	-rm webtalk*
	-rm x*

