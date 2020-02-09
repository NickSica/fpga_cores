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
//  /   /         Filename           : register_define.vh
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


`define REG_ADDR_NBITS     9
`define REG_BRAM_SEL_NBITS 1
`define TGS_SEL_NBITS      5
`define DI_ERROR_CNT       8
`define BRAM_STRB_WIDTH    4
`define BROADCAST_WIDTH    1
`define DI_INFO_WIDTH      78

`define DEC_ADDR_WIDTH `REG_ADDR_NBITS+`REG_BRAM_SEL_NBITS +`TGS_SEL_NBITS + `BRAM_STRB_WIDTH + `BROADCAST_WIDTH 

`define BROADCAST                         19+:`BROADCAST_WIDTH
`define SEL_BIT_TGS                       14+:`TGS_SEL_NBITS
`define SEL_BIT_REG_SPACE_INST_BRAM       13+:`REG_BRAM_SEL_NBITS
`define ADDR_BITS_REG_SPACE_INST_BRAM     4+:`REG_ADDR_NBITS
`define BRAM_STRB                         0+:`BRAM_STRB_WIDTH


`define VIO_ADDR_WIDTH 30
`define VIO_DATA_WIDTH 32
`define REG_ADDR_WIDTH 32
`define REG_DATA_WIDTH 32
