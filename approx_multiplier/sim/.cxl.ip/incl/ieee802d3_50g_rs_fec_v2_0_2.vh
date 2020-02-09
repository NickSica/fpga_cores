 ///////////////////////////////////////////////////////////////////////////////
 // Project: ieee802d3_50g_rs_fec_v2_0_2
 // Company: Xilinx
 //
 // (c) Copyright 2015 Xilinx, Inc. All rights reserved.
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

 //
 ///////////////////////////////////////////////////////////////////////////////

`ifdef FASTSIM
  `timescale 1ns/1ns
`else
  `timescale 1ps/1ps
`endif


`ifndef _ieee802d3_50g_rs_fec_v2_0_2_global_defs_vh_
`define _ieee802d3_50g_rs_fec_v2_0_2_global_defs_vh_

// First undefine everything we are about to define

`undef UNPACK_ARRAY
`undef N_CONST
`undef R_WIDTH
`undef SYMBOL_WIDTH
`undef T_CONST
`undef R_CONST
`undef WIDTH_4T
`undef COUNT_PE_LIMIT
`undef N_CONST_KP
`undef T_CONST_KP
`undef T_WIDTH_KP
`undef R_CONST_KP
`undef WIDTH_4T_KP
`undef R_WIDTH_KP
`undef COUNT_PE_LIMIT_KP
`undef N_SYMBOLS
`undef NO_REG
`undef REG_ONLY
`undef REG_AND_NO_REG
`undef N_50
`undef NO_OF_LANES
`undef BASE_WIDTH
`undef SERDES_WIDTH
`undef HI_SER_COUNT_MAX
`undef HI_SER_KP4_67MS
`undef K_COUNT
`undef K_INDICATION
`undef K_INDICATION_KP4
`undef SW
`undef SWM1
`undef TSWM1
`undef INT_INP_MSB
`undef INT_QQ_MSB
`undef INT_CINP_MSB
`undef PARITY_WIDTH
`undef TIMESTAMP_WIDTH
`undef TIMESTAMP_LATENCY_FULL
`undef TIMESTAMP_LATENCY_LOW_LATENCY
`undef TIMESTAMP_LATENCY_BYPASS_INDICATION
`undef TIMESTAMP_LATENCY_BYPASS_CORRECTION
`undef TIMESTAMP_LATENCY_XILINX_SPECIAL_MODE
`undef ASYNC_RESET_AXI_SEL
`undef AXI_RESP_OKAY
`undef AXI_RESP_EXOKAY
`undef AXI_RESP_SLVERR
`undef AXI_RESP_DECERR
`undef DEFAULT_THRESHOLD
`undef SHIFTER_PIPE_STAGES
`undef SCORE_WINDOW_PIPE_STAGES
`undef CORRELATOR_PIPE_STAGES
`undef DELAY_WIDTH
`undef DEFAULT_THRESHOLD_KP4
`undef ADR_FIFO_REWIND_KP4
`undef SHIFTER_PIPE_STAGES_KP4
`undef SCORE_WINDOW_PIPE_STAGES_KP4
`undef CORRELATOR_PIPE_STAGES_KP4
`undef DELAY_WIDTH_KP4
`undef FIFO_SYNC_DELAY_KP4
`undef REORDER_PIPE_STAGES_KP4
`undef TS1588_ADJUST_PIPE_STAGES_KP4

// Now (re-)define everything

`define UNPACK_ARRAY(PK_WIDTH,PK_LEN,PK_DEST,PK_SRC,NAME)  generate for (unpk_idx=0; unpk_idx<(PK_LEN); unpk_idx=unpk_idx+1)  begin :NAME assign PK_DEST[unpk_idx][((PK_WIDTH)-1):0] = PK_SRC[((PK_WIDTH)*unpk_idx+(PK_WIDTH-1)):((PK_WIDTH)*unpk_idx)]; end endgenerate

///////////////////////////////////////////////////////////////////////////////
//  rs_fec
///////////////////////////////////////////////////////////////////////////////

`define N_CONST           528
`define R_WIDTH             4
`define SYMBOL_WIDTH       10
`define T_CONST             7
`define R_CONST            14
`define WIDTH_4T            5
`define COUNT_PE_LIMIT     14

`define N_CONST_KP         544
`define T_CONST_KP          15
`define T_WIDTH_KP           4
`define R_CONST_KP          30
`define WIDTH_4T_KP          6
`define R_WIDTH_KP           5
`define COUNT_PE_LIMIT_KP   30
`define N_SYMBOLS           16

`define NO_REG              0
`define REG_ONLY            1
`define REG_AND_NO_REG      2

`define N_50               14
`define NO_OF_LANES         2
`define BASE_WIDTH        132
`define SERDES_WIDTH       66

///////////////////////////////////////////////////////////////////////////////
// For hi_ser testing
///////////////////////////////////////////////////////////////////////////////

// Values used in simulation speedup
`ifdef DEBUG_HI_SER
`define HI_SER_COUNT_MAX   21'h003FF //1024 FEC words
`define HI_SER_KP4_67MS    25'd40960 // clock cycles for 1024 codewords
`define K_COUNT                256
`define K_INDICATION           64
`define K_INDICATION_KP4       64
`endif

// Values used in the real world
`ifndef DEBUG_HI_SER
`define HI_SER_COUNT_MAX 21'h04ffff //5*2^16 FEC words  == 67.5ms
`define HI_SER_KP4_67MS  25'd26367200 // clock cycles for 67ms = HI_SER_KP4_67MS x 2.56ns
`define K_COUNT                8192
`define K_INDICATION           417
`define K_INDICATION_KP4       6380
`endif


/////////////////////////////////////////////////////
// defines for the top levels
/////////////////////////////////////////////////////


//  Used in the galois field multiplier
`define SW    `SYMBOL_WIDTH
`define SWM1  (`SW-1)
`define TSWM1 (2*`SW-1)
`define INT_INP_MSB (qterm_num_pterms(qi) - 1)
`define INT_QQ_MSB  (qterm_num_suboutputs(qi) - 1)
`define INT_CINP_MSB (cterm_num_sterms(ci) - 1)

// for ECC error handling
`define PARITY_WIDTH 5

///////////////////////////////////////////////////////////////////////////////
// Timestamp
///////////////////////////////////////////////////////////////////////////////

`define TIMESTAMP_WIDTH         80

// Timestamp latencies
// These values include the whole datapath, from alignment to transcode.
`define TIMESTAMP_LATENCY_FULL                 128
`define TIMESTAMP_LATENCY_LOW_LATENCY           92
`define TIMESTAMP_LATENCY_BYPASS_INDICATION     88
`define TIMESTAMP_LATENCY_BYPASS_CORRECTION     56
`define TIMESTAMP_LATENCY_XILINX_SPECIAL_MODE   21


///////////////////////////////////////////////////////////////////////////////
//  axi_defs
///////////////////////////////////////////////////////////////////////////////

// The AXI block is in the soft core only, so give it a synchronous reset by
// defining this macro as null
`define ASYNC_RESET_AXI_SEL

// Response codes for AXI4
`define AXI_RESP_OKAY    2'b00
`define AXI_RESP_EXOKAY  2'b01
`define AXI_RESP_SLVERR  2'b10
`define AXI_RESP_DECERR  2'b11


///////////////////////////////////////////////////////////////////////////////
//  adr_defs
///////////////////////////////////////////////////////////////////////////////
`define DEFAULT_THRESHOLD         16     // Threshold for AM score comparison
`define SHIFTER_PIPE_STAGES       2      // Pipelining for barrel shifter
`define SCORE_WINDOW_PIPE_STAGES  2      // Additional pipelining for window scoring function
`define CORRELATOR_PIPE_STAGES    1      // Additional pipelining for correlators
`define DELAY_WIDTH               14     // Width of data bus for reporting lane delay

`define DEFAULT_THRESHOLD_KP4         20     // Threshold for AM score comparison
`define ADR_FIFO_REWIND_KP4           11     // Distance to rewind FIFO when starting search
`define SHIFTER_PIPE_STAGES_KP4       2      // Pipelining for barrel shifter
`define SCORE_WINDOW_PIPE_STAGES_KP4  2      // Additional pipelining for window scoring function
`define CORRELATOR_PIPE_STAGES_KP4    1      // Additional pipelining for correlators
`define DELAY_WIDTH_KP4               14     // Width of data bus for reporting lane delay
`define FIFO_SYNC_DELAY_KP4           5      // Time taken for data out of FIFO to settle in search mode
`define REORDER_PIPE_STAGES_KP4       1 //5      // Cycles taken to re-order and gearbox lane data
`define TS1588_ADJUST_PIPE_STAGES_KP4 6      // Cycles taken to adjust 1588 timestamp for gearboxing

///////////////////////////////////////////////////////////////////////////////
//
///////////////////////////////////////////////////////////////////////////////

`endif // _ieee802d3_50g_rs_fec_v2_0_2_global_defs_vh_
