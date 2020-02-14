MODELSIM_INI_ROOT=~/fpga_cores/common
#include ~/fpga_cores/common/sim/common.src.mak
include ~/fpga_cores/approx_multiplier/src/approx_multiplier.src.mak
include ~/fpga_cores/approx_multiplier/sim/approx_multiplier.src.mak

.PHONY: build clean

build:
	vlog -L unisims_ver -sv $(VLOG_SRC_FILES)
	vsim -L unisims_ver -do wave.do +nowarn3691 approx_multiplier_4x4_tb 

clean: 
	-rm -r build
	-rm vivado*
	-rm webtalk*
	-rm x*

