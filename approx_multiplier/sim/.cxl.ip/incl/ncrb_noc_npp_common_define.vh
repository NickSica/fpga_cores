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
//       Revision:       $Id: //depot/icm/proj/everest_7t_n1/rtl/noc_7t_n1/include/noc_npp_common_define.vh $
//                       $Author: kins $
//                       $DateTime: 2016/04/12 15:30:13 $
//                       $Change: 1234567 $
//       Description: 
//
///////////////////////////////////////////////////////////////////////////////
`ifndef _noc_npp_common_define_vh_
`define _noc_npp_common_define_vh_

// ********************************************************
// NoC Packet Protocol Common Define
// ********************************************************

// NPP Width
`define NOC_NPP_AXADDR_WIDTH  64
`define NOC_NPP_AXADDR_LOWER_WIDTH  4'd12
`define NOC_NPP_AXADDR_UPPER_WIDTH  (`NOC_NPP_AXADDR_WIDTH-`NOC_NPP_AXADDR_LOWER_WIDTH)
`define NOC_NPP_AXLEN_WIDTH  8
`define NOC_NPP_AXSIZE_WIDTH  3
`define NOC_NPP_AXBURST_WIDTH  2
`define NOC_NPP_AXLOCK_WIDTH  1  // Only support exclusive, no legacy LOCK support
`define NOC_NPP_AXCACHE_WIDTH  4
`define NOC_NPP_AXPROT_WIDTH  3
`define NOC_NPP_AXQOS_WIDTH  4
`define NOC_NPP_AXID_WIDTH  16
`define NOC_NPP_AXUSER_WIDTH  16
`define NOC_NPP_POISON_WIDTH 1
`define NOC_NPP_RSVD_WIDTH 7
`define NOC_NPP_SMID_WIDTH 10

`define NOC_NPP_DATA_WIDTH  128

// dummy0 spacers for Request header
`define NOC_NPP_AXRSVD0_WIDTH  (`NOC_NPP_DATA_WIDTH-`NOC_NPP_AXADDR_WIDTH-`NOC_NPP_AXLEN_WIDTH-`NOC_NPP_AXSIZE_WIDTH-`NOC_NPP_AXBURST_WIDTH-`NOC_NPP_AXLOCK_WIDTH-`NOC_NPP_AXCACHE_WIDTH-`NOC_NPP_AXPROT_WIDTH-`NOC_NPP_AXQOS_WIDTH-`NOC_NPP_AXID_WIDTH-`NOC_NPP_AXUSER_WIDTH)
`define NOC_NPP_AXRSVD1_WIDTH  (`NOC_NPP_DATA_WIDTH-`NOC_NPP_AXUSER_WIDTH)

`define NOC_NPP_PKT_TYPE_WIDTH  4
`define NOC_NPP_MISC_CTRL_WIDTH  2 //xResp
`define NOC_NPP_TAG_WIDTH  8
`define NOC_NPP_SRC_WIDTH  12
`define NOC_NPP_WSTRB_WIDTH  16
`define NOC_NPP_TLAST_WIDTH  1
`define NOC_NPP_POISON_WIDTH 1
`define NOC_NPP_CTRLRSVD0_WIDTH (`NOC_NPP_TAG_WIDTH+`NOC_NPP_SRC_WIDTH-`NOC_NPP_WSTRB_WIDTH)
`define NOC_NPP_DST_WIDTH  12
`define NOC_NPP_DST_PAR_WIDTH 1
`define NOC_NPP_PRI_WIDTH 1
`define NOC_NPP_LAST_WIDTH  1
`define NOC_NPP_DBI_WIDTH 1
`define NOC_NPP_ECC_WIDTH  10
`define NOC_NPP_PKT_CTRL_WIDTH  (`NOC_NPP_PKT_TYPE_WIDTH + `NOC_NPP_MISC_CTRL_WIDTH + `NOC_NPP_TAG_WIDTH + `NOC_NPP_SRC_WIDTH + `NOC_NPP_DST_WIDTH + `NOC_NPP_DST_PAR_WIDTH + `NOC_NPP_PRI_WIDTH + `NOC_NPP_LAST_WIDTH + `NOC_NPP_ECC_WIDTH + `NOC_NPP_POISON_WIDTH + `NOC_NPP_TLAST_WIDTH + `NOC_NPP_DBI_WIDTH)
`define NOC_NPP_WIDTH  (`NOC_NPP_DATA_WIDTH + `NOC_NPP_PKT_CTRL_WIDTH)
`define NOC_NPP_TID_WIDTH 6
`define NOC_NPP_TDEST_WIDTH 10

`define NOC_DBI_WIDTH 16

// NPP bit assignment
`define NOC_NPP_AXADDR 63:0
`define NOC_NPP_AXADDR_16B 9:8
`define NOC_NPP_AXADDR_LOWER 11:0
`define NOC_NPP_AXADDR_UPPER 63:12
`define NOC_NPP_AXLEN 71:64
`define NOC_NPP_AXSIZE 74:72
`define NOC_NPP_AXBURST 76:75
`define NOC_NPP_AXLOCK 77:77
`define NOC_NPP_AXCACHE 81:78
`define NOC_NPP_AXPROT 84:82
`define NOC_NPP_AXQOS 88:85
`define NOC_NPP_AXID 104:89
`define NOC_NPP_AXUSER 120:105
`define NOC_NPP_RSVD 127:121
`define NOC_NPP_DATA 127:0
`define NOC_NPP_PKT_TYPE 131:128
`define NOC_NPP_MISC_CTRL 133:132
`define NOC_NPP_TAG 141:134
`define NOC_NPP_SRC 153:142
`define NOC_NPP_DST 165:154
`define NOC_NPP_DST_PAR 166:166
`define NOC_NPP_PRI 167:167
`define NOC_NPP_WRSTB 149:134
`define NOC_NPP_POISON 168:168
`define NOC_NPP_TLAST 169:169
`define NOC_NPP_LAST 170:170
`define NOC_NPP_DBI  171:171
`define NOC_NPP_WO_ECC 171:0
`define NOC_NPP_ECC 181:172
`define NOC_NPP_TID_L 153:150
`define NOC_NPP_TID_H 133:132
//`define NOC_NPP_STRM_SRC_H 181:172
//`define NOC_NPP_STRM_SRC_L 133:132
`define NOC_NPP_SMID 114:105
`define NOC_NPP_TDEST 181:172

`define NOC_NPP_CTRL_FLD 181:128
`define NOC_NPP_LAST_LSB 170

`define NOC_NPP_CTRL_PKT_TYPE 3:0
`define NOC_NPP_CTRL_MISC_CTRL 5:4
`define NOC_NPP_CTRL_MISC_CTRL_LSB 4
`define NOC_NPP_CTRL_TAG 13:6
`define NOC_NPP_CTRL_TAG_LSB 6
`define NOC_NPP_CTRL_TAG_MSB 13
`define NOC_NPP_CTRL_SRC 25:14
`define NOC_NPP_CTRL_SRC_LSB 14
`define NOC_NPP_CTRL_SRC_MSB 25
`define NOC_NPP_CTRL_DST 37:26
`define NOC_NPP_CTRL_DST_LSB 26
`define NOC_NPP_CTRL_DST_MSB 37
`define NOC_NPP_CTRL_DST_PAR 38:38
`define NOC_NPP_CTRL_DST_PAR_LSB 38
`define NOC_NPP_CTRL_PRI 39:39
`define NOC_NPP_CTRL_WRSTB 21:6
`define NOC_NPP_CTRL_POISON 40:40
`define NOC_NPP_CTRL_TLAST 41:41
`define NOC_NPP_CTRL_LAST 42
`define NOC_NPP_CTRL_DBI  43:43
`define NOC_NPP_CTRL_ECC 53:44
`define NOC_NPP_CTRL_ECC_LSB 44
`define NOC_NPP_CTRL_ECC_MSB 53

// NPP field definition
`define NOC_NPP_PKT_TYPE_READ_REQ 4'd0
`define NOC_NPP_PKT_TYPE_WRITE_REQ 4'd1
`define NOC_NPP_PKT_TYPE_READ_RESP 4'd2
`define NOC_NPP_PKT_TYPE_WRITE_RESP 4'd3
`define NOC_NPP_PKT_TYPE_STRM_WRITE_REQ 4'd4

`endif
