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
//       Revision:       $Id: //depot/icm/proj/everest_7t_n1/rtl/noc_7t_n1/include/noc_define.vh $
//                       $Author: kins $
//                       $DateTime: 2016/04/12 15:30:13 $
//                       $Change: 1234567 $
//       Description:
//
///////////////////////////////////////////////////////////////////////////////
`ifndef _noc_define_vh_
`define _noc_define_vh_

// ********************************************************
// NOC General
// ********************************************************
`define NOC_CLOG2(x) \
      (x <= 2)   ? 1 : \
      (x <= 4)   ? 2 : \
      (x <= 8)   ? 3 : \
      (x <= 16)  ? 4 : \
      (x <= 32)  ? 5 : \
      (x <= 64)  ? 6 : \
      (x <= 128) ? 7 : \
      (x <= 256) ? 8 : \
      (x <= 512) ? 9 : \
      (x <= 1024) ? 10 : \
      (x <= 2048) ? 11 : \
      (x <= 4096) ? 12 : \
      (x <= 8192) ? 13 : \
      (x <= 16384) ? 14 : \
      (x <= 32768) ? 15 : \
      (x <= 65536) ? 16 : \
      (x <= 131072) ? 17 : \
      (x <= 262144) ? 18 : \
      (x <= 524288) ? 19 : \
      (x <= 1048576) ? 20 : \
      (x <= 2097152) ? 21 : \
      (x <= 4194304) ? 22 : \
      (x <= 8388608) ? 23 : \
      (x <= 16777216) ? 24 : \
      -1

`define NOC_AXSIZE(x) \
      (x == 3'd0) ? 1 : \
      (x == 3'd1) ? 2 : \
      (x == 3'd2) ? 4 : \
      (x == 3'd3) ? 8 : \
      (x == 3'd4) ? 16 : \
      (x == 3'd5) ? 32 : \
      (x == 3'd6) ? 64 : \
      (x == 3'd7) ? 128 : \
      0

`define NOC_RST_MUX(ri,en,byp,rs) (en | (byp?rs:ri))

`define NOC_AXLEN(x) x+1

`define NOC_TCQ_VAL 2
`define NOC_TCQ #(`NOC_TCQ_VAL * 1ps)

`define _noc_nmu_rrob_64x32_
`define _noc_nmu_rrob_use_ram_
`define _noc_nmu_wbuf_use_ram_

//`define _noc_nsu_use_aoq_

`define NOC_ASYNC_FIFO_RWIDTH 596
`define NOC_ASYNC_FIFO_WWIDTH 684

//`define NOC_READ 0
//`define NOC_WRITE 1

// ********************************************************
// Clock Gating
// ********************************************************
/*
  `ifndef SYNTHESIS
 `define NOC_GCLK_EN (clk, en, te, clkout)   \
   logic latched_en;                     \
   always @(!clk) begin                  \
      latched_en = en & te;              \
   end                                   \
   always_comb clkout = clk & latched_en;

`else
   CKLNQD3BWP20P90LVT I_clock_gate ( .CP(clk), .E(en), .TE(te), .Q(clkout));
`endif
*/

// ********************************************************
// NMU / NSU
// ********************************************************
// AXI CONVERSION MUX GROUP
`define NOC_AXI_DATA_G0_G0 31:0
`define NOC_AXI_DATA_G0_G1 63:32
`define NOC_AXI_DATA_G0_G2 95:64
`define NOC_AXI_DATA_G0_G3 127:96
`define NOC_AXI_DATA_G1_G0 159:128
`define NOC_AXI_DATA_G1_G1 191:160
`define NOC_AXI_DATA_G1_G2 223:192
`define NOC_AXI_DATA_G1_G3 255:224
`define NOC_AXI_DATA_G2_G0 287:256
`define NOC_AXI_DATA_G2_G1 319:288
`define NOC_AXI_DATA_G2_G2 351:320
`define NOC_AXI_DATA_G2_G3 383:352
`define NOC_AXI_DATA_G3_G0 415:384
`define NOC_AXI_DATA_G3_G1 447:416
`define NOC_AXI_DATA_G3_G2 479:448
`define NOC_AXI_DATA_G3_G3 511:480

`define NOC_AXI_WSTRB_G0_G0 3:0
`define NOC_AXI_WSTRB_G0_G1 7:4
`define NOC_AXI_WSTRB_G0_G2 11:8
`define NOC_AXI_WSTRB_G0_G3 15:12
`define NOC_AXI_WSTRB_G1_G0 19:16
`define NOC_AXI_WSTRB_G1_G1 23:20
`define NOC_AXI_WSTRB_G1_G2 27:24
`define NOC_AXI_WSTRB_G1_G3 31:28
`define NOC_AXI_WSTRB_G2_G0 35:32
`define NOC_AXI_WSTRB_G2_G1 39:36
`define NOC_AXI_WSTRB_G2_G2 43:40
`define NOC_AXI_WSTRB_G2_G3 47:44
`define NOC_AXI_WSTRB_G3_G0 51:48
`define NOC_AXI_WSTRB_G3_G1 55:52
`define NOC_AXI_WSTRB_G3_G2 59:56
`define NOC_AXI_WSTRB_G3_G3 63:60

`define NOC_AXI_PAR_G0_G0 3:0
`define NOC_AXI_PAR_G0_G1 7:4
`define NOC_AXI_PAR_G0_G2 11:8
`define NOC_AXI_PAR_G0_G3 15:12
`define NOC_AXI_PAR_G1_G0 19:16
`define NOC_AXI_PAR_G1_G1 23:20
`define NOC_AXI_PAR_G1_G2 27:24
`define NOC_AXI_PAR_G1_G3 31:28
`define NOC_AXI_PAR_G2_G0 35:32
`define NOC_AXI_PAR_G2_G1 39:36
`define NOC_AXI_PAR_G2_G2 43:40
`define NOC_AXI_PAR_G2_G3 47:44
`define NOC_AXI_PAR_G3_G0 51:48
`define NOC_AXI_PAR_G3_G1 55:52
`define NOC_AXI_PAR_G3_G2 59:56
`define NOC_AXI_PAR_G3_G3 63:60

`define NOC_NSU_WSTRB_PAR_G0_G0 0
`define NOC_NSU_WSTRB_PAR_G0_G1 1
`define NOC_NSU_WSTRB_PAR_G0_G2 2
`define NOC_NSU_WSTRB_PAR_G0_G3 3


`define NOC_NPP_WSTRB_G0_G0 137:134
`define NOC_NPP_WSTRB_G0_G1 141:138
`define NOC_NPP_WSTRB_G0_G2 145:140
`define NOC_NPP_WSTRB_G0_G3 149:146

`define NOC_NSU_WSTRB_G0_G0 3:0
`define NOC_NSU_WSTRB_G0_G1 7:4
`define NOC_NSU_WSTRB_G0_G2 11:8
`define NOC_NSU_WSTRB_G0_G3 15:12
// ********************************************************
// NMU
// ********************************************************
// --------------------------------------------------------
`define NOC_NMU_WRITE_PKT_TYPE_HDR  1'b0
`define NOC_NMU_WRITE_PKT_TYPE_DATA 1'b1

// --------------------------------------------------------
// Address Map
`define NOC_NMU_ADDR_MAP_STATUS_WIDTH  2
`define NOC_NMU_ADDR_MAP_STATUS_DDR  0             // Bit0 definition: Address Mapped is DDR
`define NOC_NMU_ADDR_MAP_STATUS_DDR_INTERLEAVE  1  // Bit0 definition: Address Mapped is DDR interleave
`define NOC_NMU_ADDR_REMAP_TABLE_DEPTH 16
//`define NOC_LOG2NMU_ADDR_REMAP_TABLE_DEPTH `CLOG2(`NMU_ADDR_REMAP_TABLE_DEPTH)
`define NOC_LOG2NMU_ADDR_REMAP_TABLE_DEPTH 4

// --------------------------------------------------------
// RROB
`ifdef _noc_nmu_rrob_64x32_
 `define NOC_NMU_NUM_RROB_ENTRY 64
 `define NOC_LOG2NMU_NUM_RROB_ENTRY 6
 `define NOC_NMU_RROB_REQ_FIFO_DEPTH 6
`else
 `define NOC_NMU_NUM_RROB_ENTRY 32
 `define NOC_LOG2NMU_NUM_RROB_ENTRY 5
 `define NOC_NMU_RROB_REQ_FIFO_DEPTH 4
`endif

// --------------------------------------------------------
// Write Response Tracker
`define NOC_NMU_NUM_WRTRK_ENTRY 64
//`define NOC_LOG2NMU_NUM_WRTRK_ENTRY `CLOG2(`NMU_NUM_WRTRK_ENTRY)
`define NOC_LOG2NMU_NUM_WRTRK_ENTRY 6
`define NOC_NMU_MAX_NUM_CHOP 64
//`define NOC_LOG2NMU_MAX_NUM_CHOP `CLOG2(`NMU_MAX_NUM_CHOP)
`define NOC_LOG2NMU_MAX_NUM_CHOP 6
`define NOC_NMU_WRTRK_RESPONSE_STATUS_WIDTH 2
`define NOC_NMU_WRTRK_RESPONSE_STATUS_NONE 0
`define NOC_NMU_WRTRK_RESPONSE_STATUS_PARTIAL 1
`define NOC_NMU_WRTRK_RESPONSE_STATUS_COMPLETE 2

// --------------------------------------------------------
// Rate limiting
`define NOC_NMU_RATE_PERIOD_CNT_WIDTH 20
`define NOC_NMU_RATE_CREDIT_CNT_WIDTH 12
`define NOC_NMU_RATE_CREDIT_DROP_WIDTH 10

// --------------------------------------------------------
// Write Buffer
`define NOC_NMU_WBUF_DEPTH 32
//`define NOC_LOG2NMU_WBUF_DEPTH `CLOG2(`NMU_WBUF_DEPTH)
`define NOC_LOG2NMU_WBUF_DEPTH 5

// --------------------------------------------------------
// Chopsize
`define NOC_NMU_CHOPSIZE_WIDTH 2
`define NOC_NMU_CHOPSIZE_64B   0
`define NOC_NMU_CHOPSIZE_128B  1
`define NOC_NMU_CHOPSIZE_256B  2
`define NOC_NMU_CHOPSIZE_512B  3

`define NOC_NMU_DDR_BURST_LEN_WIDTH 1
`define NOC_NMU_DDR_BURST_LEN_16 0
`define NOC_NMU_DDR_BURST_LEN_32 1

// ********************************************************
// NSU
// ********************************************************
// --------------------------------------------------------
// Read Response Tracker
`define NOC_NSU_NUM_RDTRK_ENTRY 32
//`define NOC_LOG2NSU_NUM_RDTRK_ENTRY `CLOG2(`NSU_NUM_RDTRK_ENTRY)
`define NOC_LOG2NSU_NUM_RDTRK_ENTRY 5
`define NOC_NSU_RDTRK_DATA_RESPONSE_STATUS_WIDTH 1
`define NOC_NSU_RDTRK_DATA_RESPONSE_STATUS_NONE 0
`define NOC_NSU_RDTRK_DATA_RESPONSE_STATUS_DATA 1
`define NOC_NSU_RDTRK_DATA_RESPONSE_STATUS_PARTIAL 1
`define NOC_NSU_RDTRK_DATA_RESPONSE_STATUS_COMPLETE 2

// --------------------------------------------------------
// Write Response Tracker
`define NOC_NSU_NUM_WRTRK_ENTRY 32
//`define NOC_LOG2NSU_NUM_WRTRK_ENTRY `CLOG2(`NSU_NUM_WRTRK_ENTRY)
`define NOC_LOG2NSU_NUM_WRTRK_ENTRY 5
`define NOC_NSU_WRTRK_RESPONSE_STATUS_WIDTH 1
`define NOC_NSU_WRTRK_RESPONSE_STATUS_NONE 0
//`define NOC_NSU_WRTRK_RESPONSE_STATUS_PARTIAL 1
`define NOC_NSU_WRTRK_RESPONSE_STATUS_COMPLETE 1

`define NOC_NSU_MAX_NUM_CHOP 32
`define NOC_LOG2NSU_MAX_NUM_CHOP 5

// --------------------------------------------------------
// Request FIFO
`define NOC_NSU_REQ_FIFO_DEPTH 5
`define NOC_LOG2NSU_REQ_FIFO_DEPTH 3
`define NOC_NSU_RESP_FIFO_DEPTH 5
`define NOC_LOG2NSU_RESP_FIFO_DEPTH 3

// --------------------------------------------------------
// Read Buffer
`define NOC_NSU_RBUF_DEPTH 5
//`define NOC_LOG2NSU_RBUF_DEPTH `CLOG2(`NSU_RBUF_DEPTH)
`define NOC_LOG2NSU_RBUF_DEPTH 3

//Compressed ID
`define NOC_LOG2NSU_COMP_ID_INDEX_WIDTH 5
`define NOC_NSU_COMP_ID_INDEX_NUM 32
// ********************************************************
// NPS
// ********************************************************
// --------------------------------------------------------
`define NOC_NPS_NUM_PORT  4
`define NOC_LOG2NPS_NUM_PORT 2
`define NOC_NCRB_NUM_PORT  2
`define NOC_NPS_NUM_VC  8
//`define NOC_LOG2NPS_NUM_VC `CLOG2(`NPS_NUM_VC)
`define NOC_LOG2NPS_NUM_VC 3
`define NOC_NPS_IN_CREDIT_WIDTH 5
`define NOC_NPS_OUT_CREDIT_WIDTH 4
`define NOC_NPS_IPA_TOKEN_WIDTH  8
`define NOC_NPS_VCA_TOKEN_WIDTH  8

// Routing Table
//`define NOC_NPS_NUM_RT_CHIP 2**2
//`define NOC_NPS_NUM_RT_REGION 2**6
//`define NOC_NPS_NUM_RT_LOCAL 2**4
//`define NOC_LOG2NPS_NUM_RT_CHIP 2
//`define NOC_LOG2NPS_NUM_RT_REGION 6
//`define NOC_LOG2NPS_NUM_RT_LOCAL 4
//`define NOC_NPS_LOCAL_ID 3:0
//`define NOC_NPS_REGION_ID 9:4
//`define NOC_NPS_CHIP_ID 11:10

`define NOC_NPS_NUM_RT_HIGH 2**6
`define NOC_NPS_NUM_RT_MID 2**2
`define NOC_NPS_NUM_RT_LOW 2**4
`define NOC_LOG2NPS_NUM_RT_HIGH 6
`define NOC_LOG2NPS_NUM_RT_MID 2
`define NOC_LOG2NPS_NUM_RT_LOW 4
`define NOC_NPS_HIGH_ID 11:6
`define NOC_NPS_MID_ID 5:4
`define NOC_NPS_LOW_ID 3:0

//NPS ERROR Codes
`define NOC_ERR_REF_NPS_DST_PAR_ERR  20'h6_3_1_1_1
`define NOC_ERR_REF_NPS_ROUTE_ERR    20'hB_3_3_1_1
`define NOC_ERR_REF_NPS_CRDT_RDY_ERR 20'hB_3_3_1_2
`define NOC_ERR_REF_NPS_CRDT_OVF_ERR 20'hB_3_3_1_3
`define NOC_ERR_REF_NPS_BUF_OVF_ERR  20'hB_3_3_1_5
`define NOC_ERR_REF_NPS_DBI_PAR_ERR  20'hB_3_3_1_4

// Number of Default routing table
`define NOC_LOG2NPS_NUM_DEFAULT_ROUTING_TABLE 4

//NSU wrtrk/rdtrk arb
`define NOC_NSU_VC_INDEX_WIDTH 1
`define NOC_NSU_RDTRK_FIFO_INDEX_WIDTH 3
`define NOC_NSU_RDTRK_FIFO_ENTRY 8

`define NOC_NSU_RDTRK_NUM_VC_ARB 2
`define NOC_NSU_WRTRK_NUM_VC_ARB 2
`define NOC_NSU_RDTRK_TOKEN_WIDTH 8
`define NOC_NSU_WRTRK_TOKEN_WIDTH 8
`define NOC_NSU_VC_ARB_TOKEN_WIDTH 8

`define NOC_NSU_NUM_READ_VC 2
`define NOC_NSU_NUM_WRITE_VC 2
`define NOC_NSU_NUM_VC (`NOC_NSU_NUM_READ_VC + `NOC_NSU_NUM_WRITE_VC)

`define NOC_NSU_VC_MAX_CREDIT_WIDTH 4
`define NOC_NSU_VC_MAX_CREDIT 5

`define NOC_AXI_AFIFO_DEPTH 6

`define NOC_NSU_AXADDR_LOWER_WIDTH  8
`define NOC_NSU_AXADDR_UPPER_WIDTH  (`NOC_NPP_AXADDR_WIDTH-`NOC_NSU_AXADDR_LOWER_WIDTH)
`define NOC_NSU_AXADDR_LOWER 7:0
`define NOC_NSU_AXADDR_UPPER 63:8

`define NOC_NSU_CONV_LOWER_WIDTH 6

//time expiration
`define NOC_NSU_EXP_CHK_WIDTH 2

// ********************************************************
// NCRB
// ********************************************************
// --------------------------------------------------------
`define NOC_NCRB_EB_DEPTH 8
`define NOC_LOG2NCRB_EB_DEPTH 3
`define NOC_NCRB_MAX_VC_BUF_DEPTH 13
`define NOC_LOG2NCRB_MAX_VC_BUF_DEPTH 4
`define NOC_NCRB_WR2RD_EB_WIDTH (`NOC_LOG2NPS_NUM_VC+1+1)
`define NOC_NCRB_MAX_NUM_CYCLES 1024
`define NOC_LOG2NCRB_MAX_NUM_CYCLES 10

//NCRB ERROR Codes
`define NOC_ERR_REF_NCRB_DST_PAR_ERR  20'h6_4_1_1_1
`define NOC_ERR_REF_NCRB_CRDT_RDY_ERR 20'hB_4_3_1_2
`define NOC_ERR_REF_NCRB_CRDT_OVF_ERR 20'hB_4_3_1_3
`define NOC_ERR_REF_NCRB_BUF_OVF_ERR  20'hB_4_3_1_5
`define NOC_ERR_REF_NCRB_DBI_PAR_ERR  20'hB_4_3_1_4

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

// ********************************************************
// NoC Debug bus Interface Common Define
// ********************************************************
`define NOC_DBG_CTRL_WIDTH 8
`define NOC_DBG_MUX_WIDTH 128
`define NOC_DBG64_MUX_WIDTH 64

// ********************************************************
// NoC NMU AXI stream internal packet length
// ********************************************************
`define NOC_NMU_AXI_STRM_PKT_LEN 6'h3f
`define NOC_NMU_STRM_DATA_CNT_WIDTH 6

// ********************************************************
// NoC CHOP size Define
// ********************************************************
//`define CHOP_64B     2'b00
//`define CHOP_128B    2'b01
//`define CHOP_256B    2'b10
//`define CHOP_512B    2'b11

// ********************************************************
// NoC Exclusive Define - 1bit
// ********************************************************
`define NOC_AXLOCK_EXCLUSIVE 1'b1

// ********************************************************
// NSU DATA PARITY
// ********************************************************
`define NOC_NMU_DATA_PARITY_WIDTH 16
`define NOC_LOG2NMU_DATA_PARITY_WIDTH 4
`define NOC_NMU_WSTRB_PARITY_WIDTH 2
`define NOC_LOG2NMU_WSTRB64_PAR_WIDTH 3 //8 bit

`define NOC_NSU_DATA_PARITY_WIDTH 16
`define NOC_LOG2NSU_DATA_PARITY_WIDTH 4
`define NOC_NSU_WSTRB_PARITY_WIDTH 4 //4Byte data per 1 bit
`define NOC_NSU_WSTRB_PARITY_WIDTH_8B 2 //8Byte data per 1 bit
`define NOC_LOG2NSU_WSTRB_PARITY_WIDTH 1

`define NOC_NSU_ADDR_PARITY_WIDTH 8
`define NOC_LOG2NSU_ADDR_PARITY_WIDTH 3
`endif

// ********************************************************
// ECC ERR BIT WIDTH
// ********************************************************
`define NOC_ERR_ECC_BIT_WIDTH 8


// ********************************************************
// LOG2DEPTH of ASYNC_FIFO
// ********************************************************
`define NOC_AFIFO_LOG2DEPTH 3

//`define AXI_SIM_1W_1R
//`define AXI_NMU_512
//`define AXI_NMU_64

//---------------------------------------------------------
// (Temp) NoC Default Address Map
//    -SBA : Node System Base address (unit = MB)
//    -SIZE: Node Size (# of MB)
//    -NID : Node NoC ID
//---------------------------------------------------------
`define SBA_DDR_CH0_0      28'h0000000
`define SBA_LPD_AFI_FS     28'h0000800
//`define SBA_VCU            28'h0000A00
`define SBA_FPD_AFI_0      28'h0000A40
`define SBA_FPD_AFI_1      28'h0000B00
`define SBA_QSPI           28'h0000C00
`define SBA_PCIE_REGION_0  28'h0000E00
`define SBA_PMC            28'h0000F00
`define SBA_STM_CORESIGHT  28'h0000F80
`define SBA_GIC            28'h0000F90
//`define SBA_Reserved       28'h0000F91
`define SBA_CPM            28'h0000FC0
`define SBA_FPD_SLAVES     28'h0000FD0
`define SBA_LPD_SLAVES     28'h0000FE0
`define SBA_PMC_ALIAS_0    28'h0001000
`define SBA_PMC_ALIAS_1    28'h0001080
`define SBA_PMC_ALIAS_2    28'h0001100
`define SBA_PMC_ALIAS_3    28'h0001180
//`define SBA_Reserved       28'h0001200
`define SBA_ME_ARRAY_0     28'h0002000
`define SBA_ME_ARRAY_1     28'h0002400
`define SBA_ME_ARRAY_2     28'h0002800
`define SBA_ME_ARRAY_3     28'h0002C00
//`define SBA_Reserved       28'h0003000
`define SBA_PL_VIA_PS_0    28'h0004000
`define SBA_PCIE_REGION_1  28'h0006000
`define SBA_DDR_CH0_1      28'h0008000
//`define SBA_Reserved       28'h0010000
`define SBA_HBM_T0         28'h0040000
`define SBA_HBM_T1         28'h0050000
`define SBA_HBM_T2         28'h0060000
`define SBA_HBM_T3         28'h0070000
`define SBA_PCIE_REGION_2  28'h0080000
`define SBA_DDR_CH0_2      28'h00C0000
`define SBA_DDR_CH0_3      28'h0100000
//`define SBA_Reserved       28'h01B7800
`define SBA_PL_VIA_NOC_0   28'h0200000
`define SBA_PL_VIA_PS_1    28'h0400000
`define SBA_DDR_CH1        28'h0500000
`define SBA_DDR_CH2        28'h0600000
`define SBA_DDR_CH3        28'h0700000
`define SBA_PL_VIA_NOC_1   28'h0800000
//`define SBA_Reserved       28'h1000000

`define SIZE_DDR_CH0_0        2048
`define SIZE_LPD_AFI_FS        512
//`define SIZE_VCU                64
`define SIZE_FPD_AFI_0         192
`define SIZE_FPD_AFI_1         256
`define SIZE_QSPI              512
`define SIZE_PCIE_REGION_0     256
`define SIZE_PMC               128
`define SIZE_STM_CORESIGHT      16
`define SIZE_GIC                 1
//`define SIZE_Reserved           47
`define SIZE_CPM                16
`define SIZE_FPD_SLAVES         16
`define SIZE_LPD_SLAVES         32
`define SIZE_PMC_ALIAS_0       128
`define SIZE_PMC_ALIAS_1       128
`define SIZE_PMC_ALIAS_2       128
`define SIZE_PMC_ALIAS_3       128
//`define SIZE_Reserved         3584
`define SIZE_ME_ARRAY_0       1024
`define SIZE_ME_ARRAY_1       1024
`define SIZE_ME_ARRAY_2       1024
`define SIZE_ME_ARRAY_3       1024
//`define SIZE_Reserved         4096
`define SIZE_PL_VIA_PS_0      8192
`define SIZE_PCIE_REGION_1    8192
`define SIZE_DDR_CH0_1       32768
//`define SIZE_Reserved       196608
`define SIZE_HBM_T0          65536
`define SIZE_HBM_T1          65536
`define SIZE_HBM_T2          65536
`define SIZE_HBM_T3          65536
`define SIZE_PCIE_REGION_2  262144
`define SIZE_DDR_CH0_2      262144
`define SIZE_DDR_CH0_3      751616
//`define SIZE_Reserved       296960
`define SIZE_PL_VIA_NOC_0  28'h0200000
`define SIZE_PL_VIA_PS_1   28'h0100000
`define SIZE_DDR_CH1       28'h0100000
`define SIZE_DDR_CH2       28'h0100000
`define SIZE_DDR_CH3       28'h0100000
`define SIZE_PL_VIA_NOC_1  28'h0800000
//`define SIZE_Reserved      28'hF000000

`define NOC_NMU_DDR_ADR_MAP_DEPTH  7
`define NOC_NMU_DDR_ADR_MAP_WIDTH 15

`define NOC_NMU_DDR_DST_MAP_DEPTH  8
`define NOC_NMU_DDR_DST_MAP_WIDTH 12

`define C_TBASE_WIDTH 8

`define NOC_DWIDTH_WIDTH 7

// ********************************************************
// NOC_ERROR LOG INFO
// ********************************************************

`define NOC_NSU_ERR_LOG_WIDTH 244


// ********************************************************
// NOC NIDB_
// ********************************************************
`define NOC_NIDB_IOB_TX_WIDTH 43
`define NOC_NIDB_TX0_NUM_FF 2
`define NOC_NIDB_TX1_NUM_FF 2
`define NOC_NIDB_TX2_NUM_FF 2
`define NOC_NIDB_TX3_NUM_FF 2
`define NOC_NIDB_TX4_NUM_FF 2
`define NOC_NIDB_CALIB_DONE 2'b11
`define NOC_NIDB_LINK_ST_WIDTH 2
`define NOC_NIDB_IOB_DATA_WIDTH 38
`define NOC_NIDB_IOB_DBI_WIDTH 5

// ********************************************************
// NPS TIE DOWN OPTION
// ********************************************************
`define PORT_TIE_NPS 3'b0_0_0  // NMU, NSU, DBI
`define PORT_TIE_NMU 3'b1_0_0  // NMU, NSU, DBI
`define PORT_TIE_NSU 3'b0_1_0  // NMU, NSU, DBI

`define PORT_TIE_PS_NPS 3'b0_0_0  // NMU, NSU, DBI
`define PORT_TIE_PL_NPS 3'b0_0_0  // NMU, NSU, DBI
`define PORT_TIE_PL_NSU 3'b0_1_0  // NMU, NSU, DBI

