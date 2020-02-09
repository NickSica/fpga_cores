/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/secureip
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap secureip /home/nick/fpga_cores/approx_multiplier/sim/secureip
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog -source -32 -work secureip -f /home/nick/fpga_cores/approx_multiplier/sim/./secureip/.cxl.verilog.secureip.secureip.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog -source -32 -sv -svinputport=relaxed -suppress vlog-2583 -work secureip -f /home/nick/fpga_cores/approx_multiplier/sim/./secureip/.cxl.systemverilog.secureip.secureip.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/unisim
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap unisim /home/nick/fpga_cores/approx_multiplier/sim/unisim
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom -source -93 -32 -work unisim -f /home/nick/fpga_cores/approx_multiplier/sim/./unisim/.cxl.vhdl.unisim.unisim.lin64.cmf -f /home/nick/fpga_cores/approx_multiplier/sim/./unisim/.cxl.vhdl.secureip_vhdl_unisim.unisim.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/unimacro
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap unimacro /home/nick/fpga_cores/approx_multiplier/sim/unimacro
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom -source -93 -32 -work unimacro -f /home/nick/fpga_cores/approx_multiplier/sim/./unimacro/.cxl.vhdl.unimacro.unimacro.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/unifast
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap unifast /home/nick/fpga_cores/approx_multiplier/sim/unifast
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom -source -93 -32 -work unifast -f /home/nick/fpga_cores/approx_multiplier/sim/./unifast/.cxl.vhdl.unifast.unifast.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/unisims_ver
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap unisims_ver /home/nick/fpga_cores/approx_multiplier/sim/unisims_ver
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog -source -32 -work unisims_ver -f /home/nick/fpga_cores/approx_multiplier/sim/./unisims_ver/.cxl.verilog.unisim.unisims_ver.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog -source -32 -sv -svinputport=relaxed -work unisims_ver -f /home/nick/fpga_cores/approx_multiplier/sim/./unisims_ver/.cxl.systemverilog.unisim.unisims_ver.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/unimacro_ver
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap unimacro_ver /home/nick/fpga_cores/approx_multiplier/sim/unimacro_ver
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog -source -32 -work unimacro_ver -f /home/nick/fpga_cores/approx_multiplier/sim/./unimacro_ver/.cxl.verilog.unimacro.unimacro_ver.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/unifast_ver
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap unifast_ver /home/nick/fpga_cores/approx_multiplier/sim/unifast_ver
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog -source -32 -work unifast_ver -f /home/nick/fpga_cores/approx_multiplier/sim/./unifast_ver/.cxl.verilog.unifast.unifast_ver.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/simprims_ver
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap simprims_ver /home/nick/fpga_cores/approx_multiplier/sim/simprims_ver
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog -source +define+XIL_TIMING -32 -work simprims_ver -f /home/nick/fpga_cores/approx_multiplier/sim/./simprims_ver/.cxl.verilog.simprim.simprims_ver.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog -source +define+XIL_TIMING -32 -sv -svinputport=relaxed -work simprims_ver -f /home/nick/fpga_cores/approx_multiplier/sim/./simprims_ver/.cxl.systemverilog.simprim.simprims_ver.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xpm
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xpm /home/nick/fpga_cores/approx_multiplier/sim/xpm
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -work xpm -f /home/nick/fpga_cores/approx_multiplier/sim/./xpm/.cxl.vhdl.xpm.xpm.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog -sv -32 -work xpm -f /home/nick/fpga_cores/approx_multiplier/sim/./xpm/.cxl.verilog.xpm.xpm.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xilinx_vip
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xilinx_vip /home/nick/fpga_cores/approx_multiplier/sim/xilinx_vip
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog -sv -32 +incdir+/tools/Vivado/2019.2/data/xilinx_vip/include -work xilinx_vip -f /home/nick/fpga_cores/approx_multiplier/sim/./xilinx_vip/.cxl.systemverilog.xilinx_vip.xilinx_vip.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/mrmac_v1_1_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap mrmac_v1_1_0 /home/nick/fpga_cores/approx_multiplier/sim/mrmac_v1_1_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work mrmac_v1_1_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./mrmac_v1_1_0/.cxl.verilog.mrmac_v1_1_0.mrmac_v1_1_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_sdi_rx_vid_bridge_v2_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_sdi_rx_vid_bridge_v2_0_0 /home/nick/fpga_cores/approx_multiplier/sim/v_sdi_rx_vid_bridge_v2_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_sdi_rx_vid_bridge_v2_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_sdi_rx_vid_bridge_v2_0_0/.cxl.verilog.v_sdi_rx_vid_bridge_v2_0_0.v_sdi_rx_vid_bridge_v2_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axis_mu_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axis_mu_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/axis_mu_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axis_mu_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./axis_mu_v1_0_0/.cxl.verilog.axis_mu_v1_0_0.axis_mu_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/vid_edid_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap vid_edid_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/vid_edid_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work vid_edid_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./vid_edid_v1_0_0/.cxl.vhdl.vid_edid_v1_0_0.vid_edid_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work vid_edid_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./vid_edid_v1_0_0/.cxl.verilog.vid_edid_v1_0_0.vid_edid_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/timer_sync_1588_v1_2_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap timer_sync_1588_v1_2_4 /home/nick/fpga_cores/approx_multiplier/sim/timer_sync_1588_v1_2_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work timer_sync_1588_v1_2_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./timer_sync_1588_v1_2_4/.cxl.vhdl.timer_sync_1588_v1_2_4.timer_sync_1588_v1_2_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work timer_sync_1588_v1_2_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./timer_sync_1588_v1_2_4/.cxl.verilog.timer_sync_1588_v1_2_4.timer_sync_1588_v1_2_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/sem_v4_1_12
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap sem_v4_1_12 /home/nick/fpga_cores/approx_multiplier/sim/sem_v4_1_12
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work sem_v4_1_12 -f /home/nick/fpga_cores/approx_multiplier/sim/./sem_v4_1_12/.cxl.verilog.sem_v4_1_12.sem_v4_1_12.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ethernet_1_10_25g_v2_4_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ethernet_1_10_25g_v2_4_0 /home/nick/fpga_cores/approx_multiplier/sim/ethernet_1_10_25g_v2_4_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work ethernet_1_10_25g_v2_4_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./ethernet_1_10_25g_v2_4_0/.cxl.vhdl.ethernet_1_10_25g_v2_4_0.ethernet_1_10_25g_v2_4_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work ethernet_1_10_25g_v2_4_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./ethernet_1_10_25g_v2_4_0/.cxl.verilog.ethernet_1_10_25g_v2_4_0.ethernet_1_10_25g_v2_4_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/jesd204c_v4_2_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap jesd204c_v4_2_0 /home/nick/fpga_cores/approx_multiplier/sim/jesd204c_v4_2_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work jesd204c_v4_2_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./jesd204c_v4_2_0/.cxl.verilog.jesd204c_v4_2_0.jesd204c_v4_2_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/i2s_transmitter_v1_0_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap i2s_transmitter_v1_0_3 /home/nick/fpga_cores/approx_multiplier/sim/i2s_transmitter_v1_0_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L i2s_transmitter_v1_0_3 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work i2s_transmitter_v1_0_3 -f /home/nick/fpga_cores/approx_multiplier/sim/./i2s_transmitter_v1_0_3/.cxl.systemverilog.i2s_transmitter_v1_0_3.i2s_transmitter_v1_0_3.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/microblaze_v10_0_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap microblaze_v10_0_7 /home/nick/fpga_cores/approx_multiplier/sim/microblaze_v10_0_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work microblaze_v10_0_7 -f /home/nick/fpga_cores/approx_multiplier/sim/./microblaze_v10_0_7/.cxl.vhdl.microblaze_v10_0_7.microblaze_v10_0_7.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/noc_nmu_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap noc_nmu_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/noc_nmu_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L noc_nmu_v1_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work noc_nmu_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./noc_nmu_v1_0_0/.cxl.systemverilog.noc_nmu_v1_0_0.noc_nmu_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_hdmi_tx_v3_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_hdmi_tx_v3_0_0 /home/nick/fpga_cores/approx_multiplier/sim/v_hdmi_tx_v3_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L v_hdmi_tx_v3_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work v_hdmi_tx_v3_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_hdmi_tx_v3_0_0/.cxl.systemverilog.v_hdmi_tx_v3_0_0.v_hdmi_tx_v3_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/microblaze_v11_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap microblaze_v11_0_2 /home/nick/fpga_cores/approx_multiplier/sim/microblaze_v11_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work microblaze_v11_0_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./microblaze_v11_0_2/.cxl.vhdl.microblaze_v11_0_2.microblaze_v11_0_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/audio_tpg_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap audio_tpg_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/audio_tpg_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L audio_tpg_v1_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work audio_tpg_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./audio_tpg_v1_0_0/.cxl.verilog.audio_tpg_v1_0_0.audio_tpg_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L audio_tpg_v1_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work audio_tpg_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./audio_tpg_v1_0_0/.cxl.systemverilog.audio_tpg_v1_0_0.audio_tpg_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ddr4_pl_phy_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ddr4_pl_phy_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/ddr4_pl_phy_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L ddr4_pl_phy_v1_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work ddr4_pl_phy_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./ddr4_pl_phy_v1_0_0/.cxl.systemverilog.ddr4_pl_phy_v1_0_0.ddr4_pl_phy_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_uhdsdi_vidgen_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_uhdsdi_vidgen_v1_0_1 /home/nick/fpga_cores/approx_multiplier/sim/v_uhdsdi_vidgen_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_uhdsdi_vidgen_v1_0_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_uhdsdi_vidgen_v1_0_1/.cxl.verilog.v_uhdsdi_vidgen_v1_0_1.v_uhdsdi_vidgen_v1_0_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xlslice_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xlslice_v1_0_2 /home/nick/fpga_cores/approx_multiplier/sim/xlslice_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work xlslice_v1_0_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./xlslice_v1_0_2/.cxl.verilog.xlslice_v1_0_2.xlslice_v1_0_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_tpg_v8_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_tpg_v8_0_2 /home/nick/fpga_cores/approx_multiplier/sim/v_tpg_v8_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_tpg_v8_0_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_tpg_v8_0_2/.cxl.verilog.v_tpg_v8_0_2.v_tpg_v8_0_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/rld3_pl_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap rld3_pl_v1_0_1 /home/nick/fpga_cores/approx_multiplier/sim/rld3_pl_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L rld3_pl_v1_0_1 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work rld3_pl_v1_0_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./rld3_pl_v1_0_1/.cxl.verilog.rld3_pl_v1_0_1.rld3_pl_v1_0_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L rld3_pl_v1_0_1 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work rld3_pl_v1_0_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./rld3_pl_v1_0_1/.cxl.systemverilog.rld3_pl_v1_0_1.rld3_pl_v1_0_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axis_ila_txns_cntr_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axis_ila_txns_cntr_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/axis_ila_txns_cntr_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axis_ila_txns_cntr_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./axis_ila_txns_cntr_v1_0_0/.cxl.verilog.axis_ila_txns_cntr_v1_0_0.axis_ila_txns_cntr_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/qdriv_pl_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap qdriv_pl_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/qdriv_pl_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L qdriv_pl_v1_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work qdriv_pl_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./qdriv_pl_v1_0_0/.cxl.systemverilog.qdriv_pl_v1_0_0.qdriv_pl_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/l_ethernet_v3_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap l_ethernet_v3_0_0 /home/nick/fpga_cores/approx_multiplier/sim/l_ethernet_v3_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L l_ethernet_v3_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work l_ethernet_v3_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./l_ethernet_v3_0_0/.cxl.systemverilog.l_ethernet_v3_0_0.l_ethernet_v3_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/icap_arb_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap icap_arb_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/icap_arb_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work icap_arb_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./icap_arb_v1_0_0/.cxl.verilog.icap_arb_v1_0_0.icap_arb_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/tcc_decoder_3gpplte_v3_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap tcc_decoder_3gpplte_v3_0_6 /home/nick/fpga_cores/approx_multiplier/sim/tcc_decoder_3gpplte_v3_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work tcc_decoder_3gpplte_v3_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./tcc_decoder_3gpplte_v3_0_6/.cxl.vhdl.tcc_decoder_3gpplte_v3_0_6.tcc_decoder_3gpplte_v3_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/tsn_endpoint_ethernet_mac_block_v1_0_5
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap tsn_endpoint_ethernet_mac_block_v1_0_5 /home/nick/fpga_cores/approx_multiplier/sim/tsn_endpoint_ethernet_mac_block_v1_0_5
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work tsn_endpoint_ethernet_mac_block_v1_0_5 -f /home/nick/fpga_cores/approx_multiplier/sim/./tsn_endpoint_ethernet_mac_block_v1_0_5/.cxl.vhdl.tsn_endpoint_ethernet_mac_block_v1_0_5.tsn_endpoint_ethernet_mac_block_v1_0_5.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work tsn_endpoint_ethernet_mac_block_v1_0_5 -f /home/nick/fpga_cores/approx_multiplier/sim/./tsn_endpoint_ethernet_mac_block_v1_0_5/.cxl.verilog.tsn_endpoint_ethernet_mac_block_v1_0_5.tsn_endpoint_ethernet_mac_block_v1_0_5.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/clk_vip_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap clk_vip_v1_0_2 /home/nick/fpga_cores/approx_multiplier/sim/clk_vip_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L clk_vip_v1_0_2 -L xilinx_vip +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work clk_vip_v1_0_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./clk_vip_v1_0_2/.cxl.systemverilog.clk_vip_v1_0_2.clk_vip_v1_0_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/pcie_jtag_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap pcie_jtag_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/pcie_jtag_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work pcie_jtag_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./pcie_jtag_v1_0_0/.cxl.verilog.pcie_jtag_v1_0_0.pcie_jtag_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/emb_mem_gen_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap emb_mem_gen_v1_0_2 /home/nick/fpga_cores/approx_multiplier/sim/emb_mem_gen_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L emb_mem_gen_v1_0_2 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work emb_mem_gen_v1_0_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./emb_mem_gen_v1_0_2/.cxl.systemverilog.emb_mem_gen_v1_0_2.emb_mem_gen_v1_0_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/system_cache_v4_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap system_cache_v4_0_6 /home/nick/fpga_cores/approx_multiplier/sim/system_cache_v4_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work system_cache_v4_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./system_cache_v4_0_6/.cxl.vhdl.system_cache_v4_0_6.system_cache_v4_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/gmii_to_rgmii_v4_0_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap gmii_to_rgmii_v4_0_7 /home/nick/fpga_cores/approx_multiplier/sim/gmii_to_rgmii_v4_0_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work gmii_to_rgmii_v4_0_7 -f /home/nick/fpga_cores/approx_multiplier/sim/./gmii_to_rgmii_v4_0_7/.cxl.vhdl.gmii_to_rgmii_v4_0_7.gmii_to_rgmii_v4_0_7.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_tg_lib
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_tg_lib /home/nick/fpga_cores/approx_multiplier/sim/axi_tg_lib
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L axi_tg_lib +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work axi_tg_lib -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_tg_lib/.cxl.systemverilog.axi_tg_lib.axi_tg_lib.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/fifo_generator_v13_2_5
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap fifo_generator_v13_2_5 /home/nick/fpga_cores/approx_multiplier/sim/fifo_generator_v13_2_5
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work fifo_generator_v13_2_5 -f /home/nick/fpga_cores/approx_multiplier/sim/./fifo_generator_v13_2_5/.cxl.vhdl.fifo_generator_v13_2_5.fifo_generator_v13_2_5.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work fifo_generator_v13_2_5 -f /home/nick/fpga_cores/approx_multiplier/sim/./fifo_generator_v13_2_5/.cxl.verilog.fifo_generator_v13_2_5.fifo_generator_v13_2_5.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/vfb_v1_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap vfb_v1_0_14 /home/nick/fpga_cores/approx_multiplier/sim/vfb_v1_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work vfb_v1_0_14 -f /home/nick/fpga_cores/approx_multiplier/sim/./vfb_v1_0_14/.cxl.verilog.vfb_v1_0_14.vfb_v1_0_14.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/gtwizard_ultrascale_v1_5_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap gtwizard_ultrascale_v1_5_4 /home/nick/fpga_cores/approx_multiplier/sim/gtwizard_ultrascale_v1_5_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work gtwizard_ultrascale_v1_5_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./gtwizard_ultrascale_v1_5_4/.cxl.verilog.gtwizard_ultrascale_v1_5_4.gtwizard_ultrascale_v1_5_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/pc_cfr_v6_1_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap pc_cfr_v6_1_4 /home/nick/fpga_cores/approx_multiplier/sim/pc_cfr_v6_1_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work pc_cfr_v6_1_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./pc_cfr_v6_1_4/.cxl.vhdl.pc_cfr_v6_1_4.pc_cfr_v6_1_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/sim_trig_top_v1_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap sim_trig_top_v1_0 /home/nick/fpga_cores/approx_multiplier/sim/sim_trig_top_v1_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L sim_trig_top_v1_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work sim_trig_top_v1_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./sim_trig_top_v1_0/.cxl.systemverilog.sim_trig_top_v1_0.sim_trig_top_v1_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/lmb_v10_v3_0_10
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap lmb_v10_v3_0_10 /home/nick/fpga_cores/approx_multiplier/sim/lmb_v10_v3_0_10
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work lmb_v10_v3_0_10 -f /home/nick/fpga_cores/approx_multiplier/sim/./lmb_v10_v3_0_10/.cxl.vhdl.lmb_v10_v3_0_10.lmb_v10_v3_0_10.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_hcresampler_v1_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_hcresampler_v1_0_14 /home/nick/fpga_cores/approx_multiplier/sim/v_hcresampler_v1_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_hcresampler_v1_0_14 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_hcresampler_v1_0_14/.cxl.verilog.v_hcresampler_v1_0_14.v_hcresampler_v1_0_14.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axis_dbg_stub_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axis_dbg_stub_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/axis_dbg_stub_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axis_dbg_stub_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./axis_dbg_stub_v1_0_0/.cxl.verilog.axis_dbg_stub_v1_0_0.axis_dbg_stub_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ecc_v2_0_13
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ecc_v2_0_13 /home/nick/fpga_cores/approx_multiplier/sim/ecc_v2_0_13
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work ecc_v2_0_13 -f /home/nick/fpga_cores/approx_multiplier/sim/./ecc_v2_0_13/.cxl.verilog.ecc_v2_0_13.ecc_v2_0_13.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/gig_ethernet_pcs_pma_v16_1_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap gig_ethernet_pcs_pma_v16_1_7 /home/nick/fpga_cores/approx_multiplier/sim/gig_ethernet_pcs_pma_v16_1_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work gig_ethernet_pcs_pma_v16_1_7 -f /home/nick/fpga_cores/approx_multiplier/sim/./gig_ethernet_pcs_pma_v16_1_7/.cxl.vhdl.gig_ethernet_pcs_pma_v16_1_7.gig_ethernet_pcs_pma_v16_1_7.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work gig_ethernet_pcs_pma_v16_1_7 -f /home/nick/fpga_cores/approx_multiplier/sim/./gig_ethernet_pcs_pma_v16_1_7/.cxl.verilog.gig_ethernet_pcs_pma_v16_1_7.gig_ethernet_pcs_pma_v16_1_7.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ieee802d3_clause74_fec_v1_0_5
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ieee802d3_clause74_fec_v1_0_5 /home/nick/fpga_cores/approx_multiplier/sim/ieee802d3_clause74_fec_v1_0_5
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work ieee802d3_clause74_fec_v1_0_5 -f /home/nick/fpga_cores/approx_multiplier/sim/./ieee802d3_clause74_fec_v1_0_5/.cxl.verilog.ieee802d3_clause74_fec_v1_0_5.ieee802d3_clause74_fec_v1_0_5.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axis_dbg_sync_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axis_dbg_sync_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/axis_dbg_sync_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axis_dbg_sync_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./axis_dbg_sync_v1_0_0/.cxl.verilog.axis_dbg_sync_v1_0_0.axis_dbg_sync_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/sd_fec_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap sd_fec_v1_0_2 /home/nick/fpga_cores/approx_multiplier/sim/sd_fec_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work sd_fec_v1_0_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./sd_fec_v1_0_2/.cxl.verilog.sd_fec_v1_0_2.sd_fec_v1_0_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/shell_utils_msp432_bsl_crc_gen_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap shell_utils_msp432_bsl_crc_gen_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/shell_utils_msp432_bsl_crc_gen_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work shell_utils_msp432_bsl_crc_gen_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./shell_utils_msp432_bsl_crc_gen_v1_0_0/.cxl.verilog.shell_utils_msp432_bsl_crc_gen_v1_0_0.shell_utils_msp432_bsl_crc_gen_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_deinterlacer_v4_0_12
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_deinterlacer_v4_0_12 /home/nick/fpga_cores/approx_multiplier/sim/v_deinterlacer_v4_0_12
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work v_deinterlacer_v4_0_12 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_deinterlacer_v4_0_12/.cxl.vhdl.v_deinterlacer_v4_0_12.v_deinterlacer_v4_0_12.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_gamma_lut_v1_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_gamma_lut_v1_0_6 /home/nick/fpga_cores/approx_multiplier/sim/v_gamma_lut_v1_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_gamma_lut_v1_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_gamma_lut_v1_0_6/.cxl.verilog.v_gamma_lut_v1_0_6.v_gamma_lut_v1_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ddr4_pl_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ddr4_pl_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/ddr4_pl_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L ddr4_pl_v1_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work ddr4_pl_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./ddr4_pl_v1_0_0/.cxl.systemverilog.ddr4_pl_v1_0_0.ddr4_pl_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/blk_mem_gen_v8_4_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap blk_mem_gen_v8_4_4 /home/nick/fpga_cores/approx_multiplier/sim/blk_mem_gen_v8_4_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work blk_mem_gen_v8_4_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./blk_mem_gen_v8_4_4/.cxl.verilog.blk_mem_gen_v8_4_4.blk_mem_gen_v8_4_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_frmbuf_rd_v2_1_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_frmbuf_rd_v2_1_3 /home/nick/fpga_cores/approx_multiplier/sim/v_frmbuf_rd_v2_1_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_frmbuf_rd_v2_1_3 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_frmbuf_rd_v2_1_3/.cxl.verilog.v_frmbuf_rd_v2_1_3.v_frmbuf_rd_v2_1_3.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xlconcat_v2_1_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xlconcat_v2_1_3 /home/nick/fpga_cores/approx_multiplier/sim/xlconcat_v2_1_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work xlconcat_v2_1_3 -f /home/nick/fpga_cores/approx_multiplier/sim/./xlconcat_v2_1_3/.cxl.verilog.xlconcat_v2_1_3.xlconcat_v2_1_3.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/roe_framer_v2_1_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap roe_framer_v2_1_0 /home/nick/fpga_cores/approx_multiplier/sim/roe_framer_v2_1_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L roe_framer_v2_1_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work roe_framer_v2_1_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./roe_framer_v2_1_0/.cxl.systemverilog.roe_framer_v2_1_0.roe_framer_v2_1_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/cmac_v2_5_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap cmac_v2_5_2 /home/nick/fpga_cores/approx_multiplier/sim/cmac_v2_5_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L cmac_v2_5_2 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work cmac_v2_5_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./cmac_v2_5_2/.cxl.systemverilog.cmac_v2_5_2.cmac_v2_5_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_mix_v4_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_mix_v4_0_1 /home/nick/fpga_cores/approx_multiplier/sim/v_mix_v4_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_mix_v4_0_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_mix_v4_0_1/.cxl.verilog.v_mix_v4_0_1.v_mix_v4_0_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/nvmeha_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap nvmeha_v1_0_1 /home/nick/fpga_cores/approx_multiplier/sim/nvmeha_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L nvmeha_v1_0_1 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work nvmeha_v1_0_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./nvmeha_v1_0_1/.cxl.systemverilog.nvmeha_v1_0_1.nvmeha_v1_0_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/tmr_inject_v1_0_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap tmr_inject_v1_0_4 /home/nick/fpga_cores/approx_multiplier/sim/tmr_inject_v1_0_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work tmr_inject_v1_0_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./tmr_inject_v1_0_4/.cxl.vhdl.tmr_inject_v1_0_4.tmr_inject_v1_0_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/fifo_generator_v13_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap fifo_generator_v13_0_6 /home/nick/fpga_cores/approx_multiplier/sim/fifo_generator_v13_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work fifo_generator_v13_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./fifo_generator_v13_0_6/.cxl.vhdl.fifo_generator_v13_0_6.fifo_generator_v13_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/iomodule_v3_1_5
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap iomodule_v3_1_5 /home/nick/fpga_cores/approx_multiplier/sim/iomodule_v3_1_5
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work iomodule_v3_1_5 -f /home/nick/fpga_cores/approx_multiplier/sim/./iomodule_v3_1_5/.cxl.vhdl.iomodule_v3_1_5.iomodule_v3_1_5.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/microblaze_v9_5_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap microblaze_v9_5_4 /home/nick/fpga_cores/approx_multiplier/sim/microblaze_v9_5_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work microblaze_v9_5_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./microblaze_v9_5_4/.cxl.vhdl.microblaze_v9_5_4.microblaze_v9_5_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_multi_scaler_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_multi_scaler_v1_0_2 /home/nick/fpga_cores/approx_multiplier/sim/v_multi_scaler_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_multi_scaler_v1_0_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_multi_scaler_v1_0_2/.cxl.verilog.v_multi_scaler_v1_0_2.v_multi_scaler_v1_0_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/mutex_v2_1_11
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap mutex_v2_1_11 /home/nick/fpga_cores/approx_multiplier/sim/mutex_v2_1_11
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work mutex_v2_1_11 -f /home/nick/fpga_cores/approx_multiplier/sim/./mutex_v2_1_11/.cxl.vhdl.mutex_v2_1_11.mutex_v2_1_11.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ten_gig_eth_mac_v15_1_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ten_gig_eth_mac_v15_1_7 /home/nick/fpga_cores/approx_multiplier/sim/ten_gig_eth_mac_v15_1_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work ten_gig_eth_mac_v15_1_7 -f /home/nick/fpga_cores/approx_multiplier/sim/./ten_gig_eth_mac_v15_1_7/.cxl.verilog.ten_gig_eth_mac_v15_1_7.ten_gig_eth_mac_v15_1_7.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/processing_system7_v5_5_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap processing_system7_v5_5_6 /home/nick/fpga_cores/approx_multiplier/sim/processing_system7_v5_5_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/audio_clock_recovery_v1_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap audio_clock_recovery_v1_0 /home/nick/fpga_cores/approx_multiplier/sim/audio_clock_recovery_v1_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L audio_clock_recovery_v1_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work audio_clock_recovery_v1_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./audio_clock_recovery_v1_0/.cxl.systemverilog.audio_clock_recovery_v1_0.audio_clock_recovery_v1_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/noc_nidb_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap noc_nidb_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/noc_nidb_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L noc_nidb_v1_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work noc_nidb_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./noc_nidb_v1_0_0/.cxl.systemverilog.noc_nidb_v1_0_0.noc_nidb_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/versal_cips_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap versal_cips_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/versal_cips_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_csc_v1_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_csc_v1_0_14 /home/nick/fpga_cores/approx_multiplier/sim/v_csc_v1_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_csc_v1_0_14 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_csc_v1_0_14/.cxl.verilog.v_csc_v1_0_14.v_csc_v1_0_14.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/pcie_dma_versal_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap pcie_dma_versal_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/pcie_dma_versal_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L pcie_dma_versal_v1_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work pcie_dma_versal_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./pcie_dma_versal_v1_0_0/.cxl.systemverilog.pcie_dma_versal_v1_0_0.pcie_dma_versal_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/lut_buffer_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap lut_buffer_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/lut_buffer_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work lut_buffer_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./lut_buffer_v1_0_0/.cxl.verilog.lut_buffer_v1_0_0.lut_buffer_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ibert_lib_v1_0_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ibert_lib_v1_0_7 /home/nick/fpga_cores/approx_multiplier/sim/ibert_lib_v1_0_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work ibert_lib_v1_0_7 -f /home/nick/fpga_cores/approx_multiplier/sim/./ibert_lib_v1_0_7/.cxl.verilog.ibert_lib_v1_0_7.ibert_lib_v1_0_7.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/noc_nps_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap noc_nps_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/noc_nps_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L noc_nps_v1_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work noc_nps_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./noc_nps_v1_0_0/.cxl.systemverilog.noc_nps_v1_0_0.noc_nps_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/util_reduced_logic_v2_0_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap util_reduced_logic_v2_0_4 /home/nick/fpga_cores/approx_multiplier/sim/util_reduced_logic_v2_0_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work util_reduced_logic_v2_0_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./util_reduced_logic_v2_0_4/.cxl.verilog.util_reduced_logic_v2_0_4.util_reduced_logic_v2_0_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axis_cap_ctrl_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axis_cap_ctrl_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/axis_cap_ctrl_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axis_cap_ctrl_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./axis_cap_ctrl_v1_0_0/.cxl.verilog.axis_cap_ctrl_v1_0_0.axis_cap_ctrl_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/hbm_v1_0_5
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap hbm_v1_0_5 /home/nick/fpga_cores/approx_multiplier/sim/hbm_v1_0_5
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L hbm_v1_0_5 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work hbm_v1_0_5 -f /home/nick/fpga_cores/approx_multiplier/sim/./hbm_v1_0_5/.cxl.systemverilog.hbm_v1_0_5.hbm_v1_0_5.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/pc_cfr_v6_3_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap pc_cfr_v6_3_1 /home/nick/fpga_cores/approx_multiplier/sim/pc_cfr_v6_3_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work pc_cfr_v6_3_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./pc_cfr_v6_3_1/.cxl.vhdl.pc_cfr_v6_3_1.pc_cfr_v6_3_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/cmac_usplus_v3_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap cmac_usplus_v3_0_0 /home/nick/fpga_cores/approx_multiplier/sim/cmac_usplus_v3_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L cmac_usplus_v3_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work cmac_usplus_v3_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./cmac_usplus_v3_0_0/.cxl.systemverilog.cmac_usplus_v3_0_0.cmac_usplus_v3_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/generic_baseblocks_v2_1_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap generic_baseblocks_v2_1_0 /home/nick/fpga_cores/approx_multiplier/sim/generic_baseblocks_v2_1_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work generic_baseblocks_v2_1_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./generic_baseblocks_v2_1_0/.cxl.verilog.generic_baseblocks_v2_1_0.generic_baseblocks_v2_1_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/lmb_bram_if_cntlr_v4_0_17
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap lmb_bram_if_cntlr_v4_0_17 /home/nick/fpga_cores/approx_multiplier/sim/lmb_bram_if_cntlr_v4_0_17
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work lmb_bram_if_cntlr_v4_0_17 -f /home/nick/fpga_cores/approx_multiplier/sim/./lmb_bram_if_cntlr_v4_0_17/.cxl.vhdl.lmb_bram_if_cntlr_v4_0_17.lmb_bram_if_cntlr_v4_0_17.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_mix_v3_0_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_mix_v3_0_4 /home/nick/fpga_cores/approx_multiplier/sim/v_mix_v3_0_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_mix_v3_0_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_mix_v3_0_4/.cxl.verilog.v_mix_v3_0_4.v_mix_v3_0_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/hdcp22_cipher_dp_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap hdcp22_cipher_dp_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/hdcp22_cipher_dp_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L hdcp22_cipher_dp_v1_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work hdcp22_cipher_dp_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./hdcp22_cipher_dp_v1_0_0/.cxl.systemverilog.hdcp22_cipher_dp_v1_0_0.hdcp22_cipher_dp_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ahblite_axi_bridge_v3_0_15
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ahblite_axi_bridge_v3_0_15 /home/nick/fpga_cores/approx_multiplier/sim/ahblite_axi_bridge_v3_0_15
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work ahblite_axi_bridge_v3_0_15 -f /home/nick/fpga_cores/approx_multiplier/sim/./ahblite_axi_bridge_v3_0_15/.cxl.vhdl.ahblite_axi_bridge_v3_0_15.ahblite_axi_bridge_v3_0_15.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xsdbm_v3_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xsdbm_v3_0_0 /home/nick/fpga_cores/approx_multiplier/sim/xsdbm_v3_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work xsdbm_v3_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./xsdbm_v3_0_0/.cxl.verilog.xsdbm_v3_0_0.xsdbm_v3_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/video_frame_crc_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap video_frame_crc_v1_0_2 /home/nick/fpga_cores/approx_multiplier/sim/video_frame_crc_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work video_frame_crc_v1_0_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./video_frame_crc_v1_0_2/.cxl.verilog.video_frame_crc_v1_0_2.video_frame_crc_v1_0_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/vid_phy_controller_v2_2_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap vid_phy_controller_v2_2_4 /home/nick/fpga_cores/approx_multiplier/sim/vid_phy_controller_v2_2_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work vid_phy_controller_v2_2_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./vid_phy_controller_v2_2_4/.cxl.vhdl.vid_phy_controller_v2_2_4.vid_phy_controller_v2_2_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L vid_phy_controller_v2_2_4 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work vid_phy_controller_v2_2_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./vid_phy_controller_v2_2_4/.cxl.verilog.vid_phy_controller_v2_2_4.vid_phy_controller_v2_2_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L vid_phy_controller_v2_2_4 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work vid_phy_controller_v2_2_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./vid_phy_controller_v2_2_4/.cxl.systemverilog.vid_phy_controller_v2_2_4.vid_phy_controller_v2_2_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axis_ila_intf_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axis_ila_intf_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/axis_ila_intf_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axis_ila_intf_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./axis_ila_intf_v1_0_0/.cxl.verilog.axis_ila_intf_v1_0_0.axis_ila_intf_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_uhdsdi_audio_v2_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_uhdsdi_audio_v2_0_1 /home/nick/fpga_cores/approx_multiplier/sim/v_uhdsdi_audio_v2_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_uhdsdi_audio_v2_0_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_uhdsdi_audio_v2_0_1/.cxl.verilog.v_uhdsdi_audio_v2_0_1.v_uhdsdi_audio_v2_0_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/pci64_v5_0_11
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap pci64_v5_0_11 /home/nick/fpga_cores/approx_multiplier/sim/pci64_v5_0_11
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work pci64_v5_0_11 -f /home/nick/fpga_cores/approx_multiplier/sim/./pci64_v5_0_11/.cxl.vhdl.pci64_v5_0_11.pci64_v5_0_11.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work pci64_v5_0_11 -f /home/nick/fpga_cores/approx_multiplier/sim/./pci64_v5_0_11/.cxl.verilog.pci64_v5_0_11.pci64_v5_0_11.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/uram_rd_back_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap uram_rd_back_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/uram_rd_back_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work uram_rd_back_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./uram_rd_back_v1_0_0/.cxl.verilog.uram_rd_back_v1_0_0.uram_rd_back_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axis_protocol_checker_v2_0_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axis_protocol_checker_v2_0_4 /home/nick/fpga_cores/approx_multiplier/sim/axis_protocol_checker_v2_0_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axis_protocol_checker_v2_0_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./axis_protocol_checker_v2_0_4/.cxl.verilog.axis_protocol_checker_v2_0_4.axis_protocol_checker_v2_0_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_ahblite_bridge_v3_0_17
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_ahblite_bridge_v3_0_17 /home/nick/fpga_cores/approx_multiplier/sim/axi_ahblite_bridge_v3_0_17
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_ahblite_bridge_v3_0_17 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_ahblite_bridge_v3_0_17/.cxl.vhdl.axi_ahblite_bridge_v3_0_17.axi_ahblite_bridge_v3_0_17.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axis_mem_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axis_mem_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/axis_mem_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axis_mem_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./axis_mem_v1_0_0/.cxl.verilog.axis_mem_v1_0_0.axis_mem_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/mammoth_transcode_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap mammoth_transcode_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/mammoth_transcode_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work mammoth_transcode_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./mammoth_transcode_v1_0_0/.cxl.verilog.mammoth_transcode_v1_0_0.mammoth_transcode_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_hdmi_rx_v3_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_hdmi_rx_v3_0_0 /home/nick/fpga_cores/approx_multiplier/sim/v_hdmi_rx_v3_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L v_hdmi_rx_v3_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work v_hdmi_rx_v3_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_hdmi_rx_v3_0_0/.cxl.systemverilog.v_hdmi_rx_v3_0_0.v_hdmi_rx_v3_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_vscaler_v1_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_vscaler_v1_0_14 /home/nick/fpga_cores/approx_multiplier/sim/v_vscaler_v1_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_vscaler_v1_0_14 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_vscaler_v1_0_14/.cxl.verilog.v_vscaler_v1_0_14.v_vscaler_v1_0_14.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/mipi_csi2_tx_ctrl_v1_0_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap mipi_csi2_tx_ctrl_v1_0_4 /home/nick/fpga_cores/approx_multiplier/sim/mipi_csi2_tx_ctrl_v1_0_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work mipi_csi2_tx_ctrl_v1_0_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./mipi_csi2_tx_ctrl_v1_0_4/.cxl.verilog.mipi_csi2_tx_ctrl_v1_0_4.mipi_csi2_tx_ctrl_v1_0_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_uhdsdi_audio_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_uhdsdi_audio_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/v_uhdsdi_audio_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_uhdsdi_audio_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_uhdsdi_audio_v1_0_0/.cxl.verilog.v_uhdsdi_audio_v1_0_0.v_uhdsdi_audio_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/high_speed_selectio_wiz_v3_2_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap high_speed_selectio_wiz_v3_2_3 /home/nick/fpga_cores/approx_multiplier/sim/high_speed_selectio_wiz_v3_2_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work high_speed_selectio_wiz_v3_2_3 -f /home/nick/fpga_cores/approx_multiplier/sim/./high_speed_selectio_wiz_v3_2_3/.cxl.verilog.high_speed_selectio_wiz_v3_2_3.high_speed_selectio_wiz_v3_2_3.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/mem_pl_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap mem_pl_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/mem_pl_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L mem_pl_v1_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work mem_pl_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./mem_pl_v1_0_0/.cxl.systemverilog.mem_pl_v1_0_0.mem_pl_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axis_itct_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axis_itct_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/axis_itct_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axis_itct_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./axis_itct_v1_0_0/.cxl.verilog.axis_itct_v1_0_0.axis_itct_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/rld3_pl_phy_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap rld3_pl_phy_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/rld3_pl_phy_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L rld3_pl_phy_v1_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work rld3_pl_phy_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./rld3_pl_phy_v1_0_0/.cxl.systemverilog.rld3_pl_phy_v1_0_0.rld3_pl_phy_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axis_ila_ct_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axis_ila_ct_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/axis_ila_ct_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axis_ila_ct_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./axis_ila_ct_v1_0_0/.cxl.verilog.axis_ila_ct_v1_0_0.axis_ila_ct_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/rama_v1_1_3_lib
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap rama_v1_1_3_lib /home/nick/fpga_cores/approx_multiplier/sim/rama_v1_1_3_lib
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work rama_v1_1_3_lib -f /home/nick/fpga_cores/approx_multiplier/sim/./rama_v1_1_3_lib/.cxl.vhdl.rama_v1_1_3_lib.rama_v1_1_3_lib.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xbip_utils_v3_0_10
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xbip_utils_v3_0_10 /home/nick/fpga_cores/approx_multiplier/sim/xbip_utils_v3_0_10
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work xbip_utils_v3_0_10 -f /home/nick/fpga_cores/approx_multiplier/sim/./xbip_utils_v3_0_10/.cxl.vhdl.xbip_utils_v3_0_10.xbip_utils_v3_0_10.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_lite_ipif_v3_0_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_lite_ipif_v3_0_4 /home/nick/fpga_cores/approx_multiplier/sim/axi_lite_ipif_v3_0_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_lite_ipif_v3_0_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_lite_ipif_v3_0_4/.cxl.vhdl.axi_lite_ipif_v3_0_4.axi_lite_ipif_v3_0_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/pc_cfr_v6_2_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap pc_cfr_v6_2_2 /home/nick/fpga_cores/approx_multiplier/sim/pc_cfr_v6_2_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work pc_cfr_v6_2_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./pc_cfr_v6_2_2/.cxl.vhdl.pc_cfr_v6_2_2.pc_cfr_v6_2_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xxv_ethernet_v3_1_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xxv_ethernet_v3_1_0 /home/nick/fpga_cores/approx_multiplier/sim/xxv_ethernet_v3_1_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L xxv_ethernet_v3_1_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work xxv_ethernet_v3_1_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./xxv_ethernet_v3_1_0/.cxl.systemverilog.xxv_ethernet_v3_1_0.xxv_ethernet_v3_1_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ta_dma_v1_0_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ta_dma_v1_0_4 /home/nick/fpga_cores/approx_multiplier/sim/ta_dma_v1_0_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L ta_dma_v1_0_4 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work ta_dma_v1_0_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./ta_dma_v1_0_4/.cxl.systemverilog.ta_dma_v1_0_4.ta_dma_v1_0_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/picxo
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap picxo /home/nick/fpga_cores/approx_multiplier/sim/picxo
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work picxo -f /home/nick/fpga_cores/approx_multiplier/sim/./picxo/.cxl.vhdl.picxo.picxo.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/uhdsdi_gt_v2_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap uhdsdi_gt_v2_0_1 /home/nick/fpga_cores/approx_multiplier/sim/uhdsdi_gt_v2_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work uhdsdi_gt_v2_0_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./uhdsdi_gt_v2_0_1/.cxl.vhdl.uhdsdi_gt_v2_0_1.uhdsdi_gt_v2_0_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work uhdsdi_gt_v2_0_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./uhdsdi_gt_v2_0_1/.cxl.verilog.uhdsdi_gt_v2_0_1.uhdsdi_gt_v2_0_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/pc_cfr_v6_0_8
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap pc_cfr_v6_0_8 /home/nick/fpga_cores/approx_multiplier/sim/pc_cfr_v6_0_8
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work pc_cfr_v6_0_8 -f /home/nick/fpga_cores/approx_multiplier/sim/./pc_cfr_v6_0_8/.cxl.vhdl.pc_cfr_v6_0_8.pc_cfr_v6_0_8.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/in_system_ibert_v1_0_10
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap in_system_ibert_v1_0_10 /home/nick/fpga_cores/approx_multiplier/sim/in_system_ibert_v1_0_10
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work in_system_ibert_v1_0_10 -f /home/nick/fpga_cores/approx_multiplier/sim/./in_system_ibert_v1_0_10/.cxl.verilog.in_system_ibert_v1_0_10.in_system_ibert_v1_0_10.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xbip_dsp48_wrapper_v3_0_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xbip_dsp48_wrapper_v3_0_4 /home/nick/fpga_cores/approx_multiplier/sim/xbip_dsp48_wrapper_v3_0_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work xbip_dsp48_wrapper_v3_0_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./xbip_dsp48_wrapper_v3_0_4/.cxl.vhdl.xbip_dsp48_wrapper_v3_0_4.xbip_dsp48_wrapper_v3_0_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xdma_v4_1_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xdma_v4_1_4 /home/nick/fpga_cores/approx_multiplier/sim/xdma_v4_1_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L xdma_v4_1_4 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work xdma_v4_1_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./xdma_v4_1_4/.cxl.systemverilog.xdma_v4_1_4.xdma_v4_1_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/qdma_v3_0_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap qdma_v3_0_3 /home/nick/fpga_cores/approx_multiplier/sim/qdma_v3_0_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L qdma_v3_0_3 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work qdma_v3_0_3 -f /home/nick/fpga_cores/approx_multiplier/sim/./qdma_v3_0_3/.cxl.systemverilog.qdma_v3_0_3.qdma_v3_0_3.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/fit_timer_v2_0_10
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap fit_timer_v2_0_10 /home/nick/fpga_cores/approx_multiplier/sim/fit_timer_v2_0_10
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work fit_timer_v2_0_10 -f /home/nick/fpga_cores/approx_multiplier/sim/./fit_timer_v2_0_10/.cxl.vhdl.fit_timer_v2_0_10.fit_timer_v2_0_10.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/uhdsdi_gt_v1_0_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap uhdsdi_gt_v1_0_3 /home/nick/fpga_cores/approx_multiplier/sim/uhdsdi_gt_v1_0_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work uhdsdi_gt_v1_0_3 -f /home/nick/fpga_cores/approx_multiplier/sim/./uhdsdi_gt_v1_0_3/.cxl.vhdl.uhdsdi_gt_v1_0_3.uhdsdi_gt_v1_0_3.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work uhdsdi_gt_v1_0_3 -f /home/nick/fpga_cores/approx_multiplier/sim/./uhdsdi_gt_v1_0_3/.cxl.verilog.uhdsdi_gt_v1_0_3.uhdsdi_gt_v1_0_3.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/sim_rst_gen_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap sim_rst_gen_v1_0_2 /home/nick/fpga_cores/approx_multiplier/sim/sim_rst_gen_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work sim_rst_gen_v1_0_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./sim_rst_gen_v1_0_2/.cxl.verilog.sim_rst_gen_v1_0_2.sim_rst_gen_v1_0_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/bs_mux_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap bs_mux_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/bs_mux_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work bs_mux_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./bs_mux_v1_0_0/.cxl.verilog.bs_mux_v1_0_0.bs_mux_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_dbg_hub
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_dbg_hub /home/nick/fpga_cores/approx_multiplier/sim/axi_dbg_hub
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L axi_dbg_hub +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work axi_dbg_hub -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_dbg_hub/.cxl.systemverilog.axi_dbg_hub.axi_dbg_hub.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/bsip_v1_1_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap bsip_v1_1_0 /home/nick/fpga_cores/approx_multiplier/sim/bsip_v1_1_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work bsip_v1_1_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./bsip_v1_1_0/.cxl.vhdl.bsip_v1_1_0.bsip_v1_1_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work bsip_v1_1_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./bsip_v1_1_0/.cxl.verilog.bsip_v1_1_0.bsip_v1_1_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/jesd204_v7_2_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap jesd204_v7_2_7 /home/nick/fpga_cores/approx_multiplier/sim/jesd204_v7_2_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work jesd204_v7_2_7 -f /home/nick/fpga_cores/approx_multiplier/sim/./jesd204_v7_2_7/.cxl.verilog.jesd204_v7_2_7.jesd204_v7_2_7.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/sem_ultra_v3_1_12
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap sem_ultra_v3_1_12 /home/nick/fpga_cores/approx_multiplier/sim/sem_ultra_v3_1_12
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work sem_ultra_v3_1_12 -f /home/nick/fpga_cores/approx_multiplier/sim/./sem_ultra_v3_1_12/.cxl.verilog.sem_ultra_v3_1_12.sem_ultra_v3_1_12.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ltlib_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ltlib_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/ltlib_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work ltlib_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./ltlib_v1_0_0/.cxl.verilog.ltlib_v1_0_0.ltlib_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_demosaic_v1_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_demosaic_v1_0_6 /home/nick/fpga_cores/approx_multiplier/sim/v_demosaic_v1_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_demosaic_v1_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_demosaic_v1_0_6/.cxl.verilog.v_demosaic_v1_0_6.v_demosaic_v1_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_smpte_uhdsdi_tx_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_smpte_uhdsdi_tx_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/v_smpte_uhdsdi_tx_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work v_smpte_uhdsdi_tx_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_smpte_uhdsdi_tx_v1_0_0/.cxl.vhdl.v_smpte_uhdsdi_tx_v1_0_0.v_smpte_uhdsdi_tx_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_smpte_uhdsdi_tx_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_smpte_uhdsdi_tx_v1_0_0/.cxl.verilog.v_smpte_uhdsdi_tx_v1_0_0.v_smpte_uhdsdi_tx_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/fifo_generator_v13_1_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap fifo_generator_v13_1_4 /home/nick/fpga_cores/approx_multiplier/sim/fifo_generator_v13_1_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work fifo_generator_v13_1_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./fifo_generator_v13_1_4/.cxl.vhdl.fifo_generator_v13_1_4.fifo_generator_v13_1_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work fifo_generator_v13_1_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./fifo_generator_v13_1_4/.cxl.verilog.fifo_generator_v13_1_4.fifo_generator_v13_1_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/stm_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap stm_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/stm_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L stm_v1_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work stm_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./stm_v1_0_0/.cxl.systemverilog.stm_v1_0_0.stm_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/stm_v1_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap stm_v1_0 /home/nick/fpga_cores/approx_multiplier/sim/stm_v1_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L stm_v1_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work stm_v1_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./stm_v1_0/.cxl.systemverilog.stm_v1_0.stm_v1_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_hdmi_tx_v2_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_hdmi_tx_v2_0_0 /home/nick/fpga_cores/approx_multiplier/sim/v_hdmi_tx_v2_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L v_hdmi_tx_v2_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work v_hdmi_tx_v2_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_hdmi_tx_v2_0_0/.cxl.systemverilog.v_hdmi_tx_v2_0_0.v_hdmi_tx_v2_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_chip2chip_v5_0_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_chip2chip_v5_0_7 /home/nick/fpga_cores/approx_multiplier/sim/axi_chip2chip_v5_0_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axi_chip2chip_v5_0_7 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_chip2chip_v5_0_7/.cxl.verilog.axi_chip2chip_v5_0_7.axi_chip2chip_v5_0_7.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/gigantic_mux
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap gigantic_mux /home/nick/fpga_cores/approx_multiplier/sim/gigantic_mux
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work gigantic_mux -f /home/nick/fpga_cores/approx_multiplier/sim/./gigantic_mux/.cxl.verilog.gigantic_mux.gigantic_mux.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axis_infrastructure_v1_1_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axis_infrastructure_v1_1_0 /home/nick/fpga_cores/approx_multiplier/sim/axis_infrastructure_v1_1_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axis_infrastructure_v1_1_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./axis_infrastructure_v1_1_0/.cxl.verilog.axis_infrastructure_v1_1_0.axis_infrastructure_v1_1_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/trace_s2mm_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap trace_s2mm_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/trace_s2mm_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work trace_s2mm_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./trace_s2mm_v1_0_0/.cxl.verilog.trace_s2mm_v1_0_0.trace_s2mm_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/gtwizard_ultrascale_v1_6_10
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap gtwizard_ultrascale_v1_6_10 /home/nick/fpga_cores/approx_multiplier/sim/gtwizard_ultrascale_v1_6_10
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work gtwizard_ultrascale_v1_6_10 -f /home/nick/fpga_cores/approx_multiplier/sim/./gtwizard_ultrascale_v1_6_10/.cxl.verilog.gtwizard_ultrascale_v1_6_10.gtwizard_ultrascale_v1_6_10.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/multi_channel_25g_rs_fec_v1_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap multi_channel_25g_rs_fec_v1_0_6 /home/nick/fpga_cores/approx_multiplier/sim/multi_channel_25g_rs_fec_v1_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work multi_channel_25g_rs_fec_v1_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./multi_channel_25g_rs_fec_v1_0_6/.cxl.verilog.multi_channel_25g_rs_fec_v1_0_6.multi_channel_25g_rs_fec_v1_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_infrastructure_v1_1_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_infrastructure_v1_1_0 /home/nick/fpga_cores/approx_multiplier/sim/axi_infrastructure_v1_1_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axi_infrastructure_v1_1_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_infrastructure_v1_1_0/.cxl.verilog.axi_infrastructure_v1_1_0.axi_infrastructure_v1_1_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_pcie3_v3_0_10
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_pcie3_v3_0_10 /home/nick/fpga_cores/approx_multiplier/sim/axi_pcie3_v3_0_10
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axi_pcie3_v3_0_10 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_pcie3_v3_0_10/.cxl.verilog.axi_pcie3_v3_0_10.axi_pcie3_v3_0_10.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xlconstant_v1_1_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xlconstant_v1_1_6 /home/nick/fpga_cores/approx_multiplier/sim/xlconstant_v1_1_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work xlconstant_v1_1_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./xlconstant_v1_1_6/.cxl.verilog.xlconstant_v1_1_6.xlconstant_v1_1_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_smpte_uhdsdi_rx_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_smpte_uhdsdi_rx_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/v_smpte_uhdsdi_rx_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work v_smpte_uhdsdi_rx_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_smpte_uhdsdi_rx_v1_0_0/.cxl.vhdl.v_smpte_uhdsdi_rx_v1_0_0.v_smpte_uhdsdi_rx_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_smpte_uhdsdi_rx_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_smpte_uhdsdi_rx_v1_0_0/.cxl.verilog.v_smpte_uhdsdi_rx_v1_0_0.v_smpte_uhdsdi_rx_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/hdmi_gt_controller_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap hdmi_gt_controller_v1_0_1 /home/nick/fpga_cores/approx_multiplier/sim/hdmi_gt_controller_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work hdmi_gt_controller_v1_0_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./hdmi_gt_controller_v1_0_1/.cxl.vhdl.hdmi_gt_controller_v1_0_1.hdmi_gt_controller_v1_0_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L hdmi_gt_controller_v1_0_1 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work hdmi_gt_controller_v1_0_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./hdmi_gt_controller_v1_0_1/.cxl.verilog.hdmi_gt_controller_v1_0_1.hdmi_gt_controller_v1_0_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L hdmi_gt_controller_v1_0_1 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work hdmi_gt_controller_v1_0_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./hdmi_gt_controller_v1_0_1/.cxl.systemverilog.hdmi_gt_controller_v1_0_1.hdmi_gt_controller_v1_0_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/advanced_io_wizard_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap advanced_io_wizard_v1_0_1 /home/nick/fpga_cores/approx_multiplier/sim/advanced_io_wizard_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work advanced_io_wizard_v1_0_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./advanced_io_wizard_v1_0_1/.cxl.verilog.advanced_io_wizard_v1_0_1.advanced_io_wizard_v1_0_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/noc_na_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap noc_na_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/noc_na_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L noc_na_v1_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work noc_na_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./noc_na_v1_0_0/.cxl.systemverilog.noc_na_v1_0_0.noc_na_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/dist_mem_gen_v8_0_13
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap dist_mem_gen_v8_0_13 /home/nick/fpga_cores/approx_multiplier/sim/dist_mem_gen_v8_0_13
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work dist_mem_gen_v8_0_13 -f /home/nick/fpga_cores/approx_multiplier/sim/./dist_mem_gen_v8_0_13/.cxl.verilog.dist_mem_gen_v8_0_13.dist_mem_gen_v8_0_13.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ai_pl_trig
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ai_pl_trig /home/nick/fpga_cores/approx_multiplier/sim/ai_pl_trig
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work ai_pl_trig -f /home/nick/fpga_cores/approx_multiplier/sim/./ai_pl_trig/.cxl.verilog.ai_pl_trig.ai_pl_trig.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/hdcp_v1_0_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap hdcp_v1_0_3 /home/nick/fpga_cores/approx_multiplier/sim/hdcp_v1_0_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work hdcp_v1_0_3 -f /home/nick/fpga_cores/approx_multiplier/sim/./hdcp_v1_0_3/.cxl.verilog.hdcp_v1_0_3.hdcp_v1_0_3.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_perf_mon_v5_0_22
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_perf_mon_v5_0_22 /home/nick/fpga_cores/approx_multiplier/sim/axi_perf_mon_v5_0_22
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axi_perf_mon_v5_0_22 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_perf_mon_v5_0_22/.cxl.verilog.axi_perf_mon_v5_0_22.axi_perf_mon_v5_0_22.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/tmr_voter_v1_0_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap tmr_voter_v1_0_3 /home/nick/fpga_cores/approx_multiplier/sim/tmr_voter_v1_0_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work tmr_voter_v1_0_3 -f /home/nick/fpga_cores/approx_multiplier/sim/./tmr_voter_v1_0_3/.cxl.vhdl.tmr_voter_v1_0_3.tmr_voter_v1_0_3.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ai_pl
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ai_pl /home/nick/fpga_cores/approx_multiplier/sim/ai_pl
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L ai_pl +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work ai_pl -f /home/nick/fpga_cores/approx_multiplier/sim/./ai_pl/.cxl.systemverilog.ai_pl.ai_pl.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/interlaken_v2_4_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap interlaken_v2_4_4 /home/nick/fpga_cores/approx_multiplier/sim/interlaken_v2_4_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work interlaken_v2_4_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./interlaken_v2_4_4/.cxl.verilog.interlaken_v2_4_4.interlaken_v2_4_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/emc_common_v3_0_5
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap emc_common_v3_0_5 /home/nick/fpga_cores/approx_multiplier/sim/emc_common_v3_0_5
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work emc_common_v3_0_5 -f /home/nick/fpga_cores/approx_multiplier/sim/./emc_common_v3_0_5/.cxl.vhdl.emc_common_v3_0_5.emc_common_v3_0_5.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_smpte_uhdsdi_v1_0_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_smpte_uhdsdi_v1_0_7 /home/nick/fpga_cores/approx_multiplier/sim/v_smpte_uhdsdi_v1_0_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_smpte_uhdsdi_v1_0_7 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_smpte_uhdsdi_v1_0_7/.cxl.verilog.v_smpte_uhdsdi_v1_0_7.v_smpte_uhdsdi_v1_0_7.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/hdcp22_cipher_v1_0_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap hdcp22_cipher_v1_0_3 /home/nick/fpga_cores/approx_multiplier/sim/hdcp22_cipher_v1_0_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L hdcp22_cipher_v1_0_3 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work hdcp22_cipher_v1_0_3 -f /home/nick/fpga_cores/approx_multiplier/sim/./hdcp22_cipher_v1_0_3/.cxl.systemverilog.hdcp22_cipher_v1_0_3.hdcp22_cipher_v1_0_3.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_bram_ctrl_v4_1_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_bram_ctrl_v4_1_2 /home/nick/fpga_cores/approx_multiplier/sim/axi_bram_ctrl_v4_1_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_bram_ctrl_v4_1_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_bram_ctrl_v4_1_2/.cxl.vhdl.axi_bram_ctrl_v4_1_2.axi_bram_ctrl_v4_1_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/clk_gen_sim_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap clk_gen_sim_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/clk_gen_sim_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L clk_gen_sim_v1_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work clk_gen_sim_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./clk_gen_sim_v1_0_0/.cxl.systemverilog.clk_gen_sim_v1_0_0.clk_gen_sim_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/system_cache_v5_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap system_cache_v5_0_0 /home/nick/fpga_cores/approx_multiplier/sim/system_cache_v5_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work system_cache_v5_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./system_cache_v5_0_0/.cxl.vhdl.system_cache_v5_0_0.system_cache_v5_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/mrmac_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap mrmac_v1_0_1 /home/nick/fpga_cores/approx_multiplier/sim/mrmac_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work mrmac_v1_0_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./mrmac_v1_0_1/.cxl.verilog.mrmac_v1_0_1.mrmac_v1_0_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_hdmi_rx_v2_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_hdmi_rx_v2_0_0 /home/nick/fpga_cores/approx_multiplier/sim/v_hdmi_rx_v2_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L v_hdmi_rx_v2_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work v_hdmi_rx_v2_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_hdmi_rx_v2_0_0/.cxl.systemverilog.v_hdmi_rx_v2_0_0.v_hdmi_rx_v2_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/pci32_v5_0_12
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap pci32_v5_0_12 /home/nick/fpga_cores/approx_multiplier/sim/pci32_v5_0_12
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work pci32_v5_0_12 -f /home/nick/fpga_cores/approx_multiplier/sim/./pci32_v5_0_12/.cxl.vhdl.pci32_v5_0_12.pci32_v5_0_12.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work pci32_v5_0_12 -f /home/nick/fpga_cores/approx_multiplier/sim/./pci32_v5_0_12/.cxl.verilog.pci32_v5_0_12.pci32_v5_0_12.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_pmon_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_pmon_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/axi_pmon_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L axi_pmon_v1_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work axi_pmon_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_pmon_v1_0_0/.cxl.systemverilog.axi_pmon_v1_0_0.axi_pmon_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/high_speed_selectio_wiz_v3_4_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap high_speed_selectio_wiz_v3_4_1 /home/nick/fpga_cores/approx_multiplier/sim/high_speed_selectio_wiz_v3_4_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work high_speed_selectio_wiz_v3_4_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./high_speed_selectio_wiz_v3_4_1/.cxl.verilog.high_speed_selectio_wiz_v3_4_1.high_speed_selectio_wiz_v3_4_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_deinterlacer_v5_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_deinterlacer_v5_0_14 /home/nick/fpga_cores/approx_multiplier/sim/v_deinterlacer_v5_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_deinterlacer_v5_0_14 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_deinterlacer_v5_0_14/.cxl.verilog.v_deinterlacer_v5_0_14.v_deinterlacer_v5_0_14.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/pcie_axi4lite_tap_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap pcie_axi4lite_tap_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/pcie_axi4lite_tap_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work pcie_axi4lite_tap_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./pcie_axi4lite_tap_v1_0_0/.cxl.verilog.pcie_axi4lite_tap_v1_0_0.pcie_axi4lite_tap_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/tmr_manager_v1_0_5
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap tmr_manager_v1_0_5 /home/nick/fpga_cores/approx_multiplier/sim/tmr_manager_v1_0_5
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work tmr_manager_v1_0_5 -f /home/nick/fpga_cores/approx_multiplier/sim/./tmr_manager_v1_0_5/.cxl.vhdl.tmr_manager_v1_0_5.tmr_manager_v1_0_5.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/high_speed_selectio_wiz_v3_5_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap high_speed_selectio_wiz_v3_5_2 /home/nick/fpga_cores/approx_multiplier/sim/high_speed_selectio_wiz_v3_5_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work high_speed_selectio_wiz_v3_5_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./high_speed_selectio_wiz_v3_5_2/.cxl.verilog.high_speed_selectio_wiz_v3_5_2.high_speed_selectio_wiz_v3_5_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_jtag_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_jtag_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/axi_jtag_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axi_jtag_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_jtag_v1_0_0/.cxl.verilog.axi_jtag_v1_0_0.axi_jtag_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/mipi_csi2_rx_ctrl_v1_0_8
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap mipi_csi2_rx_ctrl_v1_0_8 /home/nick/fpga_cores/approx_multiplier/sim/mipi_csi2_rx_ctrl_v1_0_8
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work mipi_csi2_rx_ctrl_v1_0_8 -f /home/nick/fpga_cores/approx_multiplier/sim/./mipi_csi2_rx_ctrl_v1_0_8/.cxl.verilog.mipi_csi2_rx_ctrl_v1_0_8.mipi_csi2_rx_ctrl_v1_0_8.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_smpte_sdi_v3_0_8
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_smpte_sdi_v3_0_8 /home/nick/fpga_cores/approx_multiplier/sim/v_smpte_sdi_v3_0_8
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_smpte_sdi_v3_0_8 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_smpte_sdi_v3_0_8/.cxl.verilog.v_smpte_sdi_v3_0_8.v_smpte_sdi_v3_0_8.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/av_pat_gen_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap av_pat_gen_v1_0_1 /home/nick/fpga_cores/approx_multiplier/sim/av_pat_gen_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L av_pat_gen_v1_0_1 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work av_pat_gen_v1_0_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./av_pat_gen_v1_0_1/.cxl.systemverilog.av_pat_gen_v1_0_1.av_pat_gen_v1_0_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/lib_cdc_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap lib_cdc_v1_0_2 /home/nick/fpga_cores/approx_multiplier/sim/lib_cdc_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work lib_cdc_v1_0_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./lib_cdc_v1_0_2/.cxl.vhdl.lib_cdc_v1_0_2.lib_cdc_v1_0_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_vid_in_axi4s_v4_0_9
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_vid_in_axi4s_v4_0_9 /home/nick/fpga_cores/approx_multiplier/sim/v_vid_in_axi4s_v4_0_9
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_vid_in_axi4s_v4_0_9 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_vid_in_axi4s_v4_0_9/.cxl.verilog.v_vid_in_axi4s_v4_0_9.v_vid_in_axi4s_v4_0_9.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_frmbuf_wr_v2_1_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_frmbuf_wr_v2_1_3 /home/nick/fpga_cores/approx_multiplier/sim/v_frmbuf_wr_v2_1_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_frmbuf_wr_v2_1_3 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_frmbuf_wr_v2_1_3/.cxl.verilog.v_frmbuf_wr_v2_1_3.v_frmbuf_wr_v2_1_3.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/advanced_io_wizard_phy_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap advanced_io_wizard_phy_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/advanced_io_wizard_phy_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L advanced_io_wizard_phy_v1_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work advanced_io_wizard_phy_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./advanced_io_wizard_phy_v1_0_0/.cxl.systemverilog.advanced_io_wizard_phy_v1_0_0.advanced_io_wizard_phy_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/sim_clk_gen_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap sim_clk_gen_v1_0_2 /home/nick/fpga_cores/approx_multiplier/sim/sim_clk_gen_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work sim_clk_gen_v1_0_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./sim_clk_gen_v1_0_2/.cxl.verilog.sim_clk_gen_v1_0_2.sim_clk_gen_v1_0_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ten_gig_eth_pcs_pma_v6_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ten_gig_eth_pcs_pma_v6_0_16 /home/nick/fpga_cores/approx_multiplier/sim/ten_gig_eth_pcs_pma_v6_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work ten_gig_eth_pcs_pma_v6_0_16 -f /home/nick/fpga_cores/approx_multiplier/sim/./ten_gig_eth_pcs_pma_v6_0_16/.cxl.verilog.ten_gig_eth_pcs_pma_v6_0_16.ten_gig_eth_pcs_pma_v6_0_16.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/rst_vip_v1_0_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap rst_vip_v1_0_3 /home/nick/fpga_cores/approx_multiplier/sim/rst_vip_v1_0_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L rst_vip_v1_0_3 -L xilinx_vip +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work rst_vip_v1_0_3 -f /home/nick/fpga_cores/approx_multiplier/sim/./rst_vip_v1_0_3/.cxl.systemverilog.rst_vip_v1_0_3.rst_vip_v1_0_3.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/mipi_dphy_v4_1_5
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap mipi_dphy_v4_1_5 /home/nick/fpga_cores/approx_multiplier/sim/mipi_dphy_v4_1_5
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L mipi_dphy_v4_1_5 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work mipi_dphy_v4_1_5 -f /home/nick/fpga_cores/approx_multiplier/sim/./mipi_dphy_v4_1_5/.cxl.systemverilog.mipi_dphy_v4_1_5.mipi_dphy_v4_1_5.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_vcresampler_v1_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_vcresampler_v1_0_14 /home/nick/fpga_cores/approx_multiplier/sim/v_vcresampler_v1_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_vcresampler_v1_0_14 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_vcresampler_v1_0_14/.cxl.verilog.v_vcresampler_v1_0_14.v_vcresampler_v1_0_14.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/lib_pkg_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap lib_pkg_v1_0_2 /home/nick/fpga_cores/approx_multiplier/sim/lib_pkg_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work lib_pkg_v1_0_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./lib_pkg_v1_0_2/.cxl.vhdl.lib_pkg_v1_0_2.lib_pkg_v1_0_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/usxgmii_v1_1_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap usxgmii_v1_1_1 /home/nick/fpga_cores/approx_multiplier/sim/usxgmii_v1_1_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work usxgmii_v1_1_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./usxgmii_v1_1_1/.cxl.verilog.usxgmii_v1_1_1.usxgmii_v1_1_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/high_speed_selectio_wiz_v3_3_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap high_speed_selectio_wiz_v3_3_1 /home/nick/fpga_cores/approx_multiplier/sim/high_speed_selectio_wiz_v3_3_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work high_speed_selectio_wiz_v3_3_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./high_speed_selectio_wiz_v3_3_1/.cxl.verilog.high_speed_selectio_wiz_v3_3_1.high_speed_selectio_wiz_v3_3_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_scenechange_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_scenechange_v1_0_2 /home/nick/fpga_cores/approx_multiplier/sim/v_scenechange_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_scenechange_v1_0_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_scenechange_v1_0_2/.cxl.verilog.v_scenechange_v1_0_2.v_scenechange_v1_0_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/mpegtsmux_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap mpegtsmux_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/mpegtsmux_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work mpegtsmux_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./mpegtsmux_v1_0_0/.cxl.verilog.mpegtsmux_v1_0_0.mpegtsmux_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/vid_phy_controller_v2_1_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap vid_phy_controller_v2_1_6 /home/nick/fpga_cores/approx_multiplier/sim/vid_phy_controller_v2_1_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work vid_phy_controller_v2_1_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./vid_phy_controller_v2_1_6/.cxl.vhdl.vid_phy_controller_v2_1_6.vid_phy_controller_v2_1_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L vid_phy_controller_v2_1_6 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work vid_phy_controller_v2_1_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./vid_phy_controller_v2_1_6/.cxl.verilog.vid_phy_controller_v2_1_6.vid_phy_controller_v2_1_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L vid_phy_controller_v2_1_6 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work vid_phy_controller_v2_1_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./vid_phy_controller_v2_1_6/.cxl.systemverilog.vid_phy_controller_v2_1_6.vid_phy_controller_v2_1_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_letterbox_v1_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_letterbox_v1_0_14 /home/nick/fpga_cores/approx_multiplier/sim/v_letterbox_v1_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_letterbox_v1_0_14 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_letterbox_v1_0_14/.cxl.verilog.v_letterbox_v1_0_14.v_letterbox_v1_0_14.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_axi4s_remap_v1_0_12
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_axi4s_remap_v1_0_12 /home/nick/fpga_cores/approx_multiplier/sim/v_axi4s_remap_v1_0_12
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_axi4s_remap_v1_0_12 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_axi4s_remap_v1_0_12/.cxl.verilog.v_axi4s_remap_v1_0_12.v_axi4s_remap_v1_0_12.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ai_noc
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ai_noc /home/nick/fpga_cores/approx_multiplier/sim/ai_noc
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work ai_noc -f /home/nick/fpga_cores/approx_multiplier/sim/./ai_noc/.cxl.verilog.ai_noc.ai_noc.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xsdbm_v2_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xsdbm_v2_0_0 /home/nick/fpga_cores/approx_multiplier/sim/xsdbm_v2_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work xsdbm_v2_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./xsdbm_v2_0_0/.cxl.verilog.xsdbm_v2_0_0.xsdbm_v2_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/jtag_axi
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap jtag_axi /home/nick/fpga_cores/approx_multiplier/sim/jtag_axi
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work jtag_axi -f /home/nick/fpga_cores/approx_multiplier/sim/./jtag_axi/.cxl.verilog.jtag_axi.jtag_axi.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/mipi_dsi_tx_ctrl_v1_0_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap mipi_dsi_tx_ctrl_v1_0_7 /home/nick/fpga_cores/approx_multiplier/sim/mipi_dsi_tx_ctrl_v1_0_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work mipi_dsi_tx_ctrl_v1_0_7 -f /home/nick/fpga_cores/approx_multiplier/sim/./mipi_dsi_tx_ctrl_v1_0_7/.cxl.verilog.mipi_dsi_tx_ctrl_v1_0_7.mipi_dsi_tx_ctrl_v1_0_7.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/compact_gt_v1_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap compact_gt_v1_0_6 /home/nick/fpga_cores/approx_multiplier/sim/compact_gt_v1_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work compact_gt_v1_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./compact_gt_v1_0_6/.cxl.vhdl.compact_gt_v1_0_6.compact_gt_v1_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/gtwizard_ultrascale_v1_7_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap gtwizard_ultrascale_v1_7_7 /home/nick/fpga_cores/approx_multiplier/sim/gtwizard_ultrascale_v1_7_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work gtwizard_ultrascale_v1_7_7 -f /home/nick/fpga_cores/approx_multiplier/sim/./gtwizard_ultrascale_v1_7_7/.cxl.verilog.gtwizard_ultrascale_v1_7_7.gtwizard_ultrascale_v1_7_7.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/util_idelay_ctrl_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap util_idelay_ctrl_v1_0_2 /home/nick/fpga_cores/approx_multiplier/sim/util_idelay_ctrl_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work util_idelay_ctrl_v1_0_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./util_idelay_ctrl_v1_0_2/.cxl.verilog.util_idelay_ctrl_v1_0_2.util_idelay_ctrl_v1_0_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/util_vector_logic_v2_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap util_vector_logic_v2_0_1 /home/nick/fpga_cores/approx_multiplier/sim/util_vector_logic_v2_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work util_vector_logic_v2_0_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./util_vector_logic_v2_0_1/.cxl.verilog.util_vector_logic_v2_0_1.util_vector_logic_v2_0_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/hdcp22_rng_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap hdcp22_rng_v1_0_1 /home/nick/fpga_cores/approx_multiplier/sim/hdcp22_rng_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L hdcp22_rng_v1_0_1 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work hdcp22_rng_v1_0_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./hdcp22_rng_v1_0_1/.cxl.systemverilog.hdcp22_rng_v1_0_1.hdcp22_rng_v1_0_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/oddr_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap oddr_v1_0_1 /home/nick/fpga_cores/approx_multiplier/sim/oddr_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work oddr_v1_0_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./oddr_v1_0_1/.cxl.verilog.oddr_v1_0_1.oddr_v1_0_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/i2s_receiver_v1_0_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap i2s_receiver_v1_0_3 /home/nick/fpga_cores/approx_multiplier/sim/i2s_receiver_v1_0_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L i2s_receiver_v1_0_3 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work i2s_receiver_v1_0_3 -f /home/nick/fpga_cores/approx_multiplier/sim/./i2s_receiver_v1_0_3/.cxl.systemverilog.i2s_receiver_v1_0_3.i2s_receiver_v1_0_3.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_tpg_v7_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_tpg_v7_0_14 /home/nick/fpga_cores/approx_multiplier/sim/v_tpg_v7_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_tpg_v7_0_14 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_tpg_v7_0_14/.cxl.verilog.v_tpg_v7_0_14.v_tpg_v7_0_14.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_hscaler_v1_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_hscaler_v1_0_14 /home/nick/fpga_cores/approx_multiplier/sim/v_hscaler_v1_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_hscaler_v1_0_14 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_hscaler_v1_0_14/.cxl.verilog.v_hscaler_v1_0_14.v_hscaler_v1_0_14.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/emb_fifo_gen_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap emb_fifo_gen_v1_0_2 /home/nick/fpga_cores/approx_multiplier/sim/emb_fifo_gen_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L emb_fifo_gen_v1_0_2 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work emb_fifo_gen_v1_0_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./emb_fifo_gen_v1_0_2/.cxl.systemverilog.emb_fifo_gen_v1_0_2.emb_fifo_gen_v1_0_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/hdcp_keymngmt_blk_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap hdcp_keymngmt_blk_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/hdcp_keymngmt_blk_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work hdcp_keymngmt_blk_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./hdcp_keymngmt_blk_v1_0_0/.cxl.verilog.hdcp_keymngmt_blk_v1_0_0.hdcp_keymngmt_blk_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_amm_bridge_v1_0_10
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_amm_bridge_v1_0_10 /home/nick/fpga_cores/approx_multiplier/sim/axi_amm_bridge_v1_0_10
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axi_amm_bridge_v1_0_10 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_amm_bridge_v1_0_10/.cxl.verilog.axi_amm_bridge_v1_0_10.axi_amm_bridge_v1_0_10.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_uhdsdi_audio_v1_1_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_uhdsdi_audio_v1_1_0 /home/nick/fpga_cores/approx_multiplier/sim/v_uhdsdi_audio_v1_1_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_uhdsdi_audio_v1_1_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_uhdsdi_audio_v1_1_0/.cxl.verilog.v_uhdsdi_audio_v1_1_0.v_uhdsdi_audio_v1_1_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xhmc_v1_0_10
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xhmc_v1_0_10 /home/nick/fpga_cores/approx_multiplier/sim/xhmc_v1_0_10
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work xhmc_v1_0_10 -f /home/nick/fpga_cores/approx_multiplier/sim/./xhmc_v1_0_10/.cxl.verilog.xhmc_v1_0_10.xhmc_v1_0_10.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axis_ila_pp_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axis_ila_pp_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/axis_ila_pp_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axis_ila_pp_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./axis_ila_pp_v1_0_0/.cxl.verilog.axis_ila_pp_v1_0_0.axis_ila_pp_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/blk_mem_gen_v8_3_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap blk_mem_gen_v8_3_6 /home/nick/fpga_cores/approx_multiplier/sim/blk_mem_gen_v8_3_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work blk_mem_gen_v8_3_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./blk_mem_gen_v8_3_6/.cxl.verilog.blk_mem_gen_v8_3_6.blk_mem_gen_v8_3_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/smartconnect_v1_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap smartconnect_v1_0 /home/nick/fpga_cores/approx_multiplier/sim/smartconnect_v1_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L smartconnect_v1_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work smartconnect_v1_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./smartconnect_v1_0/.cxl.systemverilog.smartconnect_v1_0.smartconnect_v1_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/lut_buffer_v2_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap lut_buffer_v2_0_0 /home/nick/fpga_cores/approx_multiplier/sim/lut_buffer_v2_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work lut_buffer_v2_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./lut_buffer_v2_0_0/.cxl.verilog.lut_buffer_v2_0_0.lut_buffer_v2_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xbip_pipe_v3_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xbip_pipe_v3_0_6 /home/nick/fpga_cores/approx_multiplier/sim/xbip_pipe_v3_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work xbip_pipe_v3_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./xbip_pipe_v3_0_6/.cxl.vhdl.xbip_pipe_v3_0_6.xbip_pipe_v3_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xbip_bram18k_v3_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xbip_bram18k_v3_0_6 /home/nick/fpga_cores/approx_multiplier/sim/xbip_bram18k_v3_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work xbip_bram18k_v3_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./xbip_bram18k_v3_0_6/.cxl.vhdl.xbip_bram18k_v3_0_6.xbip_bram18k_v3_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/mult_gen_v12_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap mult_gen_v12_0_16 /home/nick/fpga_cores/approx_multiplier/sim/mult_gen_v12_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work mult_gen_v12_0_16 -f /home/nick/fpga_cores/approx_multiplier/sim/./mult_gen_v12_0_16/.cxl.vhdl.mult_gen_v12_0_16.mult_gen_v12_0_16.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/tsn_temac_v1_0_5
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap tsn_temac_v1_0_5 /home/nick/fpga_cores/approx_multiplier/sim/tsn_temac_v1_0_5
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work tsn_temac_v1_0_5 -f /home/nick/fpga_cores/approx_multiplier/sim/./tsn_temac_v1_0_5/.cxl.vhdl.tsn_temac_v1_0_5.tsn_temac_v1_0_5.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L tsn_temac_v1_0_5 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work tsn_temac_v1_0_5 -f /home/nick/fpga_cores/approx_multiplier/sim/./tsn_temac_v1_0_5/.cxl.systemverilog.tsn_temac_v1_0_5.tsn_temac_v1_0_5.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/c_reg_fd_v12_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap c_reg_fd_v12_0_6 /home/nick/fpga_cores/approx_multiplier/sim/c_reg_fd_v12_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work c_reg_fd_v12_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./c_reg_fd_v12_0_6/.cxl.vhdl.c_reg_fd_v12_0_6.c_reg_fd_v12_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/c_mux_bit_v12_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap c_mux_bit_v12_0_6 /home/nick/fpga_cores/approx_multiplier/sim/c_mux_bit_v12_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work c_mux_bit_v12_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./c_mux_bit_v12_0_6/.cxl.vhdl.c_mux_bit_v12_0_6.c_mux_bit_v12_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/c_shift_ram_v12_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap c_shift_ram_v12_0_14 /home/nick/fpga_cores/approx_multiplier/sim/c_shift_ram_v12_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work c_shift_ram_v12_0_14 -f /home/nick/fpga_cores/approx_multiplier/sim/./c_shift_ram_v12_0_14/.cxl.vhdl.c_shift_ram_v12_0_14.c_shift_ram_v12_0_14.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xbip_dsp48_addsub_v3_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xbip_dsp48_addsub_v3_0_6 /home/nick/fpga_cores/approx_multiplier/sim/xbip_dsp48_addsub_v3_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work xbip_dsp48_addsub_v3_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./xbip_dsp48_addsub_v3_0_6/.cxl.vhdl.xbip_dsp48_addsub_v3_0_6.xbip_dsp48_addsub_v3_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/c_gate_bit_v12_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap c_gate_bit_v12_0_6 /home/nick/fpga_cores/approx_multiplier/sim/c_gate_bit_v12_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work c_gate_bit_v12_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./c_gate_bit_v12_0_6/.cxl.vhdl.c_gate_bit_v12_0_6.c_gate_bit_v12_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xbip_counter_v3_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xbip_counter_v3_0_6 /home/nick/fpga_cores/approx_multiplier/sim/xbip_counter_v3_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work xbip_counter_v3_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./xbip_counter_v3_0_6/.cxl.vhdl.xbip_counter_v3_0_6.xbip_counter_v3_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xbip_addsub_v3_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xbip_addsub_v3_0_6 /home/nick/fpga_cores/approx_multiplier/sim/xbip_addsub_v3_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work xbip_addsub_v3_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./xbip_addsub_v3_0_6/.cxl.vhdl.xbip_addsub_v3_0_6.xbip_addsub_v3_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/c_addsub_v12_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap c_addsub_v12_0_14 /home/nick/fpga_cores/approx_multiplier/sim/c_addsub_v12_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work c_addsub_v12_0_14 -f /home/nick/fpga_cores/approx_multiplier/sim/./c_addsub_v12_0_14/.cxl.vhdl.c_addsub_v12_0_14.c_addsub_v12_0_14.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/c_counter_binary_v12_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap c_counter_binary_v12_0_14 /home/nick/fpga_cores/approx_multiplier/sim/c_counter_binary_v12_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work c_counter_binary_v12_0_14 -f /home/nick/fpga_cores/approx_multiplier/sim/./c_counter_binary_v12_0_14/.cxl.vhdl.c_counter_binary_v12_0_14.c_counter_binary_v12_0_14.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/c_compare_v12_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap c_compare_v12_0_6 /home/nick/fpga_cores/approx_multiplier/sim/c_compare_v12_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work c_compare_v12_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./c_compare_v12_0_6/.cxl.vhdl.c_compare_v12_0_6.c_compare_v12_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/g709_rs_encoder_v2_2_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap g709_rs_encoder_v2_2_7 /home/nick/fpga_cores/approx_multiplier/sim/g709_rs_encoder_v2_2_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work g709_rs_encoder_v2_2_7 -f /home/nick/fpga_cores/approx_multiplier/sim/./g709_rs_encoder_v2_2_7/.cxl.vhdl.g709_rs_encoder_v2_2_7.g709_rs_encoder_v2_2_7.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/c_mux_bus_v12_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap c_mux_bus_v12_0_6 /home/nick/fpga_cores/approx_multiplier/sim/c_mux_bus_v12_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work c_mux_bus_v12_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./c_mux_bus_v12_0_6/.cxl.vhdl.c_mux_bus_v12_0_6.c_mux_bus_v12_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_utils_v2_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_utils_v2_0_6 /home/nick/fpga_cores/approx_multiplier/sim/axi_utils_v2_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_utils_v2_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_utils_v2_0_6/.cxl.vhdl.axi_utils_v2_0_6.axi_utils_v2_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/rs_toolbox_v9_0_8
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap rs_toolbox_v9_0_8 /home/nick/fpga_cores/approx_multiplier/sim/rs_toolbox_v9_0_8
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work rs_toolbox_v9_0_8 -f /home/nick/fpga_cores/approx_multiplier/sim/./rs_toolbox_v9_0_8/.cxl.vhdl.rs_toolbox_v9_0_8.rs_toolbox_v9_0_8.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/g709_rs_decoder_v2_2_9
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap g709_rs_decoder_v2_2_9 /home/nick/fpga_cores/approx_multiplier/sim/g709_rs_decoder_v2_2_9
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work g709_rs_decoder_v2_2_9 -f /home/nick/fpga_cores/approx_multiplier/sim/./g709_rs_decoder_v2_2_9/.cxl.vhdl.g709_rs_decoder_v2_2_9.g709_rs_decoder_v2_2_9.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/g709_fec_v2_4_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap g709_fec_v2_4_2 /home/nick/fpga_cores/approx_multiplier/sim/g709_fec_v2_4_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work g709_fec_v2_4_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./g709_fec_v2_4_2/.cxl.vhdl.g709_fec_v2_4_2.g709_fec_v2_4_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/bs_switch_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap bs_switch_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/bs_switch_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work bs_switch_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./bs_switch_v1_0_0/.cxl.verilog.bs_switch_v1_0_0.bs_switch_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/fec_5g_common_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap fec_5g_common_v1_0_1 /home/nick/fpga_cores/approx_multiplier/sim/fec_5g_common_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L fec_5g_common_v1_0_1 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work fec_5g_common_v1_0_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./fec_5g_common_v1_0_1/.cxl.systemverilog.fec_5g_common_v1_0_1.fec_5g_common_v1_0_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_vip_v1_1_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_vip_v1_1_6 /home/nick/fpga_cores/approx_multiplier/sim/axi_vip_v1_1_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L axi_vip_v1_1_6 -L xilinx_vip +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work axi_vip_v1_1_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_vip_v1_1_6/.cxl.systemverilog.axi_vip_v1_1_6.axi_vip_v1_1_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/processing_system7_vip_v1_0_8
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap processing_system7_vip_v1_0_8 /home/nick/fpga_cores/approx_multiplier/sim/processing_system7_vip_v1_0_8
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L axi_vip_v1_1_6 -L processing_system7_vip_v1_0_8 -L xilinx_vip +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work processing_system7_vip_v1_0_8 -f /home/nick/fpga_cores/approx_multiplier/sim/./processing_system7_vip_v1_0_8/.cxl.systemverilog.processing_system7_vip_v1_0_8.processing_system7_vip_v1_0_8.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/lib_srl_fifo_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap lib_srl_fifo_v1_0_2 /home/nick/fpga_cores/approx_multiplier/sim/lib_srl_fifo_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work lib_srl_fifo_v1_0_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./lib_srl_fifo_v1_0_2/.cxl.vhdl.lib_srl_fifo_v1_0_2.lib_srl_fifo_v1_0_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_uartlite_v2_0_24
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_uartlite_v2_0_24 /home/nick/fpga_cores/approx_multiplier/sim/axi_uartlite_v2_0_24
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_uartlite_v2_0_24 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_uartlite_v2_0_24/.cxl.vhdl.axi_uartlite_v2_0_24.axi_uartlite_v2_0_24.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/tmr_sem_v1_0_10
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap tmr_sem_v1_0_10 /home/nick/fpga_cores/approx_multiplier/sim/tmr_sem_v1_0_10
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work tmr_sem_v1_0_10 -f /home/nick/fpga_cores/approx_multiplier/sim/./tmr_sem_v1_0_10/.cxl.vhdl.tmr_sem_v1_0_10.tmr_sem_v1_0_10.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_tc_v6_1_13
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_tc_v6_1_13 /home/nick/fpga_cores/approx_multiplier/sim/v_tc_v6_1_13
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work v_tc_v6_1_13 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_tc_v6_1_13/.cxl.vhdl.v_tc_v6_1_13.v_tc_v6_1_13.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_cfa_v7_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_cfa_v7_0_14 /home/nick/fpga_cores/approx_multiplier/sim/v_cfa_v7_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work v_cfa_v7_0_14 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_cfa_v7_0_14/.cxl.vhdl.v_cfa_v7_0_14.v_cfa_v7_0_14.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/zynq_ultra_ps_e_vip_v1_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap zynq_ultra_ps_e_vip_v1_0_6 /home/nick/fpga_cores/approx_multiplier/sim/zynq_ultra_ps_e_vip_v1_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L axi_vip_v1_1_6 -L zynq_ultra_ps_e_vip_v1_0_6 -L xilinx_vip +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work zynq_ultra_ps_e_vip_v1_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./zynq_ultra_ps_e_vip_v1_0_6/.cxl.systemverilog.zynq_ultra_ps_e_vip_v1_0_6.zynq_ultra_ps_e_vip_v1_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axis_broadcaster_v1_1_19
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axis_broadcaster_v1_1_19 /home/nick/fpga_cores/approx_multiplier/sim/axis_broadcaster_v1_1_19
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axis_broadcaster_v1_1_19 -f /home/nick/fpga_cores/approx_multiplier/sim/./axis_broadcaster_v1_1_19/.cxl.verilog.axis_broadcaster_v1_1_19.axis_broadcaster_v1_1_19.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axis_register_slice_v1_1_20
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axis_register_slice_v1_1_20 /home/nick/fpga_cores/approx_multiplier/sim/axis_register_slice_v1_1_20
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axis_register_slice_v1_1_20 -f /home/nick/fpga_cores/approx_multiplier/sim/./axis_register_slice_v1_1_20/.cxl.verilog.axis_register_slice_v1_1_20.axis_register_slice_v1_1_20.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axis_dwidth_converter_v1_1_19
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axis_dwidth_converter_v1_1_19 /home/nick/fpga_cores/approx_multiplier/sim/axis_dwidth_converter_v1_1_19
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axis_dwidth_converter_v1_1_19 -f /home/nick/fpga_cores/approx_multiplier/sim/./axis_dwidth_converter_v1_1_19/.cxl.verilog.axis_dwidth_converter_v1_1_19.axis_dwidth_converter_v1_1_19.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axis_switch_v1_1_20
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axis_switch_v1_1_20 /home/nick/fpga_cores/approx_multiplier/sim/axis_switch_v1_1_20
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axis_switch_v1_1_20 -f /home/nick/fpga_cores/approx_multiplier/sim/./axis_switch_v1_1_20/.cxl.verilog.axis_switch_v1_1_20.axis_switch_v1_1_20.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_mm2s_mapper_v1_1_19
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_mm2s_mapper_v1_1_19 /home/nick/fpga_cores/approx_multiplier/sim/axi_mm2s_mapper_v1_1_19
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axi_mm2s_mapper_v1_1_19 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_mm2s_mapper_v1_1_19/.cxl.verilog.axi_mm2s_mapper_v1_1_19.axi_mm2s_mapper_v1_1_19.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_register_slice_v2_1_20
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_register_slice_v2_1_20 /home/nick/fpga_cores/approx_multiplier/sim/axi_register_slice_v2_1_20
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axi_register_slice_v2_1_20 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_register_slice_v2_1_20/.cxl.verilog.axi_register_slice_v2_1_20.axi_register_slice_v2_1_20.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_mmu_v2_1_18
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_mmu_v2_1_18 /home/nick/fpga_cores/approx_multiplier/sim/axi_mmu_v2_1_18
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axi_mmu_v2_1_18 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_mmu_v2_1_18/.cxl.verilog.axi_mmu_v2_1_18.axi_mmu_v2_1_18.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/pr_decoupler_v1_0_8
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap pr_decoupler_v1_0_8 /home/nick/fpga_cores/approx_multiplier/sim/pr_decoupler_v1_0_8
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work pr_decoupler_v1_0_8 -f /home/nick/fpga_cores/approx_multiplier/sim/./pr_decoupler_v1_0_8/.cxl.vhdl.pr_decoupler_v1_0_8.pr_decoupler_v1_0_8.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/lib_bmg_v1_0_13
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap lib_bmg_v1_0_13 /home/nick/fpga_cores/approx_multiplier/sim/lib_bmg_v1_0_13
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work lib_bmg_v1_0_13 -f /home/nick/fpga_cores/approx_multiplier/sim/./lib_bmg_v1_0_13/.cxl.vhdl.lib_bmg_v1_0_13.lib_bmg_v1_0_13.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/can_v5_0_23
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap can_v5_0_23 /home/nick/fpga_cores/approx_multiplier/sim/can_v5_0_23
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work can_v5_0_23 -f /home/nick/fpga_cores/approx_multiplier/sim/./can_v5_0_23/.cxl.vhdl.can_v5_0_23.can_v5_0_23.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_master_burst_v2_0_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_master_burst_v2_0_7 /home/nick/fpga_cores/approx_multiplier/sim/axi_master_burst_v2_0_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_master_burst_v2_0_7 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_master_burst_v2_0_7/.cxl.vhdl.axi_master_burst_v2_0_7.axi_master_burst_v2_0_7.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/lib_fifo_v1_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap lib_fifo_v1_0_14 /home/nick/fpga_cores/approx_multiplier/sim/lib_fifo_v1_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work lib_fifo_v1_0_14 -f /home/nick/fpga_cores/approx_multiplier/sim/./lib_fifo_v1_0_14/.cxl.vhdl.lib_fifo_v1_0_14.lib_fifo_v1_0_14.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_tft_v2_0_23
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_tft_v2_0_23 /home/nick/fpga_cores/approx_multiplier/sim/axi_tft_v2_0_23
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_tft_v2_0_23 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_tft_v2_0_23/.cxl.vhdl.axi_tft_v2_0_23.axi_tft_v2_0_23.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axi_tft_v2_0_23 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_tft_v2_0_23/.cxl.verilog.axi_tft_v2_0_23.axi_tft_v2_0_23.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_msg_v1_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_msg_v1_0_6 /home/nick/fpga_cores/approx_multiplier/sim/axi_msg_v1_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_msg_v1_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_msg_v1_0_6/.cxl.vhdl.axi_msg_v1_0_6.axi_msg_v1_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ba317
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ba317 /home/nick/fpga_cores/approx_multiplier/sim/ba317
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work ba317 -f /home/nick/fpga_cores/approx_multiplier/sim/./ba317/.cxl.vhdl.ba317.ba317.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_ccm_v6_0_15
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_ccm_v6_0_15 /home/nick/fpga_cores/approx_multiplier/sim/v_ccm_v6_0_15
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work v_ccm_v6_0_15 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_ccm_v6_0_15/.cxl.vhdl.v_ccm_v6_0_15.v_ccm_v6_0_15.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/dsp_macro_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap dsp_macro_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/dsp_macro_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work dsp_macro_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./dsp_macro_v1_0_0/.cxl.vhdl.dsp_macro_v1_0_0.dsp_macro_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_datamover_v5_1_22
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_datamover_v5_1_22 /home/nick/fpga_cores/approx_multiplier/sim/axi_datamover_v5_1_22
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_datamover_v5_1_22 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_datamover_v5_1_22/.cxl.vhdl.axi_datamover_v5_1_22.axi_datamover_v5_1_22.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_vdma_v6_3_8
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_vdma_v6_3_8 /home/nick/fpga_cores/approx_multiplier/sim/axi_vdma_v6_3_8
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_vdma_v6_3_8 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_vdma_v6_3_8/.cxl.vhdl.axi_vdma_v6_3_8.axi_vdma_v6_3_8.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axi_vdma_v6_3_8 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_vdma_v6_3_8/.cxl.verilog.axi_vdma_v6_3_8.axi_vdma_v6_3_8.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axis_combiner_v1_1_18
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axis_combiner_v1_1_18 /home/nick/fpga_cores/approx_multiplier/sim/axis_combiner_v1_1_18
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axis_combiner_v1_1_18 -f /home/nick/fpga_cores/approx_multiplier/sim/./axis_combiner_v1_1_18/.cxl.verilog.axis_combiner_v1_1_18.axis_combiner_v1_1_18.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_ethernet_buffer_v2_0_21
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_ethernet_buffer_v2_0_21 /home/nick/fpga_cores/approx_multiplier/sim/axi_ethernet_buffer_v2_0_21
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_ethernet_buffer_v2_0_21 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_ethernet_buffer_v2_0_21/.cxl.vhdl.axi_ethernet_buffer_v2_0_21.axi_ethernet_buffer_v2_0_21.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/prc_v1_3_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap prc_v1_3_3 /home/nick/fpga_cores/approx_multiplier/sim/prc_v1_3_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work prc_v1_3_3 -f /home/nick/fpga_cores/approx_multiplier/sim/./prc_v1_3_3/.cxl.vhdl.prc_v1_3_3.prc_v1_3_3.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/floating_point_v7_0_17
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap floating_point_v7_0_17 /home/nick/fpga_cores/approx_multiplier/sim/floating_point_v7_0_17
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work floating_point_v7_0_17 -f /home/nick/fpga_cores/approx_multiplier/sim/./floating_point_v7_0_17/.cxl.vhdl.floating_point_v7_0_17.floating_point_v7_0_17.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/cmpy_v6_0_18
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap cmpy_v6_0_18 /home/nick/fpga_cores/approx_multiplier/sim/cmpy_v6_0_18
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work cmpy_v6_0_18 -f /home/nick/fpga_cores/approx_multiplier/sim/./cmpy_v6_0_18/.cxl.vhdl.cmpy_v6_0_18.cmpy_v6_0_18.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xfft_v9_0_18
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xfft_v9_0_18 /home/nick/fpga_cores/approx_multiplier/sim/xfft_v9_0_18
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work xfft_v9_0_18 -f /home/nick/fpga_cores/approx_multiplier/sim/./xfft_v9_0_18/.cxl.vhdl.xfft_v9_0_18.xfft_v9_0_18.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/iomodule_v3_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap iomodule_v3_0 /home/nick/fpga_cores/approx_multiplier/sim/iomodule_v3_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work iomodule_v3_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./iomodule_v3_0/.cxl.vhdl.iomodule_v3_0.iomodule_v3_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/lmb_bram_if_cntlr_v4_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap lmb_bram_if_cntlr_v4_0 /home/nick/fpga_cores/approx_multiplier/sim/lmb_bram_if_cntlr_v4_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work lmb_bram_if_cntlr_v4_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./lmb_bram_if_cntlr_v4_0/.cxl.vhdl.lmb_bram_if_cntlr_v4_0.lmb_bram_if_cntlr_v4_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/lmb_v10_v3_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap lmb_v10_v3_0 /home/nick/fpga_cores/approx_multiplier/sim/lmb_v10_v3_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work lmb_v10_v3_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./lmb_v10_v3_0/.cxl.vhdl.lmb_v10_v3_0.lmb_v10_v3_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_lite_ipif_v3_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_lite_ipif_v3_0 /home/nick/fpga_cores/approx_multiplier/sim/axi_lite_ipif_v3_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_lite_ipif_v3_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_lite_ipif_v3_0/.cxl.vhdl.axi_lite_ipif_v3_0.axi_lite_ipif_v3_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/mdm_v3_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap mdm_v3_2 /home/nick/fpga_cores/approx_multiplier/sim/mdm_v3_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work mdm_v3_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./mdm_v3_2/.cxl.vhdl.mdm_v3_2.mdm_v3_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/microblaze_mcs_v2_3_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap microblaze_mcs_v2_3_6 /home/nick/fpga_cores/approx_multiplier/sim/microblaze_mcs_v2_3_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work microblaze_mcs_v2_3_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./microblaze_mcs_v2_3_6/.cxl.vhdl.microblaze_mcs_v2_3_6.microblaze_mcs_v2_3_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axis_vio_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axis_vio_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/axis_vio_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L axis_vio_v1_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work axis_vio_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./axis_vio_v1_0_0/.cxl.systemverilog.axis_vio_v1_0_0.axis_vio_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axis_accelerator_adapter_v2_1_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axis_accelerator_adapter_v2_1_16 /home/nick/fpga_cores/approx_multiplier/sim/axis_accelerator_adapter_v2_1_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axis_accelerator_adapter_v2_1_16 -f /home/nick/fpga_cores/approx_multiplier/sim/./axis_accelerator_adapter_v2_1_16/.cxl.vhdl.axis_accelerator_adapter_v2_1_16.axis_accelerator_adapter_v2_1_16.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/fec_5g_common_v1_1_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap fec_5g_common_v1_1_1 /home/nick/fpga_cores/approx_multiplier/sim/fec_5g_common_v1_1_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L fec_5g_common_v1_1_1 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work fec_5g_common_v1_1_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./fec_5g_common_v1_1_1/.cxl.systemverilog.fec_5g_common_v1_1_1.fec_5g_common_v1_1_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/polar_v1_0_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap polar_v1_0_4 /home/nick/fpga_cores/approx_multiplier/sim/polar_v1_0_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L fec_5g_common_v1_1_1 -L polar_v1_0_4 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work polar_v1_0_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./polar_v1_0_4/.cxl.systemverilog.polar_v1_0_4.polar_v1_0_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ieee802d3_25g_rs_fec_v1_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ieee802d3_25g_rs_fec_v1_0_14 /home/nick/fpga_cores/approx_multiplier/sim/ieee802d3_25g_rs_fec_v1_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work ieee802d3_25g_rs_fec_v1_0_14 -f /home/nick/fpga_cores/approx_multiplier/sim/./ieee802d3_25g_rs_fec_v1_0_14/.cxl.verilog.ieee802d3_25g_rs_fec_v1_0_14.ieee802d3_25g_rs_fec_v1_0_14.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_fifo_mm_s_v4_2_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_fifo_mm_s_v4_2_2 /home/nick/fpga_cores/approx_multiplier/sim/axi_fifo_mm_s_v4_2_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_fifo_mm_s_v4_2_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_fifo_mm_s_v4_2_2/.cxl.vhdl.axi_fifo_mm_s_v4_2_2.axi_fifo_mm_s_v4_2_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xfft_v9_1_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xfft_v9_1_3 /home/nick/fpga_cores/approx_multiplier/sim/xfft_v9_1_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work xfft_v9_1_3 -f /home/nick/fpga_cores/approx_multiplier/sim/./xfft_v9_1_3/.cxl.vhdl.xfft_v9_1_3.xfft_v9_1_3.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/etrnic_v1_0_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap etrnic_v1_0_4 /home/nick/fpga_cores/approx_multiplier/sim/etrnic_v1_0_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work etrnic_v1_0_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./etrnic_v1_0_4/.cxl.verilog.etrnic_v1_0_4.etrnic_v1_0_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axis_clock_converter_v1_1_21
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axis_clock_converter_v1_1_21 /home/nick/fpga_cores/approx_multiplier/sim/axis_clock_converter_v1_1_21
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axis_clock_converter_v1_1_21 -f /home/nick/fpga_cores/approx_multiplier/sim/./axis_clock_converter_v1_1_21/.cxl.verilog.axis_clock_converter_v1_1_21.axis_clock_converter_v1_1_21.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/mdm_v3_2_17
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap mdm_v3_2_17 /home/nick/fpga_cores/approx_multiplier/sim/mdm_v3_2_17
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work mdm_v3_2_17 -f /home/nick/fpga_cores/approx_multiplier/sim/./mdm_v3_2_17/.cxl.vhdl.mdm_v3_2_17.mdm_v3_2_17.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xfft_v7_2_10
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xfft_v7_2_10 /home/nick/fpga_cores/approx_multiplier/sim/xfft_v7_2_10
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work xfft_v7_2_10 -f /home/nick/fpga_cores/approx_multiplier/sim/./xfft_v7_2_10/.cxl.vhdl.xfft_v7_2_10.xfft_v7_2_10.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/lte_fft_v2_0_19
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap lte_fft_v2_0_19 /home/nick/fpga_cores/approx_multiplier/sim/lte_fft_v2_0_19
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work lte_fft_v2_0_19 -f /home/nick/fpga_cores/approx_multiplier/sim/./lte_fft_v2_0_19/.cxl.vhdl.lte_fft_v2_0_19.lte_fft_v2_0_19.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xbip_dsp48_multadd_v3_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xbip_dsp48_multadd_v3_0_6 /home/nick/fpga_cores/approx_multiplier/sim/xbip_dsp48_multadd_v3_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work xbip_dsp48_multadd_v3_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./xbip_dsp48_multadd_v3_0_6/.cxl.vhdl.xbip_dsp48_multadd_v3_0_6.xbip_dsp48_multadd_v3_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/dds_compiler_v6_0_19
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap dds_compiler_v6_0_19 /home/nick/fpga_cores/approx_multiplier/sim/dds_compiler_v6_0_19
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work dds_compiler_v6_0_19 -f /home/nick/fpga_cores/approx_multiplier/sim/./dds_compiler_v6_0_19/.cxl.vhdl.dds_compiler_v6_0_19.dds_compiler_v6_0_19.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/fir_compiler_v7_2_13
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap fir_compiler_v7_2_13 /home/nick/fpga_cores/approx_multiplier/sim/fir_compiler_v7_2_13
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work fir_compiler_v7_2_13 -f /home/nick/fpga_cores/approx_multiplier/sim/./fir_compiler_v7_2_13/.cxl.vhdl.fir_compiler_v7_2_13.fir_compiler_v7_2_13.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xbip_multadd_v3_0_15
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xbip_multadd_v3_0_15 /home/nick/fpga_cores/approx_multiplier/sim/xbip_multadd_v3_0_15
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work xbip_multadd_v3_0_15 -f /home/nick/fpga_cores/approx_multiplier/sim/./xbip_multadd_v3_0_15/.cxl.vhdl.xbip_multadd_v3_0_15.xbip_multadd_v3_0_15.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xbip_dsp48_mult_v3_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xbip_dsp48_mult_v3_0_6 /home/nick/fpga_cores/approx_multiplier/sim/xbip_dsp48_mult_v3_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work xbip_dsp48_mult_v3_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./xbip_dsp48_mult_v3_0_6/.cxl.vhdl.xbip_dsp48_mult_v3_0_6.xbip_dsp48_mult_v3_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/lte_rach_detector_v3_1_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap lte_rach_detector_v3_1_6 /home/nick/fpga_cores/approx_multiplier/sim/lte_rach_detector_v3_1_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work lte_rach_detector_v3_1_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./lte_rach_detector_v3_1_6/.cxl.vhdl.lte_rach_detector_v3_1_6.lte_rach_detector_v3_1_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/lte_ul_channel_decoder_v4_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap lte_ul_channel_decoder_v4_0_16 /home/nick/fpga_cores/approx_multiplier/sim/lte_ul_channel_decoder_v4_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work lte_ul_channel_decoder_v4_0_16 -f /home/nick/fpga_cores/approx_multiplier/sim/./lte_ul_channel_decoder_v4_0_16/.cxl.vhdl.lte_ul_channel_decoder_v4_0_16.lte_ul_channel_decoder_v4_0_16.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/rs_encoder_v9_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap rs_encoder_v9_0_16 /home/nick/fpga_cores/approx_multiplier/sim/rs_encoder_v9_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work rs_encoder_v9_0_16 -f /home/nick/fpga_cores/approx_multiplier/sim/./rs_encoder_v9_0_16/.cxl.vhdl.rs_encoder_v9_0_16.rs_encoder_v9_0_16.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/g975_efec_i7_v2_0_18
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap g975_efec_i7_v2_0_18 /home/nick/fpga_cores/approx_multiplier/sim/g975_efec_i7_v2_0_18
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work g975_efec_i7_v2_0_18 -f /home/nick/fpga_cores/approx_multiplier/sim/./g975_efec_i7_v2_0_18/.cxl.vhdl.g975_efec_i7_v2_0_18.g975_efec_i7_v2_0_18.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/lte_3gpp_mimo_decoder_v3_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap lte_3gpp_mimo_decoder_v3_0_16 /home/nick/fpga_cores/approx_multiplier/sim/lte_3gpp_mimo_decoder_v3_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work lte_3gpp_mimo_decoder_v3_0_16 -f /home/nick/fpga_cores/approx_multiplier/sim/./lte_3gpp_mimo_decoder_v3_0_16/.cxl.vhdl.lte_3gpp_mimo_decoder_v3_0_16.lte_3gpp_mimo_decoder_v3_0_16.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/tri_mode_ethernet_mac_v9_0_15
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap tri_mode_ethernet_mac_v9_0_15 /home/nick/fpga_cores/approx_multiplier/sim/tri_mode_ethernet_mac_v9_0_15
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work tri_mode_ethernet_mac_v9_0_15 -f /home/nick/fpga_cores/approx_multiplier/sim/./tri_mode_ethernet_mac_v9_0_15/.cxl.vhdl.tri_mode_ethernet_mac_v9_0_15.tri_mode_ethernet_mac_v9_0_15.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work tri_mode_ethernet_mac_v9_0_15 -f /home/nick/fpga_cores/approx_multiplier/sim/./tri_mode_ethernet_mac_v9_0_15/.cxl.verilog.tri_mode_ethernet_mac_v9_0_15.tri_mode_ethernet_mac_v9_0_15.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/g709_fec_v2_3_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap g709_fec_v2_3_6 /home/nick/fpga_cores/approx_multiplier/sim/g709_fec_v2_3_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work g709_fec_v2_3_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./g709_fec_v2_3_6/.cxl.vhdl.g709_fec_v2_3_6.g709_fec_v2_3_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_clock_converter_v2_1_19
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_clock_converter_v2_1_19 /home/nick/fpga_cores/approx_multiplier/sim/axi_clock_converter_v2_1_19
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axi_clock_converter_v2_1_19 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_clock_converter_v2_1_19/.cxl.verilog.axi_clock_converter_v2_1_19.axi_clock_converter_v2_1_19.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_data_fifo_v2_1_19
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_data_fifo_v2_1_19 /home/nick/fpga_cores/approx_multiplier/sim/axi_data_fifo_v2_1_19
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axi_data_fifo_v2_1_19 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_data_fifo_v2_1_19/.cxl.verilog.axi_data_fifo_v2_1_19.axi_data_fifo_v2_1_19.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_protocol_converter_v2_1_20
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_protocol_converter_v2_1_20 /home/nick/fpga_cores/approx_multiplier/sim/axi_protocol_converter_v2_1_20
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axi_protocol_converter_v2_1_20 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_protocol_converter_v2_1_20/.cxl.verilog.axi_protocol_converter_v2_1_20.axi_protocol_converter_v2_1_20.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_dwidth_converter_v2_1_20
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_dwidth_converter_v2_1_20 /home/nick/fpga_cores/approx_multiplier/sim/axi_dwidth_converter_v2_1_20
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axi_dwidth_converter_v2_1_20 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_dwidth_converter_v2_1_20/.cxl.verilog.axi_dwidth_converter_v2_1_20.axi_dwidth_converter_v2_1_20.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/viterbi_v9_1_12
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap viterbi_v9_1_12 /home/nick/fpga_cores/approx_multiplier/sim/viterbi_v9_1_12
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work viterbi_v9_1_12 -f /home/nick/fpga_cores/approx_multiplier/sim/./viterbi_v9_1_12/.cxl.vhdl.viterbi_v9_1_12.viterbi_v9_1_12.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/div_gen_v5_1_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap div_gen_v5_1_16 /home/nick/fpga_cores/approx_multiplier/sim/div_gen_v5_1_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work div_gen_v5_1_16 -f /home/nick/fpga_cores/approx_multiplier/sim/./div_gen_v5_1_16/.cxl.vhdl.div_gen_v5_1_16.div_gen_v5_1_16.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/tcc_encoder_3gpplte_v4_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap tcc_encoder_3gpplte_v4_0_16 /home/nick/fpga_cores/approx_multiplier/sim/tcc_encoder_3gpplte_v4_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work tcc_encoder_3gpplte_v4_0_16 -f /home/nick/fpga_cores/approx_multiplier/sim/./tcc_encoder_3gpplte_v4_0_16/.cxl.vhdl.tcc_encoder_3gpplte_v4_0_16.tcc_encoder_3gpplte_v4_0_16.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/lte_dl_channel_encoder_v4_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap lte_dl_channel_encoder_v4_0_1 /home/nick/fpga_cores/approx_multiplier/sim/lte_dl_channel_encoder_v4_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work lte_dl_channel_encoder_v4_0_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./lte_dl_channel_encoder_v4_0_1/.cxl.vhdl.lte_dl_channel_encoder_v4_0_1.lte_dl_channel_encoder_v4_0_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xbip_dsp48_acc_v3_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xbip_dsp48_acc_v3_0_6 /home/nick/fpga_cores/approx_multiplier/sim/xbip_dsp48_acc_v3_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work xbip_dsp48_acc_v3_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./xbip_dsp48_acc_v3_0_6/.cxl.vhdl.xbip_dsp48_acc_v3_0_6.xbip_dsp48_acc_v3_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xbip_accum_v3_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xbip_accum_v3_0_6 /home/nick/fpga_cores/approx_multiplier/sim/xbip_accum_v3_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work xbip_accum_v3_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./xbip_accum_v3_0_6/.cxl.vhdl.xbip_accum_v3_0_6.xbip_accum_v3_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/c_accum_v12_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap c_accum_v12_0_14 /home/nick/fpga_cores/approx_multiplier/sim/c_accum_v12_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work c_accum_v12_0_14 -f /home/nick/fpga_cores/approx_multiplier/sim/./c_accum_v12_0_14/.cxl.vhdl.c_accum_v12_0_14.c_accum_v12_0_14.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/cpri_v8_11_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap cpri_v8_11_0 /home/nick/fpga_cores/approx_multiplier/sim/cpri_v8_11_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work cpri_v8_11_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./cpri_v8_11_0/.cxl.vhdl.cpri_v8_11_0.cpri_v8_11_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L cpri_v8_11_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work cpri_v8_11_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./cpri_v8_11_0/.cxl.systemverilog.cpri_v8_11_0.cpri_v8_11_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi4stream_vip_v1_1_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi4stream_vip_v1_1_6 /home/nick/fpga_cores/approx_multiplier/sim/axi4stream_vip_v1_1_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L axi4stream_vip_v1_1_6 -L xilinx_vip +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work axi4stream_vip_v1_1_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi4stream_vip_v1_1_6/.cxl.systemverilog.axi4stream_vip_v1_1_6.axi4stream_vip_v1_1_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/flexo_100g_rs_fec_v1_0_12
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap flexo_100g_rs_fec_v1_0_12 /home/nick/fpga_cores/approx_multiplier/sim/flexo_100g_rs_fec_v1_0_12
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work flexo_100g_rs_fec_v1_0_12 -f /home/nick/fpga_cores/approx_multiplier/sim/./flexo_100g_rs_fec_v1_0_12/.cxl.verilog.flexo_100g_rs_fec_v1_0_12.flexo_100g_rs_fec_v1_0_12.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/convolution_v9_0_15
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap convolution_v9_0_15 /home/nick/fpga_cores/approx_multiplier/sim/convolution_v9_0_15
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work convolution_v9_0_15 -f /home/nick/fpga_cores/approx_multiplier/sim/./convolution_v9_0_15/.cxl.vhdl.convolution_v9_0_15.convolution_v9_0_15.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/canfd_v2_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap canfd_v2_0_2 /home/nick/fpga_cores/approx_multiplier/sim/canfd_v2_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work canfd_v2_0_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./canfd_v2_0_2/.cxl.verilog.canfd_v2_0_2.canfd_v2_0_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/perf_axi_tg_v1_0_9
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap perf_axi_tg_v1_0_9 /home/nick/fpga_cores/approx_multiplier/sim/perf_axi_tg_v1_0_9
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L axi4stream_vip_v1_1_6 -L axi_vip_v1_1_6 -L perf_axi_tg_v1_0_9 -L xilinx_vip +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work perf_axi_tg_v1_0_9 -f /home/nick/fpga_cores/approx_multiplier/sim/./perf_axi_tg_v1_0_9/.cxl.systemverilog.perf_axi_tg_v1_0_9.perf_axi_tg_v1_0_9.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axis_data_fifo_v2_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axis_data_fifo_v2_0_2 /home/nick/fpga_cores/approx_multiplier/sim/axis_data_fifo_v2_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axis_data_fifo_v2_0_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./axis_data_fifo_v2_0_2/.cxl.verilog.axis_data_fifo_v2_0_2.axis_data_fifo_v2_0_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/videoaxi4s_bridge_v1_0_5
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap videoaxi4s_bridge_v1_0_5 /home/nick/fpga_cores/approx_multiplier/sim/videoaxi4s_bridge_v1_0_5
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work videoaxi4s_bridge_v1_0_5 -f /home/nick/fpga_cores/approx_multiplier/sim/./videoaxi4s_bridge_v1_0_5/.cxl.verilog.videoaxi4s_bridge_v1_0_5.videoaxi4s_bridge_v1_0_5.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/etrnic_v1_1_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap etrnic_v1_1_3 /home/nick/fpga_cores/approx_multiplier/sim/etrnic_v1_1_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work etrnic_v1_1_3 -f /home/nick/fpga_cores/approx_multiplier/sim/./etrnic_v1_1_3/.cxl.verilog.etrnic_v1_1_3.etrnic_v1_1_3.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ieee802d3_50g_rs_fec_v2_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ieee802d3_50g_rs_fec_v2_0_2 /home/nick/fpga_cores/approx_multiplier/sim/ieee802d3_50g_rs_fec_v2_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work ieee802d3_50g_rs_fec_v2_0_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./ieee802d3_50g_rs_fec_v2_0_2/.cxl.verilog.ieee802d3_50g_rs_fec_v2_0_2.ieee802d3_50g_rs_fec_v2_0_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_timer_v2_0_22
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_timer_v2_0_22 /home/nick/fpga_cores/approx_multiplier/sim/axi_timer_v2_0_22
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_timer_v2_0_22 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_timer_v2_0_22/.cxl.vhdl.axi_timer_v2_0_22.axi_timer_v2_0_22.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ieee802d3_200g_rs_fec_v1_0_8
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ieee802d3_200g_rs_fec_v1_0_8 /home/nick/fpga_cores/approx_multiplier/sim/ieee802d3_200g_rs_fec_v1_0_8
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work ieee802d3_200g_rs_fec_v1_0_8 -f /home/nick/fpga_cores/approx_multiplier/sim/./ieee802d3_200g_rs_fec_v1_0_8/.cxl.verilog.ieee802d3_200g_rs_fec_v1_0_8.ieee802d3_200g_rs_fec_v1_0_8.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_protocol_checker_v2_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_protocol_checker_v2_0_6 /home/nick/fpga_cores/approx_multiplier/sim/axi_protocol_checker_v2_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_6 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work axi_protocol_checker_v2_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_protocol_checker_v2_0_6/.cxl.systemverilog.axi_protocol_checker_v2_0_6.axi_protocol_checker_v2_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/srio_gen2_v4_1_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap srio_gen2_v4_1_7 /home/nick/fpga_cores/approx_multiplier/sim/srio_gen2_v4_1_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work srio_gen2_v4_1_7 -f /home/nick/fpga_cores/approx_multiplier/sim/./srio_gen2_v4_1_7/.cxl.vhdl.srio_gen2_v4_1_7.srio_gen2_v4_1_7.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work srio_gen2_v4_1_7 -f /home/nick/fpga_cores/approx_multiplier/sim/./srio_gen2_v4_1_7/.cxl.verilog.srio_gen2_v4_1_7.srio_gen2_v4_1_7.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/lte_dl_channel_encoder_v3_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap lte_dl_channel_encoder_v3_0_16 /home/nick/fpga_cores/approx_multiplier/sim/lte_dl_channel_encoder_v3_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work lte_dl_channel_encoder_v3_0_16 -f /home/nick/fpga_cores/approx_multiplier/sim/./lte_dl_channel_encoder_v3_0_16/.cxl.vhdl.lte_dl_channel_encoder_v3_0_16.lte_dl_channel_encoder_v3_0_16.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/floating_point_v7_1_9
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap floating_point_v7_1_9 /home/nick/fpga_cores/approx_multiplier/sim/floating_point_v7_1_9
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work floating_point_v7_1_9 -f /home/nick/fpga_cores/approx_multiplier/sim/./floating_point_v7_1_9/.cxl.vhdl.floating_point_v7_1_9.floating_point_v7_1_9.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_pcie_v2_9_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_pcie_v2_9_2 /home/nick/fpga_cores/approx_multiplier/sim/axi_pcie_v2_9_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_pcie_v2_9_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_pcie_v2_9_2/.cxl.vhdl.axi_pcie_v2_9_2.axi_pcie_v2_9_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axi_pcie_v2_9_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_pcie_v2_9_2/.cxl.verilog.axi_pcie_v2_9_2.axi_pcie_v2_9_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/proc_sys_reset_v5_0_13
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap proc_sys_reset_v5_0_13 /home/nick/fpga_cores/approx_multiplier/sim/proc_sys_reset_v5_0_13
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work proc_sys_reset_v5_0_13 -f /home/nick/fpga_cores/approx_multiplier/sim/./proc_sys_reset_v5_0_13/.cxl.vhdl.proc_sys_reset_v5_0_13.proc_sys_reset_v5_0_13.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/interrupt_control_v3_1_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap interrupt_control_v3_1_4 /home/nick/fpga_cores/approx_multiplier/sim/interrupt_control_v3_1_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work interrupt_control_v3_1_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./interrupt_control_v3_1_4/.cxl.vhdl.interrupt_control_v3_1_4.interrupt_control_v3_1_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_hwicap_v3_0_24
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_hwicap_v3_0_24 /home/nick/fpga_cores/approx_multiplier/sim/axi_hwicap_v3_0_24
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_hwicap_v3_0_24 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_hwicap_v3_0_24/.cxl.vhdl.axi_hwicap_v3_0_24.axi_hwicap_v3_0_24.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/mem_tg_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap mem_tg_v1_0_1 /home/nick/fpga_cores/approx_multiplier/sim/mem_tg_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L axis_vio_v1_0_0 -L mem_tg_v1_0_1 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work mem_tg_v1_0_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./mem_tg_v1_0_1/.cxl.systemverilog.mem_tg_v1_0_1.mem_tg_v1_0_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/soft_ecc_proxy_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap soft_ecc_proxy_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/soft_ecc_proxy_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work soft_ecc_proxy_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./soft_ecc_proxy_v1_0_0/.cxl.verilog.soft_ecc_proxy_v1_0_0.soft_ecc_proxy_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_vid_sdi_tx_bridge_v2_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_vid_sdi_tx_bridge_v2_0_0 /home/nick/fpga_cores/approx_multiplier/sim/v_vid_sdi_tx_bridge_v2_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_vid_sdi_tx_bridge_v2_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_vid_sdi_tx_bridge_v2_0_0/.cxl.verilog.v_vid_sdi_tx_bridge_v2_0_0.v_vid_sdi_tx_bridge_v2_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/fir_compiler_v5_2_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap fir_compiler_v5_2_6 /home/nick/fpga_cores/approx_multiplier/sim/fir_compiler_v5_2_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work fir_compiler_v5_2_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./fir_compiler_v5_2_6/.cxl.vhdl.fir_compiler_v5_2_6.fir_compiler_v5_2_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/displayport_v9_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap displayport_v9_0_2 /home/nick/fpga_cores/approx_multiplier/sim/displayport_v9_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work displayport_v9_0_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./displayport_v9_0_2/.cxl.vhdl.displayport_v9_0_2.displayport_v9_0_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work displayport_v9_0_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./displayport_v9_0_2/.cxl.verilog.displayport_v9_0_2.displayport_v9_0_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_axi4s_vid_out_v4_0_10
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_axi4s_vid_out_v4_0_10 /home/nick/fpga_cores/approx_multiplier/sim/v_axi4s_vid_out_v4_0_10
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_axi4s_vid_out_v4_0_10 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_axi4s_vid_out_v4_0_10/.cxl.verilog.v_axi4s_vid_out_v4_0_10.v_axi4s_vid_out_v4_0_10.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/fc32_rs_fec_v1_0_12
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap fc32_rs_fec_v1_0_12 /home/nick/fpga_cores/approx_multiplier/sim/fc32_rs_fec_v1_0_12
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work fc32_rs_fec_v1_0_12 -f /home/nick/fpga_cores/approx_multiplier/sim/./fc32_rs_fec_v1_0_12/.cxl.verilog.fc32_rs_fec_v1_0_12.fc32_rs_fec_v1_0_12.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_uart16550_v2_0_22
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_uart16550_v2_0_22 /home/nick/fpga_cores/approx_multiplier/sim/axi_uart16550_v2_0_22
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_uart16550_v2_0_22 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_uart16550_v2_0_22/.cxl.vhdl.axi_uart16550_v2_0_22.axi_uart16550_v2_0_22.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/cordic_v6_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap cordic_v6_0_16 /home/nick/fpga_cores/approx_multiplier/sim/cordic_v6_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work cordic_v6_0_16 -f /home/nick/fpga_cores/approx_multiplier/sim/./cordic_v6_0_16/.cxl.vhdl.cordic_v6_0_16.cordic_v6_0_16.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_iic_v2_0_23
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_iic_v2_0_23 /home/nick/fpga_cores/approx_multiplier/sim/axi_iic_v2_0_23
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_iic_v2_0_23 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_iic_v2_0_23/.cxl.vhdl.axi_iic_v2_0_23.axi_iic_v2_0_23.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/mailbox_v2_1_12
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap mailbox_v2_1_12 /home/nick/fpga_cores/approx_multiplier/sim/mailbox_v2_1_12
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work mailbox_v2_1_12 -f /home/nick/fpga_cores/approx_multiplier/sim/./mailbox_v2_1_12/.cxl.vhdl.mailbox_v2_1_12.mailbox_v2_1_12.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/dft_v4_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap dft_v4_0_16 /home/nick/fpga_cores/approx_multiplier/sim/dft_v4_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work dft_v4_0_16 -f /home/nick/fpga_cores/approx_multiplier/sim/./dft_v4_0_16/.cxl.vhdl.dft_v4_0_16.dft_v4_0_16.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/lte_3gpp_channel_estimator_v2_0_17
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap lte_3gpp_channel_estimator_v2_0_17 /home/nick/fpga_cores/approx_multiplier/sim/lte_3gpp_channel_estimator_v2_0_17
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work lte_3gpp_channel_estimator_v2_0_17 -f /home/nick/fpga_cores/approx_multiplier/sim/./lte_3gpp_channel_estimator_v2_0_17/.cxl.vhdl.lte_3gpp_channel_estimator_v2_0_17.lte_3gpp_channel_estimator_v2_0_17.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xsdbs_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xsdbs_v1_0_2 /home/nick/fpga_cores/approx_multiplier/sim/xsdbs_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work xsdbs_v1_0_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./xsdbs_v1_0_2/.cxl.verilog.xsdbs_v1_0_2.xsdbs_v1_0_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ernic_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ernic_v1_0_2 /home/nick/fpga_cores/approx_multiplier/sim/ernic_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L ernic_v1_0_2 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work ernic_v1_0_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./ernic_v1_0_2/.cxl.systemverilog.ernic_v1_0_2.ernic_v1_0_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_sideband_util_v1_0_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_sideband_util_v1_0_4 /home/nick/fpga_cores/approx_multiplier/sim/axi_sideband_util_v1_0_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L smartconnect_v1_0 -L axi_sideband_util_v1_0_4 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work axi_sideband_util_v1_0_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_sideband_util_v1_0_4/.cxl.systemverilog.axi_sideband_util_v1_0_4.axi_sideband_util_v1_0_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_crossbar_v2_1_21
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_crossbar_v2_1_21 /home/nick/fpga_cores/approx_multiplier/sim/axi_crossbar_v2_1_21
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axi_crossbar_v2_1_21 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_crossbar_v2_1_21/.cxl.verilog.axi_crossbar_v2_1_21.axi_crossbar_v2_1_21.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_osd_v6_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_osd_v6_0_16 /home/nick/fpga_cores/approx_multiplier/sim/v_osd_v6_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work v_osd_v6_0_16 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_osd_v6_0_16/.cxl.vhdl.v_osd_v6_0_16.v_osd_v6_0_16.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_memory_init_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_memory_init_v1_0_1 /home/nick/fpga_cores/approx_multiplier/sim/axi_memory_init_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L smartconnect_v1_0 -L axi_memory_init_v1_0_1 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work axi_memory_init_v1_0_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_memory_init_v1_0_1/.cxl.systemverilog.axi_memory_init_v1_0_1.axi_memory_init_v1_0_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/pr_axi_shutdown_manager_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap pr_axi_shutdown_manager_v1_0_1 /home/nick/fpga_cores/approx_multiplier/sim/pr_axi_shutdown_manager_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work pr_axi_shutdown_manager_v1_0_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./pr_axi_shutdown_manager_v1_0_1/.cxl.vhdl.pr_axi_shutdown_manager_v1_0_1.pr_axi_shutdown_manager_v1_0_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/qdriv_pl_phy_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap qdriv_pl_phy_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/qdriv_pl_phy_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L mem_pl_v1_0_0 -L qdriv_pl_phy_v1_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work qdriv_pl_phy_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./qdriv_pl_phy_v1_0_0/.cxl.systemverilog.qdriv_pl_phy_v1_0_0.qdriv_pl_phy_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/displayport_v7_0_12
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap displayport_v7_0_12 /home/nick/fpga_cores/approx_multiplier/sim/displayport_v7_0_12
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work displayport_v7_0_12 -f /home/nick/fpga_cores/approx_multiplier/sim/./displayport_v7_0_12/.cxl.vhdl.displayport_v7_0_12.displayport_v7_0_12.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work displayport_v7_0_12 -f /home/nick/fpga_cores/approx_multiplier/sim/./displayport_v7_0_12/.cxl.verilog.displayport_v7_0_12.displayport_v7_0_12.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/displayport_v8_1_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap displayport_v8_1_2 /home/nick/fpga_cores/approx_multiplier/sim/displayport_v8_1_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work displayport_v8_1_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./displayport_v8_1_2/.cxl.vhdl.displayport_v8_1_2.displayport_v8_1_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work displayport_v8_1_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./displayport_v8_1_2/.cxl.verilog.displayport_v8_1_2.displayport_v8_1_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_vfifo_ctrl_v2_0_22
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_vfifo_ctrl_v2_0_22 /home/nick/fpga_cores/approx_multiplier/sim/axi_vfifo_ctrl_v2_0_22
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_vfifo_ctrl_v2_0_22 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_vfifo_ctrl_v2_0_22/.cxl.vhdl.axi_vfifo_ctrl_v2_0_22.axi_vfifo_ctrl_v2_0_22.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_tc_v6_2_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_tc_v6_2_0 /home/nick/fpga_cores/approx_multiplier/sim/v_tc_v6_2_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work v_tc_v6_2_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_tc_v6_2_0/.cxl.vhdl.v_tc_v6_2_0.v_tc_v6_2_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_dp_axi4s_vid_out_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_dp_axi4s_vid_out_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/v_dp_axi4s_vid_out_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_dp_axi4s_vid_out_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_dp_axi4s_vid_out_v1_0_0/.cxl.verilog.v_dp_axi4s_vid_out_v1_0_0.v_dp_axi4s_vid_out_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/tcc_encoder_3gpp_v5_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap tcc_encoder_3gpp_v5_0_16 /home/nick/fpga_cores/approx_multiplier/sim/tcc_encoder_3gpp_v5_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work tcc_encoder_3gpp_v5_0_16 -f /home/nick/fpga_cores/approx_multiplier/sim/./tcc_encoder_3gpp_v5_0_16/.cxl.vhdl.tcc_encoder_3gpp_v5_0_16.tcc_encoder_3gpp_v5_0_16.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_interconnect_v1_7_17
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_interconnect_v1_7_17 /home/nick/fpga_cores/approx_multiplier/sim/axi_interconnect_v1_7_17
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axi_interconnect_v1_7_17 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_interconnect_v1_7_17/.cxl.verilog.axi_interconnect_v1_7_17.axi_interconnect_v1_7_17.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_timebase_wdt_v3_0_12
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_timebase_wdt_v3_0_12 /home/nick/fpga_cores/approx_multiplier/sim/axi_timebase_wdt_v3_0_12
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_timebase_wdt_v3_0_12 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_timebase_wdt_v3_0_12/.cxl.vhdl.axi_timebase_wdt_v3_0_12.axi_timebase_wdt_v3_0_12.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/lte_3gpp_mimo_encoder_v4_0_15
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap lte_3gpp_mimo_encoder_v4_0_15 /home/nick/fpga_cores/approx_multiplier/sim/lte_3gpp_mimo_encoder_v4_0_15
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work lte_3gpp_mimo_encoder_v4_0_15 -f /home/nick/fpga_cores/approx_multiplier/sim/./lte_3gpp_mimo_encoder_v4_0_15/.cxl.vhdl.lte_3gpp_mimo_encoder_v4_0_15.lte_3gpp_mimo_encoder_v4_0_15.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/sd_fec_v1_1_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap sd_fec_v1_1_4 /home/nick/fpga_cores/approx_multiplier/sim/sd_fec_v1_1_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L fec_5g_common_v1_1_1 -L sd_fec_v1_1_4 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work sd_fec_v1_1_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./sd_fec_v1_1_4/.cxl.systemverilog.sd_fec_v1_1_4.sd_fec_v1_1_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_enhance_v8_0_15
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_enhance_v8_0_15 /home/nick/fpga_cores/approx_multiplier/sim/v_enhance_v8_0_15
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work v_enhance_v8_0_15 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_enhance_v8_0_15/.cxl.vhdl.v_enhance_v8_0_15.v_enhance_v8_0_15.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_traffic_gen_v2_0_21
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_traffic_gen_v2_0_21 /home/nick/fpga_cores/approx_multiplier/sim/axi_traffic_gen_v2_0_21
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_traffic_gen_v2_0_21 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_traffic_gen_v2_0_21/.cxl.vhdl.axi_traffic_gen_v2_0_21.axi_traffic_gen_v2_0_21.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axi_traffic_gen_v2_0_21 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_traffic_gen_v2_0_21/.cxl.verilog.axi_traffic_gen_v2_0_21.axi_traffic_gen_v2_0_21.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_emc_v3_0_20
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_emc_v3_0_20 /home/nick/fpga_cores/approx_multiplier/sim/axi_emc_v3_0_20
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_emc_v3_0_20 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_emc_v3_0_20/.cxl.vhdl.axi_emc_v3_0_20.axi_emc_v3_0_20.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axis_data_fifo_v1_1_21
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axis_data_fifo_v1_1_21 /home/nick/fpga_cores/approx_multiplier/sim/axis_data_fifo_v1_1_21
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axis_data_fifo_v1_1_21 -f /home/nick/fpga_cores/approx_multiplier/sim/./axis_data_fifo_v1_1_21/.cxl.verilog.axis_data_fifo_v1_1_21.axis_data_fifo_v1_1_21.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_traffic_gen_v3_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_traffic_gen_v3_0_6 /home/nick/fpga_cores/approx_multiplier/sim/axi_traffic_gen_v3_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_traffic_gen_v3_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_traffic_gen_v3_0_6/.cxl.vhdl.axi_traffic_gen_v3_0_6.axi_traffic_gen_v3_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axi_traffic_gen_v3_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_traffic_gen_v3_0_6/.cxl.verilog.axi_traffic_gen_v3_0_6.axi_traffic_gen_v3_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_hbicap_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_hbicap_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/axi_hbicap_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_hbicap_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_hbicap_v1_0_0/.cxl.vhdl.axi_hbicap_v1_0_0.axi_hbicap_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axis_subset_converter_v1_1_20
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axis_subset_converter_v1_1_20 /home/nick/fpga_cores/approx_multiplier/sim/axis_subset_converter_v1_1_20
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axis_subset_converter_v1_1_20 -f /home/nick/fpga_cores/approx_multiplier/sim/./axis_subset_converter_v1_1_20/.cxl.verilog.axis_subset_converter_v1_1_20.axis_subset_converter_v1_1_20.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/tmr_comparator_v1_0_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap tmr_comparator_v1_0_3 /home/nick/fpga_cores/approx_multiplier/sim/tmr_comparator_v1_0_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work tmr_comparator_v1_0_3 -f /home/nick/fpga_cores/approx_multiplier/sim/./tmr_comparator_v1_0_3/.cxl.vhdl.tmr_comparator_v1_0_3.tmr_comparator_v1_0_3.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ieee802d3_50g_rs_fec_v1_0_12
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ieee802d3_50g_rs_fec_v1_0_12 /home/nick/fpga_cores/approx_multiplier/sim/ieee802d3_50g_rs_fec_v1_0_12
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work ieee802d3_50g_rs_fec_v1_0_12 -f /home/nick/fpga_cores/approx_multiplier/sim/./ieee802d3_50g_rs_fec_v1_0_12/.cxl.verilog.ieee802d3_50g_rs_fec_v1_0_12.ieee802d3_50g_rs_fec_v1_0_12.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_bram_ctrl_v4_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_bram_ctrl_v4_0_14 /home/nick/fpga_cores/approx_multiplier/sim/axi_bram_ctrl_v4_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_bram_ctrl_v4_0_14 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_bram_ctrl_v4_0_14/.cxl.vhdl.axi_bram_ctrl_v4_0_14.axi_bram_ctrl_v4_0_14.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_sg_v4_1_13
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_sg_v4_1_13 /home/nick/fpga_cores/approx_multiplier/sim/axi_sg_v4_1_13
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_sg_v4_1_13 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_sg_v4_1_13/.cxl.vhdl.axi_sg_v4_1_13.axi_sg_v4_1_13.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ieee802d3_400g_rs_fec_v1_0_8
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ieee802d3_400g_rs_fec_v1_0_8 /home/nick/fpga_cores/approx_multiplier/sim/ieee802d3_400g_rs_fec_v1_0_8
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work ieee802d3_400g_rs_fec_v1_0_8 -f /home/nick/fpga_cores/approx_multiplier/sim/./ieee802d3_400g_rs_fec_v1_0_8/.cxl.verilog.ieee802d3_400g_rs_fec_v1_0_8.ieee802d3_400g_rs_fec_v1_0_8.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/amm_axi_bridge_v1_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap amm_axi_bridge_v1_0_6 /home/nick/fpga_cores/approx_multiplier/sim/amm_axi_bridge_v1_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work amm_axi_bridge_v1_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./amm_axi_bridge_v1_0_6/.cxl.verilog.amm_axi_bridge_v1_0_6.amm_axi_bridge_v1_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xbip_dsp48_multacc_v3_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xbip_dsp48_multacc_v3_0_6 /home/nick/fpga_cores/approx_multiplier/sim/xbip_dsp48_multacc_v3_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work xbip_dsp48_multacc_v3_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./xbip_dsp48_multacc_v3_0_6/.cxl.vhdl.xbip_dsp48_multacc_v3_0_6.xbip_dsp48_multacc_v3_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/lte_pucch_receiver_v2_0_17
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap lte_pucch_receiver_v2_0_17 /home/nick/fpga_cores/approx_multiplier/sim/lte_pucch_receiver_v2_0_17
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work lte_pucch_receiver_v2_0_17 -f /home/nick/fpga_cores/approx_multiplier/sim/./lte_pucch_receiver_v2_0_17/.cxl.vhdl.lte_pucch_receiver_v2_0_17.lte_pucch_receiver_v2_0_17.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ldpc_v2_0_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ldpc_v2_0_4 /home/nick/fpga_cores/approx_multiplier/sim/ldpc_v2_0_4
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L fec_5g_common_v1_1_1 -L ldpc_v2_0_4 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work ldpc_v2_0_4 -f /home/nick/fpga_cores/approx_multiplier/sim/./ldpc_v2_0_4/.cxl.systemverilog.ldpc_v2_0_4.ldpc_v2_0_4.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/sid_v8_0_15
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap sid_v8_0_15 /home/nick/fpga_cores/approx_multiplier/sim/sid_v8_0_15
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work sid_v8_0_15 -f /home/nick/fpga_cores/approx_multiplier/sim/./sid_v8_0_15/.cxl.vhdl.sid_v8_0_15.sid_v8_0_15.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_dma_v7_1_21
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_dma_v7_1_21 /home/nick/fpga_cores/approx_multiplier/sim/axi_dma_v7_1_21
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_dma_v7_1_21 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_dma_v7_1_21/.cxl.vhdl.axi_dma_v7_1_21.axi_dma_v7_1_21.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_intc_v4_1_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_intc_v4_1_14 /home/nick/fpga_cores/approx_multiplier/sim/axi_intc_v4_1_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_intc_v4_1_14 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_intc_v4_1_14/.cxl.vhdl.axi_intc_v4_1_14.axi_intc_v4_1_14.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/quadsgmii_v3_4_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap quadsgmii_v3_4_7 /home/nick/fpga_cores/approx_multiplier/sim/quadsgmii_v3_4_7
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work quadsgmii_v3_4_7 -f /home/nick/fpga_cores/approx_multiplier/sim/./quadsgmii_v3_4_7/.cxl.vhdl.quadsgmii_v3_4_7.quadsgmii_v3_4_7.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_gamma_v7_0_15
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_gamma_v7_0_15 /home/nick/fpga_cores/approx_multiplier/sim/v_gamma_v7_0_15
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work v_gamma_v7_0_15 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_gamma_v7_0_15/.cxl.vhdl.v_gamma_v7_0_15.v_gamma_v7_0_15.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_fifo_mm_s_v4_1_17
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_fifo_mm_s_v4_1_17 /home/nick/fpga_cores/approx_multiplier/sim/axi_fifo_mm_s_v4_1_17
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_fifo_mm_s_v4_1_17 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_fifo_mm_s_v4_1_17/.cxl.vhdl.axi_fifo_mm_s_v4_1_17.axi_fifo_mm_s_v4_1_17.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/dp_videoaxi4s_bridge_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap dp_videoaxi4s_bridge_v1_0_1 /home/nick/fpga_cores/approx_multiplier/sim/dp_videoaxi4s_bridge_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work dp_videoaxi4s_bridge_v1_0_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./dp_videoaxi4s_bridge_v1_0_1/.cxl.verilog.dp_videoaxi4s_bridge_v1_0_1.dp_videoaxi4s_bridge_v1_0_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/sync_ip
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap sync_ip /home/nick/fpga_cores/approx_multiplier/sim/sync_ip
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work sync_ip -f /home/nick/fpga_cores/approx_multiplier/sim/./sync_ip/.cxl.verilog.sync_ip.sync_ip.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_usb2_device_v5_0_21
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_usb2_device_v5_0_21 /home/nick/fpga_cores/approx_multiplier/sim/axi_usb2_device_v5_0_21
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_usb2_device_v5_0_21 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_usb2_device_v5_0_21/.cxl.vhdl.axi_usb2_device_v5_0_21.axi_usb2_device_v5_0_21.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axi_usb2_device_v5_0_21 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_usb2_device_v5_0_21/.cxl.verilog.axi_usb2_device_v5_0_21.axi_usb2_device_v5_0_21.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/g975_efec_i4_v1_0_18
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap g975_efec_i4_v1_0_18 /home/nick/fpga_cores/approx_multiplier/sim/g975_efec_i4_v1_0_18
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work g975_efec_i4_v1_0_18 -f /home/nick/fpga_cores/approx_multiplier/sim/./g975_efec_i4_v1_0_18/.cxl.vhdl.g975_efec_i4_v1_0_18.g975_efec_i4_v1_0_18.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/rs_decoder_v9_0_17
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap rs_decoder_v9_0_17 /home/nick/fpga_cores/approx_multiplier/sim/rs_decoder_v9_0_17
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work rs_decoder_v9_0_17 -f /home/nick/fpga_cores/approx_multiplier/sim/./rs_decoder_v9_0_17/.cxl.vhdl.rs_decoder_v9_0_17.rs_decoder_v9_0_17.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/dft_v4_1_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap dft_v4_1_1 /home/nick/fpga_cores/approx_multiplier/sim/dft_v4_1_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work dft_v4_1_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./dft_v4_1_1/.cxl.vhdl.dft_v4_1_1.dft_v4_1_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_mcdma_v1_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_mcdma_v1_0_6 /home/nick/fpga_cores/approx_multiplier/sim/axi_mcdma_v1_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_mcdma_v1_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_mcdma_v1_0_6/.cxl.vhdl.axi_mcdma_v1_0_6.axi_mcdma_v1_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/duc_ddc_compiler_v3_0_15
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap duc_ddc_compiler_v3_0_15 /home/nick/fpga_cores/approx_multiplier/sim/duc_ddc_compiler_v3_0_15
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work duc_ddc_compiler_v3_0_15 -f /home/nick/fpga_cores/approx_multiplier/sim/./duc_ddc_compiler_v3_0_15/.cxl.vhdl.duc_ddc_compiler_v3_0_15.duc_ddc_compiler_v3_0_15.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/spdif_v2_0_22
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap spdif_v2_0_22 /home/nick/fpga_cores/approx_multiplier/sim/spdif_v2_0_22
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work spdif_v2_0_22 -f /home/nick/fpga_cores/approx_multiplier/sim/./spdif_v2_0_22/.cxl.vhdl.spdif_v2_0_22.spdif_v2_0_22.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_cresample_v4_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_cresample_v4_0_14 /home/nick/fpga_cores/approx_multiplier/sim/v_cresample_v4_0_14
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work v_cresample_v4_0_14 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_cresample_v4_0_14/.cxl.vhdl.v_cresample_v4_0_14.v_cresample_v4_0_14.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ieee802d3_rs_fec_v1_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ieee802d3_rs_fec_v1_0_16 /home/nick/fpga_cores/approx_multiplier/sim/ieee802d3_rs_fec_v1_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work ieee802d3_rs_fec_v1_0_16 -f /home/nick/fpga_cores/approx_multiplier/sim/./ieee802d3_rs_fec_v1_0_16/.cxl.verilog.ieee802d3_rs_fec_v1_0_16.ieee802d3_rs_fec_v1_0_16.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/audio_formatter_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap audio_formatter_v1_0_2 /home/nick/fpga_cores/approx_multiplier/sim/audio_formatter_v1_0_2
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work audio_formatter_v1_0_2 -f /home/nick/fpga_cores/approx_multiplier/sim/./audio_formatter_v1_0_2/.cxl.verilog.audio_formatter_v1_0_2.audio_formatter_v1_0_2.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_epc_v2_0_23
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_epc_v2_0_23 /home/nick/fpga_cores/approx_multiplier/sim/axi_epc_v2_0_23
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_epc_v2_0_23 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_epc_v2_0_23/.cxl.vhdl.axi_epc_v2_0_23.axi_epc_v2_0_23.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi4svideo_bridge_v1_0_10
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi4svideo_bridge_v1_0_10 /home/nick/fpga_cores/approx_multiplier/sim/axi4svideo_bridge_v1_0_10
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axi4svideo_bridge_v1_0_10 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi4svideo_bridge_v1_0_10/.cxl.verilog.axi4svideo_bridge_v1_0_10.axi4svideo_bridge_v1_0_10.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_cdma_v4_1_20
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_cdma_v4_1_20 /home/nick/fpga_cores/approx_multiplier/sim/axi_cdma_v4_1_20
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_cdma_v4_1_20 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_cdma_v4_1_20/.cxl.vhdl.axi_cdma_v4_1_20.axi_cdma_v4_1_20.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axis_interconnect_v1_1_18
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axis_interconnect_v1_1_18 /home/nick/fpga_cores/approx_multiplier/sim/axis_interconnect_v1_1_18
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work axis_interconnect_v1_1_18 -f /home/nick/fpga_cores/approx_multiplier/sim/./axis_interconnect_v1_1_18/.cxl.verilog.axis_interconnect_v1_1_18.axis_interconnect_v1_1_18.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ats_switch_v1_0_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ats_switch_v1_0_3 /home/nick/fpga_cores/approx_multiplier/sim/ats_switch_v1_0_3
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work ats_switch_v1_0_3 -f /home/nick/fpga_cores/approx_multiplier/sim/./ats_switch_v1_0_3/.cxl.verilog.ats_switch_v1_0_3.ats_switch_v1_0_3.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/tcc_decoder_3gppmm_v2_0_19
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap tcc_decoder_3gppmm_v2_0_19 /home/nick/fpga_cores/approx_multiplier/sim/tcc_decoder_3gppmm_v2_0_19
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work tcc_decoder_3gppmm_v2_0_19 -f /home/nick/fpga_cores/approx_multiplier/sim/./tcc_decoder_3gppmm_v2_0_19/.cxl.vhdl.tcc_decoder_3gppmm_v2_0_19.tcc_decoder_3gppmm_v2_0_19.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/xbip_dsp48_macro_v3_0_17
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap xbip_dsp48_macro_v3_0_17 /home/nick/fpga_cores/approx_multiplier/sim/xbip_dsp48_macro_v3_0_17
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work xbip_dsp48_macro_v3_0_17 -f /home/nick/fpga_cores/approx_multiplier/sim/./xbip_dsp48_macro_v3_0_17/.cxl.vhdl.xbip_dsp48_macro_v3_0_17.xbip_dsp48_macro_v3_0_17.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/switch_core_top_v1_0_8
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap switch_core_top_v1_0_8 /home/nick/fpga_cores/approx_multiplier/sim/switch_core_top_v1_0_8
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work switch_core_top_v1_0_8 -f /home/nick/fpga_cores/approx_multiplier/sim/./switch_core_top_v1_0_8/.cxl.vhdl.switch_core_top_v1_0_8.switch_core_top_v1_0_8.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L switch_core_top_v1_0_8 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work switch_core_top_v1_0_8 -f /home/nick/fpga_cores/approx_multiplier/sim/./switch_core_top_v1_0_8/.cxl.systemverilog.switch_core_top_v1_0_8.switch_core_top_v1_0_8.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/pr_bitstream_monitor_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap pr_bitstream_monitor_v1_0_1 /home/nick/fpga_cores/approx_multiplier/sim/pr_bitstream_monitor_v1_0_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work pr_bitstream_monitor_v1_0_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./pr_bitstream_monitor_v1_0_1/.cxl.vhdl.pr_bitstream_monitor_v1_0_1.pr_bitstream_monitor_v1_0_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_firewall_v1_0_8
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_firewall_v1_0_8 /home/nick/fpga_cores/approx_multiplier/sim/axi_firewall_v1_0_8
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L smartconnect_v1_0 -L axi_firewall_v1_0_8 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work axi_firewall_v1_0_8 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_firewall_v1_0_8/.cxl.systemverilog.axi_firewall_v1_0_8.axi_firewall_v1_0_8.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/noc_mc_ddr4_phy_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap noc_mc_ddr4_phy_v1_0_0 /home/nick/fpga_cores/approx_multiplier/sim/noc_mc_ddr4_phy_v1_0_0
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 -L noc_na_v1_0_0 -L noc_mc_ddr4_phy_v1_0_0 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -sv -svinputport=relaxed -work noc_mc_ddr4_phy_v1_0_0 -f /home/nick/fpga_cores/approx_multiplier/sim/./noc_mc_ddr4_phy_v1_0_0/.cxl.systemverilog.noc_mc_ddr4_phy_v1_0_0.noc_mc_ddr4_phy_v1_0_0.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/ieee802d3_rs_fec_v2_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap ieee802d3_rs_fec_v2_0_6 /home/nick/fpga_cores/approx_multiplier/sim/ieee802d3_rs_fec_v2_0_6
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work ieee802d3_rs_fec_v2_0_6 -f /home/nick/fpga_cores/approx_multiplier/sim/./ieee802d3_rs_fec_v2_0_6/.cxl.verilog.ieee802d3_rs_fec_v2_0_6.ieee802d3_rs_fec_v2_0_6.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/cic_compiler_v4_0_15
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap cic_compiler_v4_0_15 /home/nick/fpga_cores/approx_multiplier/sim/cic_compiler_v4_0_15
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work cic_compiler_v4_0_15 -f /home/nick/fpga_cores/approx_multiplier/sim/./cic_compiler_v4_0_15/.cxl.vhdl.cic_compiler_v4_0_15.cic_compiler_v4_0_15.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_ethernetlite_v3_0_18
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_ethernetlite_v3_0_18 /home/nick/fpga_cores/approx_multiplier/sim/axi_ethernetlite_v3_0_18
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_ethernetlite_v3_0_18 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_ethernetlite_v3_0_18/.cxl.vhdl.axi_ethernetlite_v3_0_18.axi_ethernetlite_v3_0_18.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_ycrcb2rgb_v7_1_13
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_ycrcb2rgb_v7_1_13 /home/nick/fpga_cores/approx_multiplier/sim/v_ycrcb2rgb_v7_1_13
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work v_ycrcb2rgb_v7_1_13 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_ycrcb2rgb_v7_1_13/.cxl.vhdl.v_ycrcb2rgb_v7_1_13.v_ycrcb2rgb_v7_1_13.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_mcdma_v1_1_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_mcdma_v1_1_1 /home/nick/fpga_cores/approx_multiplier/sim/axi_mcdma_v1_1_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_mcdma_v1_1_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_mcdma_v1_1_1/.cxl.vhdl.axi_mcdma_v1_1_1.axi_mcdma_v1_1_1.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_gpio_v2_0_22
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_gpio_v2_0_22 /home/nick/fpga_cores/approx_multiplier/sim/axi_gpio_v2_0_22
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_gpio_v2_0_22 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_gpio_v2_0_22/.cxl.vhdl.axi_gpio_v2_0_22.axi_gpio_v2_0_22.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_apb_bridge_v3_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_apb_bridge_v3_0_16 /home/nick/fpga_cores/approx_multiplier/sim/axi_apb_bridge_v3_0_16
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_apb_bridge_v3_0_16 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_apb_bridge_v3_0_16/.cxl.vhdl.axi_apb_bridge_v3_0_16.axi_apb_bridge_v3_0_16.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_dual_splitter_v1_0_9
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_dual_splitter_v1_0_9 /home/nick/fpga_cores/approx_multiplier/sim/v_dual_splitter_v1_0_9
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work v_dual_splitter_v1_0_9 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_dual_splitter_v1_0_9/.cxl.vhdl.v_dual_splitter_v1_0_9.v_dual_splitter_v1_0_9.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlog  -32 +incdir+/home/nick/fpga_cores/approx_multiplier/sim/.cxl.ip/incl -work v_dual_splitter_v1_0_9 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_dual_splitter_v1_0_9/.cxl.verilog.v_dual_splitter_v1_0_9.v_dual_splitter_v1_0_9.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/axi_quad_spi_v3_2_19
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap axi_quad_spi_v3_2_19 /home/nick/fpga_cores/approx_multiplier/sim/axi_quad_spi_v3_2_19
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work axi_quad_spi_v3_2_19 -f /home/nick/fpga_cores/approx_multiplier/sim/./axi_quad_spi_v3_2_19/.cxl.vhdl.axi_quad_spi_v3_2_19.axi_quad_spi_v3_2_19.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/v_rgb2ycrcb_v7_1_13
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap v_rgb2ycrcb_v7_1_13 /home/nick/fpga_cores/approx_multiplier/sim/v_rgb2ycrcb_v7_1_13
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work v_rgb2ycrcb_v7_1_13 -f /home/nick/fpga_cores/approx_multiplier/sim/./v_rgb2ycrcb_v7_1_13/.cxl.vhdl.v_rgb2ycrcb_v7_1_13.v_rgb2ycrcb_v7_1_13.lin64.cmf
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vlib /home/nick/fpga_cores/approx_multiplier/sim/lte_fft_v2_1_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vmap lte_fft_v2_1_1 /home/nick/fpga_cores/approx_multiplier/sim/lte_fft_v2_1_1
/home/nick/intelFPGA_pro/19.3/modelsim_ase/bin/vcom  -32 -93 -work lte_fft_v2_1_1 -f /home/nick/fpga_cores/approx_multiplier/sim/./lte_fft_v2_1_1/.cxl.vhdl.lte_fft_v2_1_1.lte_fft_v2_1_1.lin64.cmf
