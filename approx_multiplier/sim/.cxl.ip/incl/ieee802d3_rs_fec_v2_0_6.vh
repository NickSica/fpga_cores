 ///////////////////////////////////////////////////////////////////////////////
 // Project: ieee802d3_rs_fec_v2_0_6
 // Company: Xilinx
 //
 //
 //
 // (c) Copyright 2013 Xilinx, Inc. All rights reserved.
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


`ifndef _ieee802d3_rs_fec_v2_0_6_global_defs_vh_
`define _ieee802d3_rs_fec_v2_0_6_global_defs_vh_

// First undefine everything we're about to define

`undef IS_SOFT
`undef ASYNC_RESET_TX_SEL
`undef ASYNC_RESET_RX_SEL
`undef ASYNC_RESET_AXI_SEL
`undef AXI_RESP_OKAY
`undef AXI_RESP_EXOKAY
`undef AXI_RESP_SLVERR
`undef AXI_RESP_DECERR
`undef FRAME_LENGTH_MIN
`undef DEFAULT_THRESHOLD
`undef MAX_SKEW_CYCLES
`undef TIMEBASE_WIDTH
`undef FINE_DESKEW_PIPE_STAGES
`undef SCORE_WINDOW_PIPE_STAGES
`undef CORRELATOR_PIPE_STAGES
`undef N_CONST
`undef R_WIDTH
`undef SYMBOL_WIDTH
`undef T_CONST
`undef R_CONST
`undef SYMBOLS_PER_ROW
`undef WIDE_ROW
`undef WIDTH_4T
`undef COUNT_PE_LIMIT
`undef ROW_WIDTH
`undef WIDE_ROW_88
`undef WIDE_ROW_44
`undef ROWS_2RS_WIDTH
`undef NO_REG
`undef REG_ONLY
`undef REG_AND_NO_REG
`undef NO_OF_LANES
`undef UNPACK_ARRAY
`undef PROCESS_88
`undef TIMESTAMP_WIDTH
`undef FAIL_DETECT_LATENCY
`undef ALIGN_DEL
`undef SYNDROME_LATENCY_SOFT
`undef SYNDROME_LATENCY_ASIC
`undef BYPASS_LATENCY_SOFT
`undef BYPASS_LATENCY_ASIC
`undef BMA_LATENCY_SOFT
`undef BMA_LATENCY_ASIC
`undef CHIEN_FORNEY_LATENCY_SOFT
`undef CHIEN_FORNEY_LATENCY_ASIC
`undef ERROR_GEN_LATENCY_SOFT
`undef ERROR_GEN_LATENCY_ASIC
`undef RS_DECODE_LATENCY_SOFT
`undef RS_DECODE_LATENCY_ASIC
`undef TRANSCODE_LATENCY
`undef SOFT_TIMESTAMP_LATENCY_FULL
`undef SOFT_TIMESTAMP_LATENCY_BYPASS_CORRECTION
`undef SYND_PIPE_C_SOFT
`undef SYND_PIPE_C_ASIC
`undef BMA_PIPE_C_SOFT
`undef BMA_PIPE_C_ASIC
`undef CHIEN_I_PIPE_C_SOFT
`undef CHIEN_I_PIPE_C_ASIC
`undef CHIEN_M_PIPE_C_SOFT
`undef CHIEN_M_PIPE_C_ASIC
`undef RS_DECODE_LATENCY_DEPTH_SOFT
`undef RS_DECODE_LATENCY_DEPTH_ASIC
`undef LOC_DELAY_SOFT
`undef LOC_DELAY_ASIC
`undef SW
`undef SWM1
`undef TSWM1
`undef INT_INP_MSB
`undef INT_QQ_MSB
`undef INT_CINP_MSB
`undef CHIEN_ARRAY_LEN
`undef SYND_ARRAY_LEN
`undef PARITY_WIDTH
`undef T_CONST_KP4
`undef R_CONST_KP4
`undef WIDTH_4T_KP4
`undef COUNT_PE_LIMIT_KP4
`undef N_CONST_KP4
`undef R_WIDTH_KP4
`undef N_SYMBOLS
`undef TIMEOUT_100MHz_500us
`undef TIMEOUT_400MHz_8hr
`undef HI_SER_COUNT_MAX
`undef K_COUNT
`undef K_INDICATION

// Now (re-)define everything

`define IS_SOFT 1
`define ASYNC_RESET_TX_SEL
`define ASYNC_RESET_RX_SEL


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
`define FRAME_LENGTH_MIN          1024   // Minimum number of blocks per frame
`define DEFAULT_THRESHOLD         70     // Threshold for AM score comparison
`define MAX_SKEW_CYCLES           59     // 180ns, ish
`define TIMEBASE_WIDTH            17     // Enough bits to hold (FRAME_DURATION-1)

// Pipelining:
`define FINE_DESKEW_PIPE_STAGES   1      // Additional pipelining for fine alignment shifter
`define SCORE_WINDOW_PIPE_STAGES  2      // Additional pipelining for window scoring function
`define CORRELATOR_PIPE_STAGES    1      // Additional pipelining for correlators

///////////////////////////////////////////////////////////////////////////////
//  rs_fec
///////////////////////////////////////////////////////////////////////////////

`define N_CONST           528
`define R_WIDTH             4
`define SYMBOL_WIDTH       10
`define T_CONST             7
`define R_CONST            14
`define SYMBOLS_PER_ROW    32
`define WIDE_ROW          128 // 4* SYMBOLS_PER_ROW
`define WIDTH_4T            5
`define COUNT_PE_LIMIT     14
`define ROW_WIDTH         320
`define WIDE_ROW_88        88
`define WIDE_ROW_44        44
`define ROWS_2RS_WIDTH      6

`define NO_REG              0
`define REG_ONLY            1
`define REG_AND_NO_REG      2

`define NO_OF_LANES         4

`define UNPACK_ARRAY(PK_WIDTH,PK_LEN,PK_DEST,PK_SRC,NAME)  generate for (unpk_idx=0; unpk_idx<(PK_LEN); unpk_idx=unpk_idx+1)  begin :NAME assign PK_DEST[unpk_idx][((PK_WIDTH)-1):0] = PK_SRC[((PK_WIDTH)*unpk_idx+(PK_WIDTH-1)):((PK_WIDTH)*unpk_idx)]; end endgenerate

/////////////////////////////////////////////////////
// defines for the asic and soft top levels
/////////////////////////////////////////////////////

// if set to 1 process data on 88 symbol wide for reduced latency
// if set to 0 process data on 132 symbol wide for reduced latency
`define PROCESS_88             1
// width of timestamp bus
`define TIMESTAMP_WIDTH         80
// extra latency to move the delay flag to decoded output to 5 for the FPGA case
`define FAIL_DETECT_LATENCY    10
// alignment delay
`define ALIGN_DEL              9 //`ERROR_GEN_LATENCY_SOFT+`FAIL_DETECT_LATENCY-4

// latencies through various parts of the decoder
// delay through syndrome from first row in to syndrome tstart
// this is tvalid based
`define SYNDROME_LATENCY_SOFT     19
`define SYNDROME_LATENCY_ASIC     17
`define BYPASS_LATENCY_SOFT       15
`define BYPASS_LATENCY_ASIC       13
// delay through bma
// not valid based
`define BMA_LATENCY_SOFT          16
`define BMA_LATENCY_ASIC          7
// delay between the bma start and the output of the error locators
// not valid based
`define CHIEN_FORNEY_LATENCY_SOFT 4
`define CHIEN_FORNEY_LATENCY_ASIC 1
// again not tvalid based
`define ERROR_GEN_LATENCY_SOFT   5
`define ERROR_GEN_LATENCY_ASIC   1
// full latency
`define RS_DECODE_LATENCY_SOFT   `SYNDROME_LATENCY_SOFT + `BMA_LATENCY_SOFT + `CHIEN_FORNEY_LATENCY_SOFT + `ERROR_GEN_LATENCY_SOFT
`define RS_DECODE_LATENCY_ASIC   `SYNDROME_LATENCY_ASIC + `BMA_LATENCY_ASIC + `CHIEN_FORNEY_LATENCY_ASIC + `ERROR_GEN_LATENCY_ASIC
`define TRANSCODE_LATENCY  7

// latencies decoder and transcode for timesatmp
`define SOFT_TIMESTAMP_LATENCY_FULL `RS_DECODE_LATENCY_SOFT + `FAIL_DETECT_LATENCY +`TRANSCODE_LATENCY + 2
`define SOFT_TIMESTAMP_LATENCY_BYPASS_CORRECTION `BYPASS_LATENCY_SOFT + `TRANSCODE_LATENCY + 2
//`define SOFT_TIMESTAMP_LATENCY_INDICATION `TRANSCODE_LATENCY

`define SYND_PIPE_C_SOFT  1
`define SYND_PIPE_C_ASIC  0
`define BMA_PIPE_C_SOFT   2
`define BMA_PIPE_C_ASIC   0
`define CHIEN_I_PIPE_C_SOFT 1
`define CHIEN_I_PIPE_C_ASIC 0
`define CHIEN_M_PIPE_C_SOFT 1
`define CHIEN_M_PIPE_C_ASIC 0
`define RS_DECODE_LATENCY_DEPTH_SOFT  128
`define RS_DECODE_LATENCY_DEPTH_ASIC  32
`define LOC_DELAY_SOFT  `CHIEN_FORNEY_LATENCY_SOFT + `ERROR_GEN_LATENCY_SOFT
`define LOC_DELAY_ASIC  `CHIEN_FORNEY_LATENCY_ASIC + `ERROR_GEN_LATENCY_ASIC

//  Used in the galois field multiplier
`define SW    `SYMBOL_WIDTH
`define SWM1  (`SW-1)
`define TSWM1 (2*`SW-1)
`define INT_INP_MSB (qterm_num_pterms(qi) - 1)
`define INT_QQ_MSB  (qterm_num_suboutputs(qi) - 1)
`define INT_CINP_MSB (cterm_num_sterms(ci) - 1)

// used in bma top2
`define CHIEN_ARRAY_LEN (`SYMBOL_WIDTH*(`T_CONST+1))
`define SYND_ARRAY_LEN  (`SYMBOL_WIDTH*`R_CONST)

// for ECC error handling
`define PARITY_WIDTH 5

///////////////////////////////////////////////////////////////////////////////
//  Definitions for KP4 code
///////////////////////////////////////////////////////////////////////////////

`define T_CONST_KP4         15
`define R_CONST_KP4         (2 * `T_CONST_KP4)
`define WIDTH_4T_KP4        6
`define COUNT_PE_LIMIT_KP4  `R_CONST_KP4
`define N_CONST_KP4         544
`define R_WIDTH_KP4         4

`define N_SYMBOLS           32


///////////////////////////////////////////////////////////////////////////////
//  Timeout counter values
///////////////////////////////////////////////////////////////////////////////

`define  TIMEOUT_100MHz_500us 64'h80000000000000c3
`define  TIMEOUT_400MHz_8hr   64'h8000000582327a00


///////////////////////////////////////////////////////////////////////////////
//  tcd_rx_defs
///////////////////////////////////////////////////////////////////////////////

`ifdef DEBUG_HI_SER
`define HI_SER_COUNT_MAX   21'h00007f //128 FEC word pairs
`define K_COUNT                256
`define K_INDICATION           64
`endif

`ifndef DEBUG_HI_SER
`define HI_SER_COUNT_MAX 21'h09ffff //5*2^17 FEC word pairs == 67.5ms - equivalent to the ASIC.
`define K_COUNT                8192
`define K_INDICATION           417
`endif

`endif // _ieee802d3_rs_fec_v2_0_6_global_defs_vh_
