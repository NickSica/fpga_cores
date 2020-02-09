/******************************************************************************
// (c) Copyright 2018 - 2019 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
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
******************************************************************************/
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor             : Xilinx
// \   \   \/     Version            : 0.1
//  \   \         Application        : Performance TG
//  /   /         Filename           : axi_common_defines.vh
// /___/   /\     Date Last Modified : $Date: $
// \   \  /  \    Date Created       : 2018/10/12
//  \___\/\___\
//
//Device:
//Design Name:
//Purpose:
//
// Description:
//
// Specifications:
//
//Reference:
//Revision History:
//*****************************************************************************
`define USE_XPM
//`define USE_VIO
`define TXN_CNT_LT_7

`include "axi_stream_define.vh" 

`define D_FLOP_RST(input_clk, input_sig, output_sig, input_rst_n, rst_value) \
always_ff @(posedge input_clk) begin                \
  if (!input_rst_n) begin                           \
    output_sig <= rst_value;                        \
  end else begin                                    \
    output_sig <= input_sig;                        \
  end                                               \
end

`define D_FLOP_ASYNC_RST(input_clk, input_sig, output_sig, input_rst_n, rst_value) \
always_ff @(posedge input_clk, negedge input_rst_n) begin                \
  if (!input_rst_n) begin                           \
    output_sig <= rst_value;                        \
  end else begin                                    \
    output_sig <= input_sig;                        \
  end                                               \
end


`define D_FLOP(input_clk, input_sig, output_sig)    \
always_ff @(posedge input_clk) begin                \
    output_sig <= input_sig;                        \
end


`define CLOG2(x)                \
      (x <= 2)          ? 1 :   \
      (x <= 4)          ? 2 :   \
      (x <= 8)          ? 3 :   \
      (x <= 16)         ? 4 :   \
      (x <= 32)         ? 5 :   \
      (x <= 64)         ? 6 :   \
      (x <= 128)        ? 7 :   \
      (x <= 256)        ? 8 :   \
      (x <= 512)        ? 9 :   \
      (x <= 1024)       ? 10 :  \
      (x <= 2048)       ? 11 :  \
      (x <= 4096)       ? 12 :  \
      (x <= 8192)       ? 13 :  \
      (x <= 16384)      ? 14 :  \
      (x <= 32768)      ? 15 :  \
      (x <= 65536)      ? 16 :  \
      (x <= 131072)     ? 17 :  \
      (x <= 262144)     ? 18 :  \
      (x <= 524288)     ? 19 :  \
      (x <= 1048576)    ? 20 :  \
      (x <= 2097152)    ? 21 :  \
      (x <= 4194304)    ? 22 :  \
      (x <= 8388608)    ? 23 :  \
      (x <= 16777216)   ? 24 : -1

`define BYTE_WRITE_WIDTH 8 
`define REG_ADD_WIDTH 32
`define REG_ADD_MEM_WIDTH 13
`define REG_DAT_WIDTH 32
`define MEM_ADD_WIDTH 9
`define MEM_DATA_WIDTH 416
`define BYTE_SIZE_WIDTH 32
`define MEM_STROBE_WIDTH `MEM_DATA_WIDTH/`BYTE_SIZE_WIDTH
//`define EN_MSB4BIT_MASK
//`define AXI3
//`define AXI_STREAM
`define EN_RDCH_MONITOR
`define EN_WRCH_MONITOR
//`define EN_CNST_ID_LATENCY_LOGIC
`define EN_INCR_ID_LATENCY_LOGIC
//`define EN_4T_LOGIC // comment this if want to use 4
//`define NUM_TGS                                  4
//`define DISABLE_OUTSTAND_RESP_LIMIT
//`define USE_URAM 1 // comment this if want to use BRAM
`define SKIP_MASK_ADDR
`define USE_XPM_FIFO
`define EN_ALL_DATA_PATTERNS  // uncomment this if want to use
// `define EN_LOOP_OFFSET_ADDR   // uncomment this if want to use
//`define TOTAL_COUNT_WIDTH                       32
`define BRAM_WIDTH                             416 // CAUTION: this wont change instruction bram width and fifo bram width, regenerate according to this width
`define BRAM_DEPTH                             512
`define BRAM_ADDR_WIDTH                        `CLOG2(`BRAM_DEPTH)
`define FIFO_WIDTH                             `BRAM_WIDTH-47-30 // reducing 47 bits for FIFO width and 30 bits extra added(reserved) for 416 also removed.
`define RDCH_FIFO_DEPTH                          4
`define WRCH_FIFO_DEPTH                          4
`define DEST_ID_WIDTH                           12
//`ifdef AXI3
  //  `define AXLEN_WIDTH                          4   // AXI3 -> 4(max) and AXI4 -> 8(max)
//`else
    `define AXLEN_WIDTH                          8   // AXI3 -> 4(max) and AXI4 -> 8(max)
//`endif

// `define AXID_WIDTH                               4
// `define AXADDR_WIDTH                            48
`define AXSIZE_WIDTH                             3
`define AXBURST_WIDTH                            2


//`ifdef AXI3
    //`define AXLOCK_WIDTH                         2  // AXI3 -> 2 and AXI4 -> 1
//`else
    `define AXLOCK_WIDTH                         1  // AXI3 -> 2 and AXI4 -> 1
//`endif

`define AXCACHE_WIDTH                            4
`define AXPROT_WIDTH                             3
`define AXQOS_WIDTH                              4
`define AXREGION_WIDTH                           4
`define AXUSER_WIDTH                             4
// `define AXDATA_WIDTH                           256
// `define AXSTRB_WIDTH                            `AXDATA_WIDTH/8
`define AXRESP_WIDTH                             2
`define AXLAST_WIDTH                             1

`define NUM_TXN_WIDTH                           16
`define DELAY_BTWN_TXN_WIDTH                    16
`define ADDR_PAT_WIDTH                           2

`define EXP_RRESP_WIDTH                          3

`define INST_EXP_RRESP_POS                  383+:`EXP_RRESP_WIDTH
`define INST_ID_VALUE_POS                   379+:4
`define INST_LOOP_INCR_BY_POS               363+:16
`define INST_DATA_PATTERNS_POS              354+:9
`define INST_DI_EN_POS                      353+:1
`define INST_DEST_ID_POS                    341+:12
`define INST_LOOP_START_POS                 340+:1
`define INST_LOOP_INF_POS                   339+:1
`define INST_LOOP_COUNT_POS                 323+:16
`define INST_DELAY_BTWN_TXN_POS             307+:`DELAY_BTWN_TXN_WIDTH
`define INST_INFI_TXN_POS                   306+:1
`define INST_LAST_INST_POS                  305+:1
`define INST_LOOP_POS                       304+:1
`define INST_LOOP_ADDR_POS                  295+:9
`define INST_ADDR_PAT_POS                   293+:`ADDR_PAT_WIDTH
`define INST_SEED_POS                       245+:48
`define INST_BASE_ADDR_POS                  197+:48
`define INST_HIGH_ADDR_POS                  149+:48
`define INST_ADDR_OFFSET_POS                101+:48
`define INST_NUM_BYTES_PER_TXN_POS           53+:48
`define INST_TXN_TYPE_POS                    51+:2
`define INST_NUM_TXN_POS                     35+:`NUM_TXN_WIDTH
`define INST_ID_TYPE_POS                     34+:1
`define INST_LEN_POS                         26+:8
`define INST_SIZE_POS                        23+:`AXSIZE_WIDTH
`define INST_BURST_POS                       21+:`AXBURST_WIDTH
`define INST_LOCK_POS                        19+:2
`define INST_CACHE_POS                       15+:`AXCACHE_WIDTH
`define INST_PROT_POS                        12+:`AXPROT_WIDTH
`define INST_QOS_POS                          8+:`AXQOS_WIDTH
`define INST_REGION_POS                       4+:`AXREGION_WIDTH
`define INST_USER_POS                         0+:`AXUSER_WIDTH

//Truncated instruction for reducing FIFO width
`define INST_FIFO_EXP_RRESP_POS                  336+:`EXP_RRESP_WIDTH
`define INST_FIFO_ID_VALUE_POS                   332+:4
// `define INST_LOOP_INCR_BY_POS               363+:16
`define INST_FIFO_DATA_PATTERNS_POS              323+:9
`define INST_FIFO_DI_EN_POS                      322+:1
`define INST_FIFO_DEST_ID_POS                    310+:12
// `define INST_LOOP_START_POS                 340+:1
// `define INST_LOOP_INF_POS                   339+:1
// `define INST_LOOP_COUNT_POS                 323+:16
`define INST_FIFO_DELAY_BTWN_TXN_POS             294+:`DELAY_BTWN_TXN_WIDTH
`define INST_FIFO_INFI_TXN_POS                   293+:1
// `define INST_LAST_INST_POS                  305+:1
// `define INST_LOOP_POS                       304+:1
// `define INST_LOOP_ADDR_POS                  295+:9
`define INST_FIFO_ADDR_PAT_POS                   291+:`ADDR_PAT_WIDTH
`define INST_FIFO_SEED_POS                       243+:48
`define INST_FIFO_BASE_ADDR_POS                  195+:48
`define INST_FIFO_HIGH_ADDR_POS                  147+:48
`define INST_FIFO_ADDR_OFFSET_POS                 99+:48
`define INST_FIFO_NUM_BYTES_PER_TXN_POS           51+:48
// `define INST_TXN_TYPE_POS                    51+:2
`define INST_FIFO_NUM_TXN_POS                     35+:`NUM_TXN_WIDTH
`define INST_FIFO_ID_TYPE_POS                     34+:1
`define INST_FIFO_LEN_POS                         26+:8
`define INST_FIFO_SIZE_POS                        23+:`AXSIZE_WIDTH
`define INST_FIFO_BURST_POS                       21+:`AXBURST_WIDTH
`define INST_FIFO_LOCK_POS                        19+:2
`define INST_FIFO_CACHE_POS                       15+:`AXCACHE_WIDTH
`define INST_FIFO_PROT_POS                        12+:`AXPROT_WIDTH
`define INST_FIFO_QOS_POS                          8+:`AXQOS_WIDTH
`define INST_FIFO_REGION_POS                       4+:`AXREGION_WIDTH
`define INST_FIFO_USER_POS                         0+:`AXUSER_WIDTH

`define INST_READ                           2'b00
`define INST_WRITE                          2'b01
`define INST_WAIT                           2'b10

`define LINEAR_AUTO                         2'b00
`define LINEAR_INCR_BY                      2'b01
`define RANDOM                              2'b10
`define RANDOM_ALLIGN                       2'b11

`define CNST_ID                             1'b0
`define INCR_ID                             1'b1

`define OKAY                                2'b00
`define EXOKAY                              2'b01
`define SLVERR                              2'b10
`define DECERR                              2'b11



`define PHASE_DONE_BIT 0
