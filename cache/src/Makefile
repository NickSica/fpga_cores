vivado = vivado -mode batch -source
script = compile.tcl
tb_script = waveform.tcl
constr = ./V707/constraints.xdc


VLOG_LRU_SRC_FILES = cache_pkg.pkg.sv \
		     lru_replacement.sv \
		     lru_tb.sv

VLOG_SRC_FILES = cache_pkg.pkg.sv \
		 lru_replacement.sv \
		 data_cache.sv \
		 data_cache_tb.sv

.PHONY: build clean

build:
	$(vivado) $(script) -tclargs $(constr)

test:
	vlog -sv $(VLOG_SRC_FILES)
	vsim -do cache_wave.do -do "run 30ns" data_cache_tb

lru:
	vlog -sv $(VLOG_LRU_SRC_FILES)
	vsim lru_tb

clean: 
	-rm -r build
	-rm vivado*
	-rm webtalk*
	-rm x*
