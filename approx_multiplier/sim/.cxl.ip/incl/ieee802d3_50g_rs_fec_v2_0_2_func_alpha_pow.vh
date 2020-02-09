// (c) Copyright 2017-2019 Xilinx, Inc. All rights reserved.
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
////////////////////////////////////////////////////////////

//---------------------------------------------------------------------------
// Function: alpha_pow
//---------------------------------------------------------------------------

 function [9:0] alpha_pow(input integer power);
  begin : apwr_fn
  reg [9:0] idx;
  idx = power % 1023;
  case (idx)
      10'h000: alpha_pow = 10'h001;  10'h001: alpha_pow = 10'h002;  10'h002: alpha_pow = 10'h004;  10'h003: alpha_pow = 10'h008;
      10'h004: alpha_pow = 10'h010;  10'h005: alpha_pow = 10'h020;  10'h006: alpha_pow = 10'h040;  10'h007: alpha_pow = 10'h080;
      10'h008: alpha_pow = 10'h100;  10'h009: alpha_pow = 10'h200;  10'h00a: alpha_pow = 10'h009;  10'h00b: alpha_pow = 10'h012;
      10'h00c: alpha_pow = 10'h024;  10'h00d: alpha_pow = 10'h048;  10'h00e: alpha_pow = 10'h090;  10'h00f: alpha_pow = 10'h120;
      10'h010: alpha_pow = 10'h240;  10'h011: alpha_pow = 10'h089;  10'h012: alpha_pow = 10'h112;  10'h013: alpha_pow = 10'h224;
      10'h014: alpha_pow = 10'h041;  10'h015: alpha_pow = 10'h082;  10'h016: alpha_pow = 10'h104;  10'h017: alpha_pow = 10'h208;
      10'h018: alpha_pow = 10'h019;  10'h019: alpha_pow = 10'h032;  10'h01a: alpha_pow = 10'h064;  10'h01b: alpha_pow = 10'h0c8;
      10'h01c: alpha_pow = 10'h190;  10'h01d: alpha_pow = 10'h320;  10'h01e: alpha_pow = 10'h249;  10'h01f: alpha_pow = 10'h09b;
      10'h020: alpha_pow = 10'h136;  10'h021: alpha_pow = 10'h26c;  10'h022: alpha_pow = 10'h0d1;  10'h023: alpha_pow = 10'h1a2;
      10'h024: alpha_pow = 10'h344;  10'h025: alpha_pow = 10'h281;  10'h026: alpha_pow = 10'h10b;  10'h027: alpha_pow = 10'h216;
      10'h028: alpha_pow = 10'h025;  10'h029: alpha_pow = 10'h04a;  10'h02a: alpha_pow = 10'h094;  10'h02b: alpha_pow = 10'h128;
      10'h02c: alpha_pow = 10'h250;  10'h02d: alpha_pow = 10'h0a9;  10'h02e: alpha_pow = 10'h152;  10'h02f: alpha_pow = 10'h2a4;
      10'h030: alpha_pow = 10'h141;  10'h031: alpha_pow = 10'h282;  10'h032: alpha_pow = 10'h10d;  10'h033: alpha_pow = 10'h21a;
      10'h034: alpha_pow = 10'h03d;  10'h035: alpha_pow = 10'h07a;  10'h036: alpha_pow = 10'h0f4;  10'h037: alpha_pow = 10'h1e8;
      10'h038: alpha_pow = 10'h3d0;  10'h039: alpha_pow = 10'h3a9;  10'h03a: alpha_pow = 10'h35b;  10'h03b: alpha_pow = 10'h2bf;
      10'h03c: alpha_pow = 10'h177;  10'h03d: alpha_pow = 10'h2ee;  10'h03e: alpha_pow = 10'h1d5;  10'h03f: alpha_pow = 10'h3aa;
      10'h040: alpha_pow = 10'h35d;  10'h041: alpha_pow = 10'h2b3;  10'h042: alpha_pow = 10'h16f;  10'h043: alpha_pow = 10'h2de;
      10'h044: alpha_pow = 10'h1b5;  10'h045: alpha_pow = 10'h36a;  10'h046: alpha_pow = 10'h2dd;  10'h047: alpha_pow = 10'h1b3;
      10'h048: alpha_pow = 10'h366;  10'h049: alpha_pow = 10'h2c5;  10'h04a: alpha_pow = 10'h183;  10'h04b: alpha_pow = 10'h306;
      10'h04c: alpha_pow = 10'h205;  10'h04d: alpha_pow = 10'h003;  10'h04e: alpha_pow = 10'h006;  10'h04f: alpha_pow = 10'h00c;
      10'h050: alpha_pow = 10'h018;  10'h051: alpha_pow = 10'h030;  10'h052: alpha_pow = 10'h060;  10'h053: alpha_pow = 10'h0c0;
      10'h054: alpha_pow = 10'h180;  10'h055: alpha_pow = 10'h300;  10'h056: alpha_pow = 10'h209;  10'h057: alpha_pow = 10'h01b;
      10'h058: alpha_pow = 10'h036;  10'h059: alpha_pow = 10'h06c;  10'h05a: alpha_pow = 10'h0d8;  10'h05b: alpha_pow = 10'h1b0;
      10'h05c: alpha_pow = 10'h360;  10'h05d: alpha_pow = 10'h2c9;  10'h05e: alpha_pow = 10'h19b;  10'h05f: alpha_pow = 10'h336;
      10'h060: alpha_pow = 10'h265;  10'h061: alpha_pow = 10'h0c3;  10'h062: alpha_pow = 10'h186;  10'h063: alpha_pow = 10'h30c;
      10'h064: alpha_pow = 10'h211;  10'h065: alpha_pow = 10'h02b;  10'h066: alpha_pow = 10'h056;  10'h067: alpha_pow = 10'h0ac;
      10'h068: alpha_pow = 10'h158;  10'h069: alpha_pow = 10'h2b0;  10'h06a: alpha_pow = 10'h169;  10'h06b: alpha_pow = 10'h2d2;
      10'h06c: alpha_pow = 10'h1ad;  10'h06d: alpha_pow = 10'h35a;  10'h06e: alpha_pow = 10'h2bd;  10'h06f: alpha_pow = 10'h173;
      10'h070: alpha_pow = 10'h2e6;  10'h071: alpha_pow = 10'h1c5;  10'h072: alpha_pow = 10'h38a;  10'h073: alpha_pow = 10'h31d;
      10'h074: alpha_pow = 10'h233;  10'h075: alpha_pow = 10'h06f;  10'h076: alpha_pow = 10'h0de;  10'h077: alpha_pow = 10'h1bc;
      10'h078: alpha_pow = 10'h378;  10'h079: alpha_pow = 10'h2f9;  10'h07a: alpha_pow = 10'h1fb;  10'h07b: alpha_pow = 10'h3f6;
      10'h07c: alpha_pow = 10'h3e5;  10'h07d: alpha_pow = 10'h3c3;  10'h07e: alpha_pow = 10'h38f;  10'h07f: alpha_pow = 10'h317;
      10'h080: alpha_pow = 10'h227;  10'h081: alpha_pow = 10'h047;  10'h082: alpha_pow = 10'h08e;  10'h083: alpha_pow = 10'h11c;
      10'h084: alpha_pow = 10'h238;  10'h085: alpha_pow = 10'h079;  10'h086: alpha_pow = 10'h0f2;  10'h087: alpha_pow = 10'h1e4;
      10'h088: alpha_pow = 10'h3c8;  10'h089: alpha_pow = 10'h399;  10'h08a: alpha_pow = 10'h33b;  10'h08b: alpha_pow = 10'h27f;
      10'h08c: alpha_pow = 10'h0f7;  10'h08d: alpha_pow = 10'h1ee;  10'h08e: alpha_pow = 10'h3dc;  10'h08f: alpha_pow = 10'h3b1;
      10'h090: alpha_pow = 10'h36b;  10'h091: alpha_pow = 10'h2df;  10'h092: alpha_pow = 10'h1b7;  10'h093: alpha_pow = 10'h36e;
      10'h094: alpha_pow = 10'h2d5;  10'h095: alpha_pow = 10'h1a3;  10'h096: alpha_pow = 10'h346;  10'h097: alpha_pow = 10'h285;
      10'h098: alpha_pow = 10'h103;  10'h099: alpha_pow = 10'h206;  10'h09a: alpha_pow = 10'h005;  10'h09b: alpha_pow = 10'h00a;
      10'h09c: alpha_pow = 10'h014;  10'h09d: alpha_pow = 10'h028;  10'h09e: alpha_pow = 10'h050;  10'h09f: alpha_pow = 10'h0a0;
      10'h0a0: alpha_pow = 10'h140;  10'h0a1: alpha_pow = 10'h280;  10'h0a2: alpha_pow = 10'h109;  10'h0a3: alpha_pow = 10'h212;
      10'h0a4: alpha_pow = 10'h02d;  10'h0a5: alpha_pow = 10'h05a;  10'h0a6: alpha_pow = 10'h0b4;  10'h0a7: alpha_pow = 10'h168;
      10'h0a8: alpha_pow = 10'h2d0;  10'h0a9: alpha_pow = 10'h1a9;  10'h0aa: alpha_pow = 10'h352;  10'h0ab: alpha_pow = 10'h2ad;
      10'h0ac: alpha_pow = 10'h153;  10'h0ad: alpha_pow = 10'h2a6;  10'h0ae: alpha_pow = 10'h145;  10'h0af: alpha_pow = 10'h28a;
      10'h0b0: alpha_pow = 10'h11d;  10'h0b1: alpha_pow = 10'h23a;  10'h0b2: alpha_pow = 10'h07d;  10'h0b3: alpha_pow = 10'h0fa;
      10'h0b4: alpha_pow = 10'h1f4;  10'h0b5: alpha_pow = 10'h3e8;  10'h0b6: alpha_pow = 10'h3d9;  10'h0b7: alpha_pow = 10'h3bb;
      10'h0b8: alpha_pow = 10'h37f;  10'h0b9: alpha_pow = 10'h2f7;  10'h0ba: alpha_pow = 10'h1e7;  10'h0bb: alpha_pow = 10'h3ce;
      10'h0bc: alpha_pow = 10'h395;  10'h0bd: alpha_pow = 10'h323;  10'h0be: alpha_pow = 10'h24f;  10'h0bf: alpha_pow = 10'h097;
      10'h0c0: alpha_pow = 10'h12e;  10'h0c1: alpha_pow = 10'h25c;  10'h0c2: alpha_pow = 10'h0b1;  10'h0c3: alpha_pow = 10'h162;
      10'h0c4: alpha_pow = 10'h2c4;  10'h0c5: alpha_pow = 10'h181;  10'h0c6: alpha_pow = 10'h302;  10'h0c7: alpha_pow = 10'h20d;
      10'h0c8: alpha_pow = 10'h013;  10'h0c9: alpha_pow = 10'h026;  10'h0ca: alpha_pow = 10'h04c;  10'h0cb: alpha_pow = 10'h098;
      10'h0cc: alpha_pow = 10'h130;  10'h0cd: alpha_pow = 10'h260;  10'h0ce: alpha_pow = 10'h0c9;  10'h0cf: alpha_pow = 10'h192;
      10'h0d0: alpha_pow = 10'h324;  10'h0d1: alpha_pow = 10'h241;  10'h0d2: alpha_pow = 10'h08b;  10'h0d3: alpha_pow = 10'h116;
      10'h0d4: alpha_pow = 10'h22c;  10'h0d5: alpha_pow = 10'h051;  10'h0d6: alpha_pow = 10'h0a2;  10'h0d7: alpha_pow = 10'h144;
      10'h0d8: alpha_pow = 10'h288;  10'h0d9: alpha_pow = 10'h119;  10'h0da: alpha_pow = 10'h232;  10'h0db: alpha_pow = 10'h06d;
      10'h0dc: alpha_pow = 10'h0da;  10'h0dd: alpha_pow = 10'h1b4;  10'h0de: alpha_pow = 10'h368;  10'h0df: alpha_pow = 10'h2d9;
      10'h0e0: alpha_pow = 10'h1bb;  10'h0e1: alpha_pow = 10'h376;  10'h0e2: alpha_pow = 10'h2e5;  10'h0e3: alpha_pow = 10'h1c3;
      10'h0e4: alpha_pow = 10'h386;  10'h0e5: alpha_pow = 10'h305;  10'h0e6: alpha_pow = 10'h203;  10'h0e7: alpha_pow = 10'h00f;
      10'h0e8: alpha_pow = 10'h01e;  10'h0e9: alpha_pow = 10'h03c;  10'h0ea: alpha_pow = 10'h078;  10'h0eb: alpha_pow = 10'h0f0;
      10'h0ec: alpha_pow = 10'h1e0;  10'h0ed: alpha_pow = 10'h3c0;  10'h0ee: alpha_pow = 10'h389;  10'h0ef: alpha_pow = 10'h31b;
      10'h0f0: alpha_pow = 10'h23f;  10'h0f1: alpha_pow = 10'h077;  10'h0f2: alpha_pow = 10'h0ee;  10'h0f3: alpha_pow = 10'h1dc;
      10'h0f4: alpha_pow = 10'h3b8;  10'h0f5: alpha_pow = 10'h379;  10'h0f6: alpha_pow = 10'h2fb;  10'h0f7: alpha_pow = 10'h1ff;
      10'h0f8: alpha_pow = 10'h3fe;  10'h0f9: alpha_pow = 10'h3f5;  10'h0fa: alpha_pow = 10'h3e3;  10'h0fb: alpha_pow = 10'h3cf;
      10'h0fc: alpha_pow = 10'h397;  10'h0fd: alpha_pow = 10'h327;  10'h0fe: alpha_pow = 10'h247;  10'h0ff: alpha_pow = 10'h087;
      10'h100: alpha_pow = 10'h10e;  10'h101: alpha_pow = 10'h21c;  10'h102: alpha_pow = 10'h031;  10'h103: alpha_pow = 10'h062;
      10'h104: alpha_pow = 10'h0c4;  10'h105: alpha_pow = 10'h188;  10'h106: alpha_pow = 10'h310;  10'h107: alpha_pow = 10'h229;
      10'h108: alpha_pow = 10'h05b;  10'h109: alpha_pow = 10'h0b6;  10'h10a: alpha_pow = 10'h16c;  10'h10b: alpha_pow = 10'h2d8;
      10'h10c: alpha_pow = 10'h1b9;  10'h10d: alpha_pow = 10'h372;  10'h10e: alpha_pow = 10'h2ed;  10'h10f: alpha_pow = 10'h1d3;
      10'h110: alpha_pow = 10'h3a6;  10'h111: alpha_pow = 10'h345;  10'h112: alpha_pow = 10'h283;  10'h113: alpha_pow = 10'h10f;
      10'h114: alpha_pow = 10'h21e;  10'h115: alpha_pow = 10'h035;  10'h116: alpha_pow = 10'h06a;  10'h117: alpha_pow = 10'h0d4;
      10'h118: alpha_pow = 10'h1a8;  10'h119: alpha_pow = 10'h350;  10'h11a: alpha_pow = 10'h2a9;  10'h11b: alpha_pow = 10'h15b;
      10'h11c: alpha_pow = 10'h2b6;  10'h11d: alpha_pow = 10'h165;  10'h11e: alpha_pow = 10'h2ca;  10'h11f: alpha_pow = 10'h19d;
      10'h120: alpha_pow = 10'h33a;  10'h121: alpha_pow = 10'h27d;  10'h122: alpha_pow = 10'h0f3;  10'h123: alpha_pow = 10'h1e6;
      10'h124: alpha_pow = 10'h3cc;  10'h125: alpha_pow = 10'h391;  10'h126: alpha_pow = 10'h32b;  10'h127: alpha_pow = 10'h25f;
      10'h128: alpha_pow = 10'h0b7;  10'h129: alpha_pow = 10'h16e;  10'h12a: alpha_pow = 10'h2dc;  10'h12b: alpha_pow = 10'h1b1;
      10'h12c: alpha_pow = 10'h362;  10'h12d: alpha_pow = 10'h2cd;  10'h12e: alpha_pow = 10'h193;  10'h12f: alpha_pow = 10'h326;
      10'h130: alpha_pow = 10'h245;  10'h131: alpha_pow = 10'h083;  10'h132: alpha_pow = 10'h106;  10'h133: alpha_pow = 10'h20c;
      10'h134: alpha_pow = 10'h011;  10'h135: alpha_pow = 10'h022;  10'h136: alpha_pow = 10'h044;  10'h137: alpha_pow = 10'h088;
      10'h138: alpha_pow = 10'h110;  10'h139: alpha_pow = 10'h220;  10'h13a: alpha_pow = 10'h049;  10'h13b: alpha_pow = 10'h092;
      10'h13c: alpha_pow = 10'h124;  10'h13d: alpha_pow = 10'h248;  10'h13e: alpha_pow = 10'h099;  10'h13f: alpha_pow = 10'h132;
      10'h140: alpha_pow = 10'h264;  10'h141: alpha_pow = 10'h0c1;  10'h142: alpha_pow = 10'h182;  10'h143: alpha_pow = 10'h304;
      10'h144: alpha_pow = 10'h201;  10'h145: alpha_pow = 10'h00b;  10'h146: alpha_pow = 10'h016;  10'h147: alpha_pow = 10'h02c;
      10'h148: alpha_pow = 10'h058;  10'h149: alpha_pow = 10'h0b0;  10'h14a: alpha_pow = 10'h160;  10'h14b: alpha_pow = 10'h2c0;
      10'h14c: alpha_pow = 10'h189;  10'h14d: alpha_pow = 10'h312;  10'h14e: alpha_pow = 10'h22d;  10'h14f: alpha_pow = 10'h053;
      10'h150: alpha_pow = 10'h0a6;  10'h151: alpha_pow = 10'h14c;  10'h152: alpha_pow = 10'h298;  10'h153: alpha_pow = 10'h139;
      10'h154: alpha_pow = 10'h272;  10'h155: alpha_pow = 10'h0ed;  10'h156: alpha_pow = 10'h1da;  10'h157: alpha_pow = 10'h3b4;
      10'h158: alpha_pow = 10'h361;  10'h159: alpha_pow = 10'h2cb;  10'h15a: alpha_pow = 10'h19f;  10'h15b: alpha_pow = 10'h33e;
      10'h15c: alpha_pow = 10'h275;  10'h15d: alpha_pow = 10'h0e3;  10'h15e: alpha_pow = 10'h1c6;  10'h15f: alpha_pow = 10'h38c;
      10'h160: alpha_pow = 10'h311;  10'h161: alpha_pow = 10'h22b;  10'h162: alpha_pow = 10'h05f;  10'h163: alpha_pow = 10'h0be;
      10'h164: alpha_pow = 10'h17c;  10'h165: alpha_pow = 10'h2f8;  10'h166: alpha_pow = 10'h1f9;  10'h167: alpha_pow = 10'h3f2;
      10'h168: alpha_pow = 10'h3ed;  10'h169: alpha_pow = 10'h3d3;  10'h16a: alpha_pow = 10'h3af;  10'h16b: alpha_pow = 10'h357;
      10'h16c: alpha_pow = 10'h2a7;  10'h16d: alpha_pow = 10'h147;  10'h16e: alpha_pow = 10'h28e;  10'h16f: alpha_pow = 10'h115;
      10'h170: alpha_pow = 10'h22a;  10'h171: alpha_pow = 10'h05d;  10'h172: alpha_pow = 10'h0ba;  10'h173: alpha_pow = 10'h174;
      10'h174: alpha_pow = 10'h2e8;  10'h175: alpha_pow = 10'h1d9;  10'h176: alpha_pow = 10'h3b2;  10'h177: alpha_pow = 10'h36d;
      10'h178: alpha_pow = 10'h2d3;  10'h179: alpha_pow = 10'h1af;  10'h17a: alpha_pow = 10'h35e;  10'h17b: alpha_pow = 10'h2b5;
      10'h17c: alpha_pow = 10'h163;  10'h17d: alpha_pow = 10'h2c6;  10'h17e: alpha_pow = 10'h185;  10'h17f: alpha_pow = 10'h30a;
      10'h180: alpha_pow = 10'h21d;  10'h181: alpha_pow = 10'h033;  10'h182: alpha_pow = 10'h066;  10'h183: alpha_pow = 10'h0cc;
      10'h184: alpha_pow = 10'h198;  10'h185: alpha_pow = 10'h330;  10'h186: alpha_pow = 10'h269;  10'h187: alpha_pow = 10'h0db;
      10'h188: alpha_pow = 10'h1b6;  10'h189: alpha_pow = 10'h36c;  10'h18a: alpha_pow = 10'h2d1;  10'h18b: alpha_pow = 10'h1ab;
      10'h18c: alpha_pow = 10'h356;  10'h18d: alpha_pow = 10'h2a5;  10'h18e: alpha_pow = 10'h143;  10'h18f: alpha_pow = 10'h286;
      10'h190: alpha_pow = 10'h105;  10'h191: alpha_pow = 10'h20a;  10'h192: alpha_pow = 10'h01d;  10'h193: alpha_pow = 10'h03a;
      10'h194: alpha_pow = 10'h074;  10'h195: alpha_pow = 10'h0e8;  10'h196: alpha_pow = 10'h1d0;  10'h197: alpha_pow = 10'h3a0;
      10'h198: alpha_pow = 10'h349;  10'h199: alpha_pow = 10'h29b;  10'h19a: alpha_pow = 10'h13f;  10'h19b: alpha_pow = 10'h27e;
      10'h19c: alpha_pow = 10'h0f5;  10'h19d: alpha_pow = 10'h1ea;  10'h19e: alpha_pow = 10'h3d4;  10'h19f: alpha_pow = 10'h3a1;
      10'h1a0: alpha_pow = 10'h34b;  10'h1a1: alpha_pow = 10'h29f;  10'h1a2: alpha_pow = 10'h137;  10'h1a3: alpha_pow = 10'h26e;
      10'h1a4: alpha_pow = 10'h0d5;  10'h1a5: alpha_pow = 10'h1aa;  10'h1a6: alpha_pow = 10'h354;  10'h1a7: alpha_pow = 10'h2a1;
      10'h1a8: alpha_pow = 10'h14b;  10'h1a9: alpha_pow = 10'h296;  10'h1aa: alpha_pow = 10'h125;  10'h1ab: alpha_pow = 10'h24a;
      10'h1ac: alpha_pow = 10'h09d;  10'h1ad: alpha_pow = 10'h13a;  10'h1ae: alpha_pow = 10'h274;  10'h1af: alpha_pow = 10'h0e1;
      10'h1b0: alpha_pow = 10'h1c2;  10'h1b1: alpha_pow = 10'h384;  10'h1b2: alpha_pow = 10'h301;  10'h1b3: alpha_pow = 10'h20b;
      10'h1b4: alpha_pow = 10'h01f;  10'h1b5: alpha_pow = 10'h03e;  10'h1b6: alpha_pow = 10'h07c;  10'h1b7: alpha_pow = 10'h0f8;
      10'h1b8: alpha_pow = 10'h1f0;  10'h1b9: alpha_pow = 10'h3e0;  10'h1ba: alpha_pow = 10'h3c9;  10'h1bb: alpha_pow = 10'h39b;
      10'h1bc: alpha_pow = 10'h33f;  10'h1bd: alpha_pow = 10'h277;  10'h1be: alpha_pow = 10'h0e7;  10'h1bf: alpha_pow = 10'h1ce;
      10'h1c0: alpha_pow = 10'h39c;  10'h1c1: alpha_pow = 10'h331;  10'h1c2: alpha_pow = 10'h26b;  10'h1c3: alpha_pow = 10'h0df;
      10'h1c4: alpha_pow = 10'h1be;  10'h1c5: alpha_pow = 10'h37c;  10'h1c6: alpha_pow = 10'h2f1;  10'h1c7: alpha_pow = 10'h1eb;
      10'h1c8: alpha_pow = 10'h3d6;  10'h1c9: alpha_pow = 10'h3a5;  10'h1ca: alpha_pow = 10'h343;  10'h1cb: alpha_pow = 10'h28f;
      10'h1cc: alpha_pow = 10'h117;  10'h1cd: alpha_pow = 10'h22e;  10'h1ce: alpha_pow = 10'h055;  10'h1cf: alpha_pow = 10'h0aa;
      10'h1d0: alpha_pow = 10'h154;  10'h1d1: alpha_pow = 10'h2a8;  10'h1d2: alpha_pow = 10'h159;  10'h1d3: alpha_pow = 10'h2b2;
      10'h1d4: alpha_pow = 10'h16d;  10'h1d5: alpha_pow = 10'h2da;  10'h1d6: alpha_pow = 10'h1bd;  10'h1d7: alpha_pow = 10'h37a;
      10'h1d8: alpha_pow = 10'h2fd;  10'h1d9: alpha_pow = 10'h1f3;  10'h1da: alpha_pow = 10'h3e6;  10'h1db: alpha_pow = 10'h3c5;
      10'h1dc: alpha_pow = 10'h383;  10'h1dd: alpha_pow = 10'h30f;  10'h1de: alpha_pow = 10'h217;  10'h1df: alpha_pow = 10'h027;
      10'h1e0: alpha_pow = 10'h04e;  10'h1e1: alpha_pow = 10'h09c;  10'h1e2: alpha_pow = 10'h138;  10'h1e3: alpha_pow = 10'h270;
      10'h1e4: alpha_pow = 10'h0e9;  10'h1e5: alpha_pow = 10'h1d2;  10'h1e6: alpha_pow = 10'h3a4;  10'h1e7: alpha_pow = 10'h341;
      10'h1e8: alpha_pow = 10'h28b;  10'h1e9: alpha_pow = 10'h11f;  10'h1ea: alpha_pow = 10'h23e;  10'h1eb: alpha_pow = 10'h075;
      10'h1ec: alpha_pow = 10'h0ea;  10'h1ed: alpha_pow = 10'h1d4;  10'h1ee: alpha_pow = 10'h3a8;  10'h1ef: alpha_pow = 10'h359;
      10'h1f0: alpha_pow = 10'h2bb;  10'h1f1: alpha_pow = 10'h17f;  10'h1f2: alpha_pow = 10'h2fe;  10'h1f3: alpha_pow = 10'h1f5;
      10'h1f4: alpha_pow = 10'h3ea;  10'h1f5: alpha_pow = 10'h3dd;  10'h1f6: alpha_pow = 10'h3b3;  10'h1f7: alpha_pow = 10'h36f;
      10'h1f8: alpha_pow = 10'h2d7;  10'h1f9: alpha_pow = 10'h1a7;  10'h1fa: alpha_pow = 10'h34e;  10'h1fb: alpha_pow = 10'h295;
      10'h1fc: alpha_pow = 10'h123;  10'h1fd: alpha_pow = 10'h246;  10'h1fe: alpha_pow = 10'h085;  10'h1ff: alpha_pow = 10'h10a;
      10'h200: alpha_pow = 10'h214;  10'h201: alpha_pow = 10'h021;  10'h202: alpha_pow = 10'h042;  10'h203: alpha_pow = 10'h084;
      10'h204: alpha_pow = 10'h108;  10'h205: alpha_pow = 10'h210;  10'h206: alpha_pow = 10'h029;  10'h207: alpha_pow = 10'h052;
      10'h208: alpha_pow = 10'h0a4;  10'h209: alpha_pow = 10'h148;  10'h20a: alpha_pow = 10'h290;  10'h20b: alpha_pow = 10'h129;
      10'h20c: alpha_pow = 10'h252;  10'h20d: alpha_pow = 10'h0ad;  10'h20e: alpha_pow = 10'h15a;  10'h20f: alpha_pow = 10'h2b4;
      10'h210: alpha_pow = 10'h161;  10'h211: alpha_pow = 10'h2c2;  10'h212: alpha_pow = 10'h18d;  10'h213: alpha_pow = 10'h31a;
      10'h214: alpha_pow = 10'h23d;  10'h215: alpha_pow = 10'h073;  10'h216: alpha_pow = 10'h0e6;  10'h217: alpha_pow = 10'h1cc;
      10'h218: alpha_pow = 10'h398;  10'h219: alpha_pow = 10'h339;  10'h21a: alpha_pow = 10'h27b;  10'h21b: alpha_pow = 10'h0ff;
      10'h21c: alpha_pow = 10'h1fe;  10'h21d: alpha_pow = 10'h3fc;  10'h21e: alpha_pow = 10'h3f1;  10'h21f: alpha_pow = 10'h3eb;
      10'h220: alpha_pow = 10'h3df;  10'h221: alpha_pow = 10'h3b7;  10'h222: alpha_pow = 10'h367;  10'h223: alpha_pow = 10'h2c7;
      10'h224: alpha_pow = 10'h187;  10'h225: alpha_pow = 10'h30e;  10'h226: alpha_pow = 10'h215;  10'h227: alpha_pow = 10'h023;
      10'h228: alpha_pow = 10'h046;  10'h229: alpha_pow = 10'h08c;  10'h22a: alpha_pow = 10'h118;  10'h22b: alpha_pow = 10'h230;
      10'h22c: alpha_pow = 10'h069;  10'h22d: alpha_pow = 10'h0d2;  10'h22e: alpha_pow = 10'h1a4;  10'h22f: alpha_pow = 10'h348;
      10'h230: alpha_pow = 10'h299;  10'h231: alpha_pow = 10'h13b;  10'h232: alpha_pow = 10'h276;  10'h233: alpha_pow = 10'h0e5;
      10'h234: alpha_pow = 10'h1ca;  10'h235: alpha_pow = 10'h394;  10'h236: alpha_pow = 10'h321;  10'h237: alpha_pow = 10'h24b;
      10'h238: alpha_pow = 10'h09f;  10'h239: alpha_pow = 10'h13e;  10'h23a: alpha_pow = 10'h27c;  10'h23b: alpha_pow = 10'h0f1;
      10'h23c: alpha_pow = 10'h1e2;  10'h23d: alpha_pow = 10'h3c4;  10'h23e: alpha_pow = 10'h381;  10'h23f: alpha_pow = 10'h30b;
      10'h240: alpha_pow = 10'h21f;  10'h241: alpha_pow = 10'h037;  10'h242: alpha_pow = 10'h06e;  10'h243: alpha_pow = 10'h0dc;
      10'h244: alpha_pow = 10'h1b8;  10'h245: alpha_pow = 10'h370;  10'h246: alpha_pow = 10'h2e9;  10'h247: alpha_pow = 10'h1db;
      10'h248: alpha_pow = 10'h3b6;  10'h249: alpha_pow = 10'h365;  10'h24a: alpha_pow = 10'h2c3;  10'h24b: alpha_pow = 10'h18f;
      10'h24c: alpha_pow = 10'h31e;  10'h24d: alpha_pow = 10'h235;  10'h24e: alpha_pow = 10'h063;  10'h24f: alpha_pow = 10'h0c6;
      10'h250: alpha_pow = 10'h18c;  10'h251: alpha_pow = 10'h318;  10'h252: alpha_pow = 10'h239;  10'h253: alpha_pow = 10'h07b;
      10'h254: alpha_pow = 10'h0f6;  10'h255: alpha_pow = 10'h1ec;  10'h256: alpha_pow = 10'h3d8;  10'h257: alpha_pow = 10'h3b9;
      10'h258: alpha_pow = 10'h37b;  10'h259: alpha_pow = 10'h2ff;  10'h25a: alpha_pow = 10'h1f7;  10'h25b: alpha_pow = 10'h3ee;
      10'h25c: alpha_pow = 10'h3d5;  10'h25d: alpha_pow = 10'h3a3;  10'h25e: alpha_pow = 10'h34f;  10'h25f: alpha_pow = 10'h297;
      10'h260: alpha_pow = 10'h127;  10'h261: alpha_pow = 10'h24e;  10'h262: alpha_pow = 10'h095;  10'h263: alpha_pow = 10'h12a;
      10'h264: alpha_pow = 10'h254;  10'h265: alpha_pow = 10'h0a1;  10'h266: alpha_pow = 10'h142;  10'h267: alpha_pow = 10'h284;
      10'h268: alpha_pow = 10'h101;  10'h269: alpha_pow = 10'h202;  10'h26a: alpha_pow = 10'h00d;  10'h26b: alpha_pow = 10'h01a;
      10'h26c: alpha_pow = 10'h034;  10'h26d: alpha_pow = 10'h068;  10'h26e: alpha_pow = 10'h0d0;  10'h26f: alpha_pow = 10'h1a0;
      10'h270: alpha_pow = 10'h340;  10'h271: alpha_pow = 10'h289;  10'h272: alpha_pow = 10'h11b;  10'h273: alpha_pow = 10'h236;
      10'h274: alpha_pow = 10'h065;  10'h275: alpha_pow = 10'h0ca;  10'h276: alpha_pow = 10'h194;  10'h277: alpha_pow = 10'h328;
      10'h278: alpha_pow = 10'h259;  10'h279: alpha_pow = 10'h0bb;  10'h27a: alpha_pow = 10'h176;  10'h27b: alpha_pow = 10'h2ec;
      10'h27c: alpha_pow = 10'h1d1;  10'h27d: alpha_pow = 10'h3a2;  10'h27e: alpha_pow = 10'h34d;  10'h27f: alpha_pow = 10'h293;
      10'h280: alpha_pow = 10'h12f;  10'h281: alpha_pow = 10'h25e;  10'h282: alpha_pow = 10'h0b5;  10'h283: alpha_pow = 10'h16a;
      10'h284: alpha_pow = 10'h2d4;  10'h285: alpha_pow = 10'h1a1;  10'h286: alpha_pow = 10'h342;  10'h287: alpha_pow = 10'h28d;
      10'h288: alpha_pow = 10'h113;  10'h289: alpha_pow = 10'h226;  10'h28a: alpha_pow = 10'h045;  10'h28b: alpha_pow = 10'h08a;
      10'h28c: alpha_pow = 10'h114;  10'h28d: alpha_pow = 10'h228;  10'h28e: alpha_pow = 10'h059;  10'h28f: alpha_pow = 10'h0b2;
      10'h290: alpha_pow = 10'h164;  10'h291: alpha_pow = 10'h2c8;  10'h292: alpha_pow = 10'h199;  10'h293: alpha_pow = 10'h332;
      10'h294: alpha_pow = 10'h26d;  10'h295: alpha_pow = 10'h0d3;  10'h296: alpha_pow = 10'h1a6;  10'h297: alpha_pow = 10'h34c;
      10'h298: alpha_pow = 10'h291;  10'h299: alpha_pow = 10'h12b;  10'h29a: alpha_pow = 10'h256;  10'h29b: alpha_pow = 10'h0a5;
      10'h29c: alpha_pow = 10'h14a;  10'h29d: alpha_pow = 10'h294;  10'h29e: alpha_pow = 10'h121;  10'h29f: alpha_pow = 10'h242;
      10'h2a0: alpha_pow = 10'h08d;  10'h2a1: alpha_pow = 10'h11a;  10'h2a2: alpha_pow = 10'h234;  10'h2a3: alpha_pow = 10'h061;
      10'h2a4: alpha_pow = 10'h0c2;  10'h2a5: alpha_pow = 10'h184;  10'h2a6: alpha_pow = 10'h308;  10'h2a7: alpha_pow = 10'h219;
      10'h2a8: alpha_pow = 10'h03b;  10'h2a9: alpha_pow = 10'h076;  10'h2aa: alpha_pow = 10'h0ec;  10'h2ab: alpha_pow = 10'h1d8;
      10'h2ac: alpha_pow = 10'h3b0;  10'h2ad: alpha_pow = 10'h369;  10'h2ae: alpha_pow = 10'h2db;  10'h2af: alpha_pow = 10'h1bf;
      10'h2b0: alpha_pow = 10'h37e;  10'h2b1: alpha_pow = 10'h2f5;  10'h2b2: alpha_pow = 10'h1e3;  10'h2b3: alpha_pow = 10'h3c6;
      10'h2b4: alpha_pow = 10'h385;  10'h2b5: alpha_pow = 10'h303;  10'h2b6: alpha_pow = 10'h20f;  10'h2b7: alpha_pow = 10'h017;
      10'h2b8: alpha_pow = 10'h02e;  10'h2b9: alpha_pow = 10'h05c;  10'h2ba: alpha_pow = 10'h0b8;  10'h2bb: alpha_pow = 10'h170;
      10'h2bc: alpha_pow = 10'h2e0;  10'h2bd: alpha_pow = 10'h1c9;  10'h2be: alpha_pow = 10'h392;  10'h2bf: alpha_pow = 10'h32d;
      10'h2c0: alpha_pow = 10'h253;  10'h2c1: alpha_pow = 10'h0af;  10'h2c2: alpha_pow = 10'h15e;  10'h2c3: alpha_pow = 10'h2bc;
      10'h2c4: alpha_pow = 10'h171;  10'h2c5: alpha_pow = 10'h2e2;  10'h2c6: alpha_pow = 10'h1cd;  10'h2c7: alpha_pow = 10'h39a;
      10'h2c8: alpha_pow = 10'h33d;  10'h2c9: alpha_pow = 10'h273;  10'h2ca: alpha_pow = 10'h0ef;  10'h2cb: alpha_pow = 10'h1de;
      10'h2cc: alpha_pow = 10'h3bc;  10'h2cd: alpha_pow = 10'h371;  10'h2ce: alpha_pow = 10'h2eb;  10'h2cf: alpha_pow = 10'h1df;
      10'h2d0: alpha_pow = 10'h3be;  10'h2d1: alpha_pow = 10'h375;  10'h2d2: alpha_pow = 10'h2e3;  10'h2d3: alpha_pow = 10'h1cf;
      10'h2d4: alpha_pow = 10'h39e;  10'h2d5: alpha_pow = 10'h335;  10'h2d6: alpha_pow = 10'h263;  10'h2d7: alpha_pow = 10'h0cf;
      10'h2d8: alpha_pow = 10'h19e;  10'h2d9: alpha_pow = 10'h33c;  10'h2da: alpha_pow = 10'h271;  10'h2db: alpha_pow = 10'h0eb;
      10'h2dc: alpha_pow = 10'h1d6;  10'h2dd: alpha_pow = 10'h3ac;  10'h2de: alpha_pow = 10'h351;  10'h2df: alpha_pow = 10'h2ab;
      10'h2e0: alpha_pow = 10'h15f;  10'h2e1: alpha_pow = 10'h2be;  10'h2e2: alpha_pow = 10'h175;  10'h2e3: alpha_pow = 10'h2ea;
      10'h2e4: alpha_pow = 10'h1dd;  10'h2e5: alpha_pow = 10'h3ba;  10'h2e6: alpha_pow = 10'h37d;  10'h2e7: alpha_pow = 10'h2f3;
      10'h2e8: alpha_pow = 10'h1ef;  10'h2e9: alpha_pow = 10'h3de;  10'h2ea: alpha_pow = 10'h3b5;  10'h2eb: alpha_pow = 10'h363;
      10'h2ec: alpha_pow = 10'h2cf;  10'h2ed: alpha_pow = 10'h197;  10'h2ee: alpha_pow = 10'h32e;  10'h2ef: alpha_pow = 10'h255;
      10'h2f0: alpha_pow = 10'h0a3;  10'h2f1: alpha_pow = 10'h146;  10'h2f2: alpha_pow = 10'h28c;  10'h2f3: alpha_pow = 10'h111;
      10'h2f4: alpha_pow = 10'h222;  10'h2f5: alpha_pow = 10'h04d;  10'h2f6: alpha_pow = 10'h09a;  10'h2f7: alpha_pow = 10'h134;
      10'h2f8: alpha_pow = 10'h268;  10'h2f9: alpha_pow = 10'h0d9;  10'h2fa: alpha_pow = 10'h1b2;  10'h2fb: alpha_pow = 10'h364;
      10'h2fc: alpha_pow = 10'h2c1;  10'h2fd: alpha_pow = 10'h18b;  10'h2fe: alpha_pow = 10'h316;  10'h2ff: alpha_pow = 10'h225;
      10'h300: alpha_pow = 10'h043;  10'h301: alpha_pow = 10'h086;  10'h302: alpha_pow = 10'h10c;  10'h303: alpha_pow = 10'h218;
      10'h304: alpha_pow = 10'h039;  10'h305: alpha_pow = 10'h072;  10'h306: alpha_pow = 10'h0e4;  10'h307: alpha_pow = 10'h1c8;
      10'h308: alpha_pow = 10'h390;  10'h309: alpha_pow = 10'h329;  10'h30a: alpha_pow = 10'h25b;  10'h30b: alpha_pow = 10'h0bf;
      10'h30c: alpha_pow = 10'h17e;  10'h30d: alpha_pow = 10'h2fc;  10'h30e: alpha_pow = 10'h1f1;  10'h30f: alpha_pow = 10'h3e2;
      10'h310: alpha_pow = 10'h3cd;  10'h311: alpha_pow = 10'h393;  10'h312: alpha_pow = 10'h32f;  10'h313: alpha_pow = 10'h257;
      10'h314: alpha_pow = 10'h0a7;  10'h315: alpha_pow = 10'h14e;  10'h316: alpha_pow = 10'h29c;  10'h317: alpha_pow = 10'h131;
      10'h318: alpha_pow = 10'h262;  10'h319: alpha_pow = 10'h0cd;  10'h31a: alpha_pow = 10'h19a;  10'h31b: alpha_pow = 10'h334;
      10'h31c: alpha_pow = 10'h261;  10'h31d: alpha_pow = 10'h0cb;  10'h31e: alpha_pow = 10'h196;  10'h31f: alpha_pow = 10'h32c;
      10'h320: alpha_pow = 10'h251;  10'h321: alpha_pow = 10'h0ab;  10'h322: alpha_pow = 10'h156;  10'h323: alpha_pow = 10'h2ac;
      10'h324: alpha_pow = 10'h151;  10'h325: alpha_pow = 10'h2a2;  10'h326: alpha_pow = 10'h14d;  10'h327: alpha_pow = 10'h29a;
      10'h328: alpha_pow = 10'h13d;  10'h329: alpha_pow = 10'h27a;  10'h32a: alpha_pow = 10'h0fd;  10'h32b: alpha_pow = 10'h1fa;
      10'h32c: alpha_pow = 10'h3f4;  10'h32d: alpha_pow = 10'h3e1;  10'h32e: alpha_pow = 10'h3cb;  10'h32f: alpha_pow = 10'h39f;
      10'h330: alpha_pow = 10'h337;  10'h331: alpha_pow = 10'h267;  10'h332: alpha_pow = 10'h0c7;  10'h333: alpha_pow = 10'h18e;
      10'h334: alpha_pow = 10'h31c;  10'h335: alpha_pow = 10'h231;  10'h336: alpha_pow = 10'h06b;  10'h337: alpha_pow = 10'h0d6;
      10'h338: alpha_pow = 10'h1ac;  10'h339: alpha_pow = 10'h358;  10'h33a: alpha_pow = 10'h2b9;  10'h33b: alpha_pow = 10'h17b;
      10'h33c: alpha_pow = 10'h2f6;  10'h33d: alpha_pow = 10'h1e5;  10'h33e: alpha_pow = 10'h3ca;  10'h33f: alpha_pow = 10'h39d;
      10'h340: alpha_pow = 10'h333;  10'h341: alpha_pow = 10'h26f;  10'h342: alpha_pow = 10'h0d7;  10'h343: alpha_pow = 10'h1ae;
      10'h344: alpha_pow = 10'h35c;  10'h345: alpha_pow = 10'h2b1;  10'h346: alpha_pow = 10'h16b;  10'h347: alpha_pow = 10'h2d6;
      10'h348: alpha_pow = 10'h1a5;  10'h349: alpha_pow = 10'h34a;  10'h34a: alpha_pow = 10'h29d;  10'h34b: alpha_pow = 10'h133;
      10'h34c: alpha_pow = 10'h266;  10'h34d: alpha_pow = 10'h0c5;  10'h34e: alpha_pow = 10'h18a;  10'h34f: alpha_pow = 10'h314;
      10'h350: alpha_pow = 10'h221;  10'h351: alpha_pow = 10'h04b;  10'h352: alpha_pow = 10'h096;  10'h353: alpha_pow = 10'h12c;
      10'h354: alpha_pow = 10'h258;  10'h355: alpha_pow = 10'h0b9;  10'h356: alpha_pow = 10'h172;  10'h357: alpha_pow = 10'h2e4;
      10'h358: alpha_pow = 10'h1c1;  10'h359: alpha_pow = 10'h382;  10'h35a: alpha_pow = 10'h30d;  10'h35b: alpha_pow = 10'h213;
      10'h35c: alpha_pow = 10'h02f;  10'h35d: alpha_pow = 10'h05e;  10'h35e: alpha_pow = 10'h0bc;  10'h35f: alpha_pow = 10'h178;
      10'h360: alpha_pow = 10'h2f0;  10'h361: alpha_pow = 10'h1e9;  10'h362: alpha_pow = 10'h3d2;  10'h363: alpha_pow = 10'h3ad;
      10'h364: alpha_pow = 10'h353;  10'h365: alpha_pow = 10'h2af;  10'h366: alpha_pow = 10'h157;  10'h367: alpha_pow = 10'h2ae;
      10'h368: alpha_pow = 10'h155;  10'h369: alpha_pow = 10'h2aa;  10'h36a: alpha_pow = 10'h15d;  10'h36b: alpha_pow = 10'h2ba;
      10'h36c: alpha_pow = 10'h17d;  10'h36d: alpha_pow = 10'h2fa;  10'h36e: alpha_pow = 10'h1fd;  10'h36f: alpha_pow = 10'h3fa;
      10'h370: alpha_pow = 10'h3fd;  10'h371: alpha_pow = 10'h3f3;  10'h372: alpha_pow = 10'h3ef;  10'h373: alpha_pow = 10'h3d7;
      10'h374: alpha_pow = 10'h3a7;  10'h375: alpha_pow = 10'h347;  10'h376: alpha_pow = 10'h287;  10'h377: alpha_pow = 10'h107;
      10'h378: alpha_pow = 10'h20e;  10'h379: alpha_pow = 10'h015;  10'h37a: alpha_pow = 10'h02a;  10'h37b: alpha_pow = 10'h054;
      10'h37c: alpha_pow = 10'h0a8;  10'h37d: alpha_pow = 10'h150;  10'h37e: alpha_pow = 10'h2a0;  10'h37f: alpha_pow = 10'h149;
      10'h380: alpha_pow = 10'h292;  10'h381: alpha_pow = 10'h12d;  10'h382: alpha_pow = 10'h25a;  10'h383: alpha_pow = 10'h0bd;
      10'h384: alpha_pow = 10'h17a;  10'h385: alpha_pow = 10'h2f4;  10'h386: alpha_pow = 10'h1e1;  10'h387: alpha_pow = 10'h3c2;
      10'h388: alpha_pow = 10'h38d;  10'h389: alpha_pow = 10'h313;  10'h38a: alpha_pow = 10'h22f;  10'h38b: alpha_pow = 10'h057;
      10'h38c: alpha_pow = 10'h0ae;  10'h38d: alpha_pow = 10'h15c;  10'h38e: alpha_pow = 10'h2b8;  10'h38f: alpha_pow = 10'h179;
      10'h390: alpha_pow = 10'h2f2;  10'h391: alpha_pow = 10'h1ed;  10'h392: alpha_pow = 10'h3da;  10'h393: alpha_pow = 10'h3bd;
      10'h394: alpha_pow = 10'h373;  10'h395: alpha_pow = 10'h2ef;  10'h396: alpha_pow = 10'h1d7;  10'h397: alpha_pow = 10'h3ae;
      10'h398: alpha_pow = 10'h355;  10'h399: alpha_pow = 10'h2a3;  10'h39a: alpha_pow = 10'h14f;  10'h39b: alpha_pow = 10'h29e;
      10'h39c: alpha_pow = 10'h135;  10'h39d: alpha_pow = 10'h26a;  10'h39e: alpha_pow = 10'h0dd;  10'h39f: alpha_pow = 10'h1ba;
      10'h3a0: alpha_pow = 10'h374;  10'h3a1: alpha_pow = 10'h2e1;  10'h3a2: alpha_pow = 10'h1cb;  10'h3a3: alpha_pow = 10'h396;
      10'h3a4: alpha_pow = 10'h325;  10'h3a5: alpha_pow = 10'h243;  10'h3a6: alpha_pow = 10'h08f;  10'h3a7: alpha_pow = 10'h11e;
      10'h3a8: alpha_pow = 10'h23c;  10'h3a9: alpha_pow = 10'h071;  10'h3aa: alpha_pow = 10'h0e2;  10'h3ab: alpha_pow = 10'h1c4;
      10'h3ac: alpha_pow = 10'h388;  10'h3ad: alpha_pow = 10'h319;  10'h3ae: alpha_pow = 10'h23b;  10'h3af: alpha_pow = 10'h07f;
      10'h3b0: alpha_pow = 10'h0fe;  10'h3b1: alpha_pow = 10'h1fc;  10'h3b2: alpha_pow = 10'h3f8;  10'h3b3: alpha_pow = 10'h3f9;
      10'h3b4: alpha_pow = 10'h3fb;  10'h3b5: alpha_pow = 10'h3ff;  10'h3b6: alpha_pow = 10'h3f7;  10'h3b7: alpha_pow = 10'h3e7;
      10'h3b8: alpha_pow = 10'h3c7;  10'h3b9: alpha_pow = 10'h387;  10'h3ba: alpha_pow = 10'h307;  10'h3bb: alpha_pow = 10'h207;
      10'h3bc: alpha_pow = 10'h007;  10'h3bd: alpha_pow = 10'h00e;  10'h3be: alpha_pow = 10'h01c;  10'h3bf: alpha_pow = 10'h038;
      10'h3c0: alpha_pow = 10'h070;  10'h3c1: alpha_pow = 10'h0e0;  10'h3c2: alpha_pow = 10'h1c0;  10'h3c3: alpha_pow = 10'h380;
      10'h3c4: alpha_pow = 10'h309;  10'h3c5: alpha_pow = 10'h21b;  10'h3c6: alpha_pow = 10'h03f;  10'h3c7: alpha_pow = 10'h07e;
      10'h3c8: alpha_pow = 10'h0fc;  10'h3c9: alpha_pow = 10'h1f8;  10'h3ca: alpha_pow = 10'h3f0;  10'h3cb: alpha_pow = 10'h3e9;
      10'h3cc: alpha_pow = 10'h3db;  10'h3cd: alpha_pow = 10'h3bf;  10'h3ce: alpha_pow = 10'h377;  10'h3cf: alpha_pow = 10'h2e7;
      10'h3d0: alpha_pow = 10'h1c7;  10'h3d1: alpha_pow = 10'h38e;  10'h3d2: alpha_pow = 10'h315;  10'h3d3: alpha_pow = 10'h223;
      10'h3d4: alpha_pow = 10'h04f;  10'h3d5: alpha_pow = 10'h09e;  10'h3d6: alpha_pow = 10'h13c;  10'h3d7: alpha_pow = 10'h278;
      10'h3d8: alpha_pow = 10'h0f9;  10'h3d9: alpha_pow = 10'h1f2;  10'h3da: alpha_pow = 10'h3e4;  10'h3db: alpha_pow = 10'h3c1;
      10'h3dc: alpha_pow = 10'h38b;  10'h3dd: alpha_pow = 10'h31f;  10'h3de: alpha_pow = 10'h237;  10'h3df: alpha_pow = 10'h067;
      10'h3e0: alpha_pow = 10'h0ce;  10'h3e1: alpha_pow = 10'h19c;  10'h3e2: alpha_pow = 10'h338;  10'h3e3: alpha_pow = 10'h279;
      10'h3e4: alpha_pow = 10'h0fb;  10'h3e5: alpha_pow = 10'h1f6;  10'h3e6: alpha_pow = 10'h3ec;  10'h3e7: alpha_pow = 10'h3d1;
      10'h3e8: alpha_pow = 10'h3ab;  10'h3e9: alpha_pow = 10'h35f;  10'h3ea: alpha_pow = 10'h2b7;  10'h3eb: alpha_pow = 10'h167;
      10'h3ec: alpha_pow = 10'h2ce;  10'h3ed: alpha_pow = 10'h195;  10'h3ee: alpha_pow = 10'h32a;  10'h3ef: alpha_pow = 10'h25d;
      10'h3f0: alpha_pow = 10'h0b3;  10'h3f1: alpha_pow = 10'h166;  10'h3f2: alpha_pow = 10'h2cc;  10'h3f3: alpha_pow = 10'h191;
      10'h3f4: alpha_pow = 10'h322;  10'h3f5: alpha_pow = 10'h24d;  10'h3f6: alpha_pow = 10'h093;  10'h3f7: alpha_pow = 10'h126;
      10'h3f8: alpha_pow = 10'h24c;  10'h3f9: alpha_pow = 10'h091;  10'h3fa: alpha_pow = 10'h122;  10'h3fb: alpha_pow = 10'h244;
      10'h3fc: alpha_pow = 10'h081;  10'h3fd: alpha_pow = 10'h102;  10'h3fe: alpha_pow = 10'h204;
      default  alpha_pow = 10'h000;
    endcase
  end
  endfunction
