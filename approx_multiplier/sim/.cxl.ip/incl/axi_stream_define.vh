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
//  /   /         Filename           : axi_stream_define.vh
// /___/   /\     Date Last Modified : $Date: $
// \   \  /  \    Date Created       : 2018/12/20
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
`define BYTE_STRM_WRITE_WIDTH               8 
`define AXI_STREAM_DEST_WIDTH               12
`define AXI_STREAM_USER_WIDTH               16
`define TOTAL_COUNT_WIDTH                   16
`define BW_COUNT_WIDTH                      32
`define DTPT_WIDTH                          32
`define DATA_PATTERN_WIDTH                  3
`define PRBS_WIDTH                          32
`define INTER_TRANSFER_WIDTH                16
`define INTER_PACKET_WIDTH                  16
`define WAIT_WIDTH                          16
`define HAMMER_DATA_WIDTH                   8
`define SDEST_ID_WIDTH                      12
`define AXIS_BRAM_WIDTH                     192
`define AXIS_BRAM_DEPTH                     512
`define AXIS_BRAM_ADDR_WIDTH                9
`define BYTE_STRM_SIZE_WIDTH                32
`define MEM_STRB_STREAM_WIDTH               `AXIS_BRAM_WIDTH/`BYTE_STRM_SIZE_WIDTH 
`define INST_PHASE_DONE_POS                 191+:1 
`define INST_SDEST_ID_POS                   179+:12 
`define INST_LAST_AL1                       178+:1
`define INST_LAST_AL0                       177+:1
`define INST_LAST_INST                      176+:1
`define INST_WAIT_POS                       175+:1
`define INST_LOOP_COUNTS_POS                159+:16
`define INST_END_LOOP_POS                   158+:1
`define INST_START_LOOP_POS                 157+:1
`define INST_INFI_LOOP_TXN_POS              156+:1
`define INST_INFIN_TXN_POS                  155+:1
`define INST_INTER_TRANSFER_DELAY_POS       139+:16
`define INST_INTER_PACKET_DELAY_POS         123+:16
`define INST_DATA_PATTERN_VALUE_POS         91+:32
`define INST_DATA_PATTERN_POS               88+:3
`define INST_LOOP_EN_POS                    87+:1
`define INST_LOOPBACK_ADDR_POS              78+:9
`define INST_TOTAL_PACKET_COUNT_POS         62 +:16
`define INST_PACKET_LENGTH_POS              46 +:16
`define INST_AXIS_ID_TYPE_POS               44 +:2
`define INST_AXIS_ID_POS                    28 +:16
`define INST_AXIS_DEST_POS                  16 +:12
`define INST_AXIS_USER_POS                  0  +:16


