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
//       Owner:
//       Revision:       $Id: //depot/icm/proj/everest_7t_n1/rtl/noc_7t_n1/include/noc_common_define.vh $
//                       $Author: kins $
//                       $DateTime: 2016/04/12 15:30:13 $
//                       $Change: 1234567 $
//       Description: 
///////////////////////////////////////////////////////////////////////////////
`ifndef _noc_common_define_vh_
`define _noc_common_define_vh_

`include "ncrb_noc_define.vh"
// ********************************************************
// NMU Interface Common Define
// ********************************************************
`define NOC_NMU_MODE_WIDTH  3
`define NOC_NMU_DWIDTH_WIDTH  3
`define NOC_NMU_INTERRUPT_WIDTH 4
	    
// ********************************************************
// NSU Interface Common Define
// ********************************************************
`define NOC_NSU_MODE_WIDTH  3
`define NOC_NSU_DWIDTH_WIDTH  3
`define NOC_NSU_INTERRUPT_WIDTH 4
`define NOC_NSU_COMP_ID_WIDTH 2

// ********************************************************
// NPS Interface Common Define
// ********************************************************
`define NOC_NPS_INTERRUPT_WIDTH 4
`define NOC_CLOCK_MUX_SEL_WIDTH 32

// ********************************************************
// NoC Debug bus Interface Common Define
// ********************************************************
`define NOC_DBG_CTRL_WIDTH 8
`define NOC_DBG_MUX_WIDTH 128
`define NOC_DBG64_MUX_WIDTH 64

// ********************************************************
// NoC AXI protocol Define
// ********************************************************
   
`define CHOP_64B     0
`define CHOP_128B    1
`define CHOP_256B    2 
`define CHOP_512B    3

// ********************************************************
// NoC CSSD Define
// ********************************************************
`define NOC_NMU_CSSD_TRIG_WIDTH 1
`define NOC_NSU_CSSD_TRIG_WIDTH 1
`define NOC_NPS_CSSD_TRIG_WIDTH 1
`define NOC_NCRB_CSSD_TRIG_WIDTH 2
`define NOC_NIDB_CSSD_TRIG_WIDTH 1

`define NOC_NPP_TERMINATE(if_noc_npp_in, if_noc_npp_out)          \
   assign   if_noc_npp_out.noc_valid        = {`NOC_NPS_NUM_VC{1'b0}};   \
   assign   if_noc_npp_out.noc_flit         = {`NOC_NPP_WIDTH{1'b0}};    \
   assign   if_noc_npp_in.noc_credit_return = {`NOC_NPS_NUM_VC{1'b0}};   \
   assign   if_noc_npp_in.noc_credit_return_en = 1'b1;                   \
   assign   if_noc_npp_out.noc_credit_rdy   = 1'b0;                      \
   assign   if_noc_npp_out.noc_valid_en     = 1'b0;                      \
   assign   if_noc_npp_out.noc_flit_en      = 1'b0;                      \
      //if_noc_npp_out.noc_scan         = 2'b0;                      \
   
`endif
