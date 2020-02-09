//////////////////////////////////////////////////////////////////////////////
// be767e8644eee50b2645307571242b99d62eea726bb276dae1cba7a07fa60690
// Proprietary Note:
// XILINX CONFIDENTIAL
//
// Copyright 2012 Xilinx, Inc. All rights reserved.
// This file contains confidential and proprietary information of Xilinx, Inc.
// and is protected under U.S. and international copyright and other
// intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
// 
//
///////////////////////////////////////////////////////////////////////////////

`ifndef __NPI_COMMON_DEFINE_VH__
`define __NPI_COMMON_DEFINE_VH__


// ********************************************************
// NPI Protocol Block Common Define
// ********************************************************
`define NPI_PROT_ADDR_WIDTH          16
`define NPI_PROT_DATA_WIDTH          32
`define NPI_TIMEBASE_WIDTH           6
`define NPI_ERRTYPE_WIDTH            3
`define BASE_TIMER_LOG2_WITH         5
`define BASE_TIMER_WITH              32
`define NPI_INTERRUPT_WIDTH          24
`define NPI_PROT_INTERRUPT_WIDTH     20
`define NPI_NOC_INTERRUPT_WIDTH      4
`define NPI_NOC_USR_INTERRUPT_WIDTH  4
`define NPI_ADDR_SIZE_WIDTH          3

`define NPI_ADDRESS_OFFSET_WIDTH     14

`define NPI_OPT_WIDTH                8

`define NPI_PROT_DATA 31:0
`define NPI_PROT_ADDR 47:32
`define NPI_PROT_WR   48
`define NPI_PROT_LAST 49

// ********************************************************
// NPI error-types
// ********************************************************
`define NPI_ERR_TYPE_NO_ERROR         `NPI_ERRTYPE_WIDTH'h0
`define NPI_ERR_TYPE_NIR_TIMEOUT      `NPI_ERRTYPE_WIDTH'h1
`define NPI_ERR_TYPE_NIR_AXI_ERR      `NPI_ERRTYPE_WIDTH'h2
`define NPI_ERR_TYPE_NIS_INVLD_ADDR   `NPI_ERRTYPE_WIDTH'h3
`define NPI_ERR_TYPE_NIS_NOT_RDY      `NPI_ERRTYPE_WIDTH'h4
`define NPI_ERR_TYPE_NIP_SLVERR       `NPI_ERRTYPE_WIDTH'h5
`define NPI_ERR_TYPE_NIP_NOT_RDY      `NPI_ERRTYPE_WIDTH'h6

// ********************************************************
// NPI Packet Protocol Block Common Define
// ********************************************************
`define NPI_NPIPP_RSVD_1_0_WIDTH 2 // Dummy0
`define NPI_NPIPP_ADDR_WIDTH  16-`NPI_NPIPP_RSVD_1_0_WIDTH
`define NPI_NPIPP_DST_WIDTH  9
`define NPI_LOG2NPIPP_DST_WIDTH  4
`define NPI_NPIPP_RSVD_26_25_WIDTH 2 // Dummy0
`define NPI_NPIPP_BL_WIDTH  4
`define NPI_NPIPP_RW_WIDTH  1
`define NPI_NPIPP_RSVD_32_WIDTH  1 // Dummy0
`define NPI_NPIPP_LAST_WIDTH  1

`define NPI_NPIPP_RESP_WIDTH  1
`define NPI_NPIPP_DATA_WIDTH  32

`define NPI_NPIPP_RSVD_31_0_WIDTH  32 // Dummy0
`define NPI_NPIPP_WIDTH  (`NPI_NPIPP_LAST_WIDTH + `NPI_NPIPP_RSVD_32_WIDTH + `NPI_NPIPP_RW_WIDTH + `NPI_NPIPP_BL_WIDTH + `NPI_NPIPP_RSVD_26_25_WIDTH + `NPI_NPIPP_DST_WIDTH + `NPI_NPIPP_ADDR_WIDTH + `NPI_NPIPP_RSVD_1_0_WIDTH)
`define NPI_RESP_PKT_WITH (`NPI_PROT_DATA_WIDTH + `NPI_NPIPP_RESP_WIDTH + `NPI_NPIPP_LAST_WIDTH)
`define NPI_PROT_REQ_WIDTH (`NPI_NPIPP_ADDR_EP_WIDTH + `NPI_NPIPP_DATA_WIDTH + `NPI_NPIPP_RW_WIDTH + `NPI_NPIPP_LAST_WIDTH)

`define NPI_NPIPP_ADDR_EP_WIDTH 16
`define NPI_NPIPP_ADDR_EP 17:2
`define NPI_NPIPP_ADDR_PAGE 17:16

`define NPI_COE_ID_WIDTH 5

// NPIPP bit assignment
`define NPI_NPIPP_ADDR 15:2
`define NPI_NPIPP_DST 24:16
`define NPI_NPIPP_BL 30:27
`define NPI_NPIPP_RW 31
`define NPI_NPIPP_RESP 32
`define NPI_NPIPP_SRVC 32
`define NPI_NPIPP_LAST 33
`define NPI_NPIPP_DATA 31:0
`define NPI_NPIPP_SRVC_CMD 1:0

// SERVICE CMD
`define SRVC_CMD_STATUS 2'b00
`define SRVC_CMD_ADDR 2'b01
`define SRVC_CMD_PRST 2'b10
`define SRVC_CMD_RSVD 2'b11
`define SRVC_RESP_NIS 1'b0
`define SRVC_RESP_NIP 1'b1

// ********************************************************
// NPI Debug bus Interface Common Define
// ********************************************************
`define NPI_DBG_CTRL_WIDTH 8
`define NPI_DBG_MUX_WIDTH 128

// ********************************************************
// NPI AXI Interface Common Define
// ********************************************************
`define NPI_AXADDR_UPPER_WIDTH  52
`define NPI_AXADDR_LOWER_WIDTH  12

// ********************************************************
// NPI CSSD Define
// ********************************************************
`define NPI_NIR_CSSD_TRIG_WIDTH 1
`define NPI_NIS_CSSD_TRIG_WIDTH 1
`define NPI_NIP_CSSD_TRIG_WIDTH 1
`define EP1_CSSD_TRIG_WIDTH `NPI_NIS_CSSD_TRIG_WIDTH+1*`NPI_NIP_CSSD_TRIG_WIDTH
`define EP2_CSSD_TRIG_WIDTH `NPI_NIS_CSSD_TRIG_WIDTH+3*`NPI_NIP_CSSD_TRIG_WIDTH
`define EP3_CSSD_TRIG_WIDTH `NPI_NIS_CSSD_TRIG_WIDTH+5*`NPI_NIP_CSSD_TRIG_WIDTH
`define EP4_CSSD_TRIG_WIDTH `NPI_NIS_CSSD_TRIG_WIDTH+7*`NPI_NIP_CSSD_TRIG_WIDTH

`define EP_1_CSSD_TRIG_WIDTH `NPI_NIS_CSSD_TRIG_WIDTH+2*`NPI_NIP_CSSD_TRIG_WIDTH
`define EP_2_CSSD_TRIG_WIDTH `NPI_NIS_CSSD_TRIG_WIDTH+4*`NPI_NIP_CSSD_TRIG_WIDTH
`define EP_3_CSSD_TRIG_WIDTH `NPI_NIS_CSSD_TRIG_WIDTH+6*`NPI_NIP_CSSD_TRIG_WIDTH
`define EP_4_CSSD_TRIG_WIDTH `NPI_NIS_CSSD_TRIG_WIDTH+8*`NPI_NIP_CSSD_TRIG_WIDTH

`define NPI_NPIPP_REQ_TERMINATE(if_npi_npipp_req_out) \
 assign if_npi_npipp_req_out.npi_ready = 1'b0;          \

`define NPI_NPIPP_RESP_TERMINATE(if_npi_npipp_resp_in)          \
 assign     if_npi_npipp_resp_in.npi_valid = 1'b0;                    \
 assign     if_npi_npipp_resp_in.npi_flit = {`NPI_NPIPP_WIDTH{1'b0}}; \

`define NPI_MISC_TERMINATE(if_npi_misc_in)  \
 assign     if_npi_misc_in.errtype         = 'h0; \
 assign     if_npi_misc_in.interrupt       = 'h0; \
 assign     if_npi_misc_in.interface_ready = 'h0; \

`define NPI_PROT_IN_TERMINATE(if_npi_prot_in)               \
  assign    if_npi_prot_in.penable = 1'b0;                        \
  assign    if_npi_prot_in.preset_n = 1'b0;                       \
  assign    if_npi_prot_in.pwrite = 1'b0;                         \
  assign    if_npi_prot_in.paddr = {`NPI_PROT_ADDR_WIDTH{1'b0}};  \
  assign    if_npi_prot_in.pwdata = {`NPI_PROT_DATA_WIDTH{1'b0}}; \

`define NPI_PROT_OUT_TERMINATE(if_npi_prot_out)               \
  assign    if_npi_prot_out.paccept = 1'b0;                         \
  assign    if_npi_prot_out.presponse = 1'b0;                       \
  assign    if_npi_prot_out.prdata = {`NPI_PROT_DATA_WIDTH{1'b0}};  \
  assign    if_npi_prot_out.pslverr = 1'b0;                         \
  assign    if_npi_prot_out.interrupt = {`NPI_PROT_INTERRUPT_WIDTH{1'b0}}; \
  assign    if_npi_prot_out.interface_ready = 1'b0;                 \
  assign    if_npi_prot_out.addr_size = `ADDR_SIZE_UNUSED;           \

`define NPI_SSC_TERMINATE(if_npi_ssc_slv)               \
  assign    if_npi_ssc_slv.mrkr_r  = if_npi_ssc_slv.mrkr_o;   \
  assign    if_npi_ssc_slv.data_r  = if_npi_ssc_slv.data_o;   \

`define NIS_NIP_SSC_CONNECT(if_nip_ssc, if_nti_port_ds, nip_ams_r, test_aag) \
  assign    if_nip_ssc.mrkr_o = (test_aag) ? 1'b0 : if_nti_port_ds.nti_sub_addr_o[0];   \
  assign    if_nip_ssc.data_o = (test_aag) ? 2'b0 : if_nti_port_ds.nti_sub_addr_o[2:1]; \
  assign    nip_ams_r[0]   = if_nip_ssc.mrkr_r;                     \
  assign    nip_ams_r[2:1] = if_nip_ssc.data_r;                     \

`define NTI_NIS_DS_LOOP(if_nti_port_ds0, if_nti_port_ds1)                         \
  assign    if_nti_port_ds1.nti_ad_sel_o = if_nti_port_ds0.nti_ad_sel_r;                \
  assign    if_nti_port_ds1.nti_scan_en_n_o = if_nti_port_ds0.nti_scan_en_n_r;          \
  assign    if_nti_port_ds1.nti_edt_update_n_o = if_nti_port_ds0.nti_edt_update_n_r;    \
  assign    if_nti_port_ds1.nti_cssd_trigger_n_o = if_nti_port_ds0.nti_cssd_trigger_n_r;\
  assign    if_nti_port_ds1.nti_scan_mode_rst_n_o = if_nti_port_ds0.nti_scan_mode_rst_n_r;\

`define NTI_PORT_M2S_SPLIT(if_nti_port_m, if_nti_port_s)                       \
  assign    if_nti_port_s.nti_ad_sel_o = if_nti_port_m.nti_ad_sel_o;                 \
  assign    if_nti_port_s.nti_addr_o = if_nti_port_m.nti_addr_o;                     \
  assign    if_nti_port_s.nti_sub_addr_o = if_nti_port_m.nti_sub_addr_o;             \
  assign    if_nti_port_s.nti_scan_en_n_o = if_nti_port_m.nti_scan_en_n_o;           \
  assign    if_nti_port_s.nti_edt_update_n_o = if_nti_port_m.nti_edt_update_n_o;     \
  assign    if_nti_port_s.nti_cssd_trigger_n_o = if_nti_port_m.nti_cssd_trigger_n_o; \
  assign    if_nti_port_s.nti_scan_mode_rst_n_o = if_nti_port_m.nti_scan_mode_rst_n_o; \

`define NTI_PORT_S2M_SPLIT(if_nti_port_m, if_nti_port_s)                       \
  assign   if_nti_port_m.nti_ad_sel_r = if_nti_port_s.nti_ad_sel_r;                 \
  assign   if_nti_port_m.nti_addr_r = if_nti_port_s.nti_addr_r;                     \
  assign   if_nti_port_m.nti_sub_addr_r = if_nti_port_s.nti_sub_addr_r;             \
  assign   if_nti_port_m.nti_scan_en_n_r = if_nti_port_s.nti_scan_en_n_r;           \
  assign   if_nti_port_m.nti_edt_update_n_r = if_nti_port_s.nti_edt_update_n_r;     \
  assign   if_nti_port_m.nti_cssd_trigger_n_r = if_nti_port_s.nti_cssd_trigger_n_r; \
  assign   if_nti_port_m.nti_scan_mode_rst_n_r = if_nti_port_s.nti_scan_mode_rst_n_r; \

`define NTI_PORT_S2S_SPLIT(if_nti_port_s_r, if_nti_port_s_o)                       \
  assign    if_nti_port_s_o.nti_ad_sel_o = if_nti_port_s_r.nti_ad_sel_r;                 \
  assign    if_nti_port_s_o.nti_addr_o = if_nti_port_s_r.nti_addr_r;                     \
  assign    if_nti_port_s_o.nti_sub_addr_o = if_nti_port_s_r.nti_sub_addr_r;             \
  assign    if_nti_port_s_o.nti_scan_en_n_o = if_nti_port_s_r.nti_scan_en_n_r;           \
  assign    if_nti_port_s_o.nti_edt_update_n_o = if_nti_port_s_r.nti_edt_update_n_r;     \
  assign    if_nti_port_s_o.nti_cssd_trigger_n_o = if_nti_port_s_r.nti_cssd_trigger_n_r; \
  assign    if_nti_port_s_o.nti_scan_mode_rst_n_o = if_nti_port_s_r.nti_scan_mode_rst_n_r; \

`ifdef NPI_PROT_IF 
`include "npi_slave_define.vh" 
`endif 

//`define COE_LKUP_TBL(lkup_idx, coe_size, coe_int_offset, coe_int_en)                                                                                     \
//  always_comb begin                                                                                                                                      \
//    case (lkup_idx)                                                                                                                                      \
//      `COE_ID_UNDEF:      begin coe_size = 3'd0; coe_int_offset = `COE_INTERRUPT_OS_UNUSED; coe_int_en = `COE_INTERRUPT_EN_UNUSED; end                   \
//      `COE_ID_NPI_ROOT:   begin coe_size = `COE_SIZE_NPI; coe_int_offset = `COE_INTERRUPT_OS_NPI_ROOT; coe_int_en = `COE_INTERRUPT_EN_NPI_ROOT; end      \
//      `COE_ID_NOC:        begin coe_size = `COE_SIZE_NOC; coe_int_offset = `COE_INTERRUPT_OS_NOC_COMP; coe_int_en = `COE_INTERRUPT_EN_NOC_COMP; end      \
//      `COE_ID_DDRMC_MB:   begin coe_size = `COE_SIZE_DDRMC_MB; coe_int_offset = `COE_INTERRUPT_OS_DDRMC_MB; coe_int_en = `COE_INTERRUPT_EN_DDRMC_MB; end \
//      `COE_ID_DDRMC_MC:   begin coe_size = `COE_SIZE_DDRMC_MC; coe_int_offset = `COE_INTERRUPT_OS_DDRMC_MC; coe_int_en = `COE_INTERRUPT_EN_DDRMC_MC; end \
//      `COE_ID_ME:         begin coe_size = `COE_SIZE_ME; coe_int_offset = `COE_INTERRUPT_OS_ME; coe_int_en = `COE_INTERRUPT_EN_ME;                   end \
//      `COE_ID_GT:         begin coe_size = `COE_SIZE_GT; coe_int_offset = `COE_INTERRUPT_OS_GT; coe_int_en = `COE_INTERRUPT_EN_GT;                   end \
//      `COE_ID_XPIPE:      begin coe_size = `COE_SIZE_XPIPE; coe_int_offset = `COE_INTERRUPT_OS_XPIPE; coe_int_en = `COE_INTERRUPT_EN_XPIPE; end          \
//      `COE_ID_MMCM:       begin coe_size = `COE_SIZE_MMCM; coe_int_offset = `COE_INTERRUPT_OS_MMCM; coe_int_en = `COE_INTERRUPT_EN_MMCM; end             \
//      `COE_ID_XPIO:       begin coe_size = `COE_SIZE_XPIO; coe_int_offset = `COE_INTERRUPT_OS_XPIO; coe_int_en = `COE_INTERRUPT_EN_XPIO; end             \
//      `COE_ID_GCLK:       begin coe_size = `COE_SIZE_GCLK; coe_int_offset = `COE_INTERRUPT_OS_GCLK; coe_int_en = `COE_INTERRUPT_EN_GCLK; end             \
//      `COE_ID_SYSMON:     begin coe_size = `COE_SIZE_SYSMON; coe_int_offset = `COE_INTERRUPT_OS_SYSMON; coe_int_en = `COE_INTERRUPT_EN_SYSMON; end       \
//      `COE_ID_HSADC:      begin coe_size = `COE_SIZE_HSADC; coe_int_offset = `COE_INTERRUPT_OS_HSADC; coe_int_en = `COE_INTERRUPT_EN_HSADC; end          \
//      `COE_ID_HSDAC:      begin coe_size = `COE_SIZE_HSDAC; coe_int_offset = `COE_INTERRUPT_OS_HSDAC; coe_int_en = `COE_INTERRUPT_EN_HSDAC; end          \
//      `COE_ID_RESERVED18: begin coe_size = `COE_SIZE_RESERVED18; coe_int_offset = `COE_INTERRUPT_OS_UNUSED; coe_int_en = `COE_INTERRUPT_EN_UNUSED; end   \
//      default:            begin coe_size = 3'd0; coe_int_offset = `COE_INTERRUPT_OS_UNUSED; coe_int_en = `COE_INTERRUPT_EN_UNUSED; end                   \
//    endcase                                                                                                                                              \
//  end


`endif
