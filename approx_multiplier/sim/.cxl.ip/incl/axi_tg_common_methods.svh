//`ifndef _AXI_TG_COMMON_METHODS_SVH_
//`define _AXI_TG_COMMON_METHODS_SVH_

//*****************************************************************************
// Global APIs 
// The below APIs will be used by axi4/axi3/axi4_stream transaction(sequence_item) 
// and test objects(sequence)
//
// WARNING :: Please make sure that the functions or tasks added here are automatic. 
// Because this file is included inside the module directly, so by default the methods 
// treated in static lifetime and would cause any unpredcited behaviour. To avoid such
// cases, please use automatic methods
//*****************************************************************************

/////////////////////////////////////////////////////////////////
// Function Description: set_data_pat_type 
// This function is used to change the data pattern type from 
// string type to enum type
function automatic data_pattern_t set_data_pat_type(string data_pat);
  case(data_pat)
    "CONSTANT_DATA", 
    "constant"              : return CONSTANT_DATA;

    "RANDOM_DATA", 
    "random"                : return RANDOM_DATA;
    
    "WALKING_1_DATA", 
    "walking_1"             : return WALKING_1_DATA;
    
    "WALKING_0_DATA", 
    "walking_0"             : return WALKING_0_DATA;
    
    "HAMMER_DATA", 
    "hammer"                : return HAMMER_DATA;
    
    "NEIGHBOUR_DATA", 
    "neighbour"             : return NEIGHBOUR_DATA;
    
    "SRC_ID_AS_DATA", 
    "same_as_src"           : return SRC_ID_AS_DATA;
    
    "AXI_ID_AS_DATA", 
    "PKT_ID_AS_DATA", 
    "same_as_id"            : return AXI_ID_AS_DATA;
    
    "START_ADDR_AS_DATA",   
    "same_as_start_addr"    : return START_ADDR_AS_DATA;
    
    "ADDR_AS_DATA", 
    "same_as_addr"          : return ADDR_AS_DATA;
    
    "AXI_BURST_AS_DATA", 
    "same_as_burst"         : return AXI_BURST_AS_DATA;
    
    "AXI_SIZE_AS_DATA", 
    "same_as_size"          : return AXI_SIZE_AS_DATA;
    
    "AXI_LEN_AS_DATA", 
    "PKT_LEN_AS_DATA", 
    "same_as_len"           : return AXI_LEN_AS_DATA;
    
    "AXI_CACHE_AS_DATA", 
    "same_as_cache"         : return AXI_CACHE_AS_DATA;
  default : `xil_fatal(TAG, $sformatf("INVALID DATA PATTERN(%0s) IS SET FROM GUI/CSV", data_pat))
  endcase
endfunction : set_data_pat_type


/////////////////////////////////////////////////////////////////
// Function Description: set_strb_pat_type 
// This functon is used to change the strb pattern type from
// string type to enum type
function automatic strb_pattern_t set_strb_pat_type(string strb_pat);
  case(strb_pat)
  "DEFINED_STRB"    : return DEFINED_STRB;
  "RAND_VALID_STRB" : return RAND_VALID_STRB;
  "ALL_VALID_STRB"  : return ALL_VALID_STRB;
  "ALT_VALID_STRB"  : return ALT_VALID_STRB;
  "NO_VALID_STRB"   : return NO_VALID_STRB;
  default : `xil_fatal(TAG, $sformatf("INVALID STRB PATTERN(%0s) IS SET FROM GUI/CSV", strb_pat))
  endcase
endfunction : set_strb_pat_type


/////////////////////////////////////////////////////////////////
// Function Description: set_slave_select_type 
// This function is used to change the slave_select type from 
// string type to enum type
function automatic axi_slave_select_mode_t set_slave_select_type(string slave_select_type);
  case(slave_select_type)
    "SINGLE_SLAVE_ACTIVE"   : return SINGLE_SLAVE_ACTIVE;
    "ALL_SLAVE_ACTIVE"      : return ALL_SLAVE_ACTIVE;
    "RANDOM_SLAVE_ACTIVE"   : return RANDOM_SLAVE_ACTIVE;
    default                 : `xil_fatal(TAG, $sformatf("INVALID SLAVE ACTIVE TYPE(%0s) IS SET FROM GUI/CSV", slave_select_type))  
  endcase
endfunction


/////////////////////////////////////////////////////////////////
// Function Description:  set_bw_type_tg
// 
function automatic axi_cntrl_field_mode_t set_bw_type_tg(string bw_type);
  case(bw_type)
    "DEFINED_BW", ""  : return(AXI_MODE_DEFINED);
    "RANDOM_ALL_BW", "RANDOM", "random" : return(AXI_MODE_RANDOM_BW);
    "RANDOM_UNIFORM_DIST_BW", "uniform"  : return(AXI_MODE_RANDOM_BW_UNIFORM_DIST);
    "RANDOM_NORMAL_DIST_BW", "normal"  : return(AXI_MODE_RANDOM_BW_NORMAL_DIST);
    default : `xil_fatal(TAG, $sformatf("INVALID BANDWIDTH TYPE (%0s) IS SET FROM GUI",bw_type))
  endcase
endfunction : set_bw_type_tg


/////////////////////////////////////////////////////////////////
// Function Description: convert_ascii_to_64bit_int 
// This function is used to convert the 64bit string value
// into the 64bit integer value. We proposed this function instead of
// using typical system function(str.atohex) due to its limitation of 
// only able to convert upto 32bit string to integer 
function automatic xil_patg_ulong convert_ascii_to_64bit_int(string string_in, string format);
  xil_patg_ulong int_64b_out;
  int success;
  case(format)
    "HEX" : success = $sscanf(string_in, "%h", int_64b_out);
    "DEC" : success = $sscanf(string_in, "%d", int_64b_out);
    "BIN" : success = $sscanf(string_in, "%b", int_64b_out);
    default : success = $sscanf(string_in, "%h", int_64b_out); 
  endcase
  return(int_64b_out);
endfunction : convert_ascii_to_64bit_int


/////////////////////////////////////////////////////////////////
// Function Description: get_sub_division_values 
// This function is used to grep the min and max values from
// random_range(<min>:<max>) syntax
function automatic void get_sub_division_values(input string str_in, input int command_line_num, output string str_out[]);
  string str1 = "";
  string str2 = "";
  string str3 = "";
  string str4 = "";
  string str5 = "";
  int out_arr_index = 0;

  string str_array [$];

  bit entered;

  for(int i = 0; i < str_in.len(); i++)begin
    str1 = str_in.substr(i,i);
    if(str1 == ":")begin
      str_out = new[str_out.size()+1](str_out);
      while(str_array.size>0) begin 
        str2 = str_array.pop_front;
        str3 = {str3,str2};
      end
      str_out[out_arr_index] = str3;
      out_arr_index++;
      entered = 1;
    end
    else begin
      str_array.push_back(str1);
    end
  end

  if(entered == 0) begin
    `xil_fatal("AXI_CSV_PARSER", $sformatf("ERROR :: @CSV_LINE= %0d :: random_range option does not have correct seperator(:) between min and max values.", command_line_num))
  end

  str_out = new[str_out.size()+1](str_out);
  
  while(str_array.size>0) begin 
    str4 = str_array.pop_front;
    str5 = {str5,str4};
  end
  
  str_out[out_arr_index] = str5;

endfunction


/////////////////////////////////////////////////////////////////
// Function Description: get_aligned_addr
// This function will provide the aligned address for the given
// start address based on the size.
function automatic xil_patg_ulong get_aligned_addr(xil_patg_ulong start_addr, int size);
  //get_aligned_addr = ((start_addr/(1<<size)) * (1<<size));
  case(size)
    0 : get_aligned_addr  = start_addr;
    1 : get_aligned_addr  = {start_addr[64 -1 : 1],1'd0};
    2 : get_aligned_addr  = {start_addr[64 -1 : 2],2'd0};
    3 : get_aligned_addr  = {start_addr[64 -1 : 3],3'd0};
    4 : get_aligned_addr  = {start_addr[64 -1 : 4],4'd0};
    5 : get_aligned_addr  = {start_addr[64 -1 : 5],5'd0};
    6 : get_aligned_addr  = {start_addr[64 -1 : 6],6'd0};
    7 : get_aligned_addr  = {start_addr[64 -1 : 7],7'd0};
  endcase
endfunction : get_aligned_addr


/////////////////////////////////////////////////////////////////
// Function Description: is_addr_out_of_range
// This method is used on AXI4/AXI3 TG. It will return 1 when 
// the given axi_addr with len/size/burst credentials is going 
// out of given base/highaddr range. Else it will return 0.
function automatic bit is_addr_out_of_range (xil_patg_ulong base_addr, xil_patg_ulong high_addr, xil_patg_ulong axi_addr, xil_patg_uint size, xil_patg_uint len, int burst);
  //xil_patg_ulong  last_byte_addr;
  xil_patg_bit65  last_byte_addr;
  xil_patg_ulong  aligned_axi_addr;
  xil_patg_uint   number_of_bytes;
  xil_patg_ulong  wrap_boundary_low;
  xil_patg_bit65  slv_density;


  aligned_axi_addr = get_aligned_addr(axi_addr, size);
  case(burst)
    'h0 : begin /*FIXED*/ 
      number_of_bytes = (1 << size);
      last_byte_addr = (aligned_axi_addr + number_of_bytes) - 1;
    end
    'h1 : begin /*INCR*/
      number_of_bytes = (1 << size) * (len + 1);
      last_byte_addr = (aligned_axi_addr + number_of_bytes) - 1;
    end
    'h2 : begin /*WRAP*/
      number_of_bytes = (1 << size) * (len + 1);
      wrap_boundary_low = (axi_addr/number_of_bytes) * number_of_bytes;
      last_byte_addr = (wrap_boundary_low + number_of_bytes) - 1;
    end
  endcase

  slv_density = (high_addr - base_addr) + 1;

  if(slv_density < number_of_bytes) begin
    `xil_fatal(TAG,$sformatf("The selected addr range between base_addr= 0x%0h and high_addr= 0x%0h is not enough to cover the txn with axi_addr= 0x%0h, axi_size= %0d, axi_len= 0x%0h", base_addr, high_addr, axi_addr, size, len))
  end

  if((last_byte_addr > high_addr) || (axi_addr < base_addr)) 
    is_addr_out_of_range = 1;
  else 
    is_addr_out_of_range = 0;
endfunction : is_addr_out_of_range


/////////////////////////////////////////////////////////////////
// Function Description: get_first_byte_addr
// returns first byte addr of burst access
function xil_patg_ulong get_first_byte_addr(xil_patg_ulong axi_addr, bit[1:0] burst, bit[7:0] len, bit[2:0] size);
  xil_patg_ulong  first_byte_addr;
  xil_patg_uint   number_of_bytes;
  xil_patg_ulong  wrap_boundary_low;

  case(burst)
    'h0 : begin /*FIXED*/ 
      first_byte_addr = axi_addr;
    end
    'h1 : begin /*INCR*/
      first_byte_addr = axi_addr;
    end
    'h2 : begin /*WRAP*/
      number_of_bytes   = (1 << size) * (len + 1);
      wrap_boundary_low = (axi_addr/number_of_bytes) * number_of_bytes;
      first_byte_addr   = wrap_boundary_low;
    end
  endcase

  return(first_byte_addr);
  
endfunction : get_first_byte_addr


/////////////////////////////////////////////////////////////////
// Function Description: get_last_byte_addr
// returns last byte addr of burst access
function xil_patg_bit65 get_last_byte_addr(xil_patg_ulong axi_addr, bit[1:0] burst, bit[7:0] len, bit[2:0] size);
  xil_patg_bit65  last_byte_addr;
  xil_patg_ulong  aligned_axi_addr;
  xil_patg_uint   number_of_bytes;
  xil_patg_ulong  wrap_boundary_low;

  aligned_axi_addr = get_aligned_addr(axi_addr, size);
  case(burst)
    'h0 : begin /*FIXED*/ 
      number_of_bytes = (1 << size);
      last_byte_addr  = (aligned_axi_addr + number_of_bytes) - 1;
    end
    'h1 : begin /*INCR*/
      number_of_bytes = (1 << size) * (len + 1);
      last_byte_addr  = (aligned_axi_addr + number_of_bytes) - 1;
    end
    'h2 : begin /*WRAP*/
      number_of_bytes   = (1 << size) * (len + 1);
      wrap_boundary_low = (axi_addr/number_of_bytes) * number_of_bytes;
      last_byte_addr    = (wrap_boundary_low + number_of_bytes) - 1;
    end
  endcase

  return(last_byte_addr);
  
endfunction : get_last_byte_addr


/////////////////////////////////////////////////////////////////
// Function Description: next_xfer_addr 
// This function will provide the next axi tranfer(axi beat) address
// within a burst. The next transfer address will be calsulated based
// on the burst type, previous beat address, size and len 
// TODO we can use the beat_count(beat_index) effectively, so that no 
// need of using every current beat_addr to find out next beat addr,
// also no need of having inout varibles for wrap boundary
function automatic xil_patg_ulong next_xfer_addr(xil_patg_ulong beat_start_addr, int size, int len, axi_burst_t burst, int beat_count, inout xil_patg_ulong wrap_boundary_low, inout xil_patg_ulong wrap_boundary_high);
  xil_patg_ulong  aligned_start_addr;
  xil_patg_ulong  addr;
  int number_of_bytes;
  aligned_start_addr = get_aligned_addr(beat_start_addr, size);
  case(burst)
    AXI_INCR_BURST : begin 
      addr = aligned_start_addr;
      addr += (1<<size); 
    end
    AXI_FIXED_BURST : begin 
      addr = beat_start_addr;
    end
    AXI_WRAP_BURST : begin 
      if(beat_count == 0) begin
        number_of_bytes = (1 << size) * (len + 1);
        wrap_boundary_low = (beat_start_addr/number_of_bytes) * number_of_bytes;
        wrap_boundary_high = wrap_boundary_low + number_of_bytes;
      end
      addr = aligned_start_addr;
      addr = (addr == (wrap_boundary_high - (1 << size))) ? wrap_boundary_low : (addr + (1<<size)) ;
    end
  endcase
  return addr;
endfunction : next_xfer_addr


/////////////////////////////////////////////////////////////////
// Function Description: addr_delay_for_bw
// This function is responsible for calculating the delay between transaction(s)
// based on clk_period, requested bandwidth, axi_len and axi_size.
// It will also tell the fractional delay missed while rounded off the calculated delay.
// And tell the type of fractional delay adjustment.
// Examples:
//    Ex 1. if the actual calculated delay = 19.32, addr_delay_for_bw (rounded off) = 19.
//          So, delay_missed = (19.32 - 19) = 0.32, And delay_adjust_type = 1 (Positive delay adjustment)
//    Ex 2. if the actual calculated delay = 19.72, addr_delay_for_bw (rounded off) = 20.
//          So, delay_missed = (20 - 19.72) = 0.28, And delay_adjust_type = 0 (Negative delay adjustment)
// The missed fractional delay value will be accumulated/used to adjust(increment/decrement by 1) the delay 
// based on delay_adjust_type.
function automatic int addr_delay_for_bw(
                                          input   string          display, 
                                          input   xil_patg_ulong  bw_requested/*in Bps*/, 
                                          input   int             clk_period/*in ps*/, 
                                          input   int             data_width, 
                                          input   int             axi_len, 
                                          input   int             axi_size, 
                                          input   bit             is_variable_size_enabled,
                                          input   bit             is_variable_len_enabled,
                                          output  bit             delay_adjust_type, 
                                          output  real            delay_missed
                                        );
  int   axi_size_int, axi_len_int;
  xil_patg_ulong   max_bw_possible, bw_possible_by_size;
  xil_patg_ulong   bw_requested_bits;
  xil_patg_ulong   clk_freq;
  xil_patg_ulong   req_freq;
  real  ideal_transfer_interval;
  real  addr_delay_for_bw_r;
  //bit   all_size_enabled, all_len_enabled;
  real  bw_requested_mbps;
  real  max_bw_possible_mbps;
  real  bw_possible_by_size_mbps;
  real  clk_freq_mhz;

  bw_requested_mbps   = bw_requested/1000_000;

  bw_requested_bits   = bw_requested * 8; // BW in bps (bits/Sec)
  axi_size_int        = (1 << axi_size) * 8; // axi size in bits
  axi_len_int         = axi_len + 1;

  clk_freq            = $pow(10,12)/clk_period; // axi clk freq in Hz 
  clk_freq_mhz        = clk_freq/1000_000;
  max_bw_possible     = clk_freq * (data_width/8);    // in Bps (Bytes/Sec)
                                                      // TODO how can we use it effectively, because we might not use 
                                                      // full datawidth size for each transfer. 
                                                      // Even for now fixed size is supported, size can be narrow transfer. 
                                                      // so need to think here little deep.
  max_bw_possible_mbps  = max_bw_possible/1000_000;


//  all_size_enabled    = (display == "WRITE" && (C_AXI_WRITE_SIZE inside {"ALL", "RANDOM", "RANDOM_RANGE"})) || 
//                        (display == "READ" && (C_AXI_READ_SIZE inside {"ALL", "RANDOM", "RANDOM_RANGE"}))   ? 1 : 0;
//  all_len_enabled     = (display == "WRITE" && (C_AXI_WRITE_LEN {"ALL", "RANDOM", "RANDOM_RANGE"})) || 
//                        (display == "READ" && (C_AXI_READ_LEN {"ALL", "RANDOM", "RANDOM_RANGE"}))   ? 1 : 0;
  

  bw_possible_by_size = is_variable_size_enabled == 1 ? max_bw_possible :  clk_freq * (axi_size_int/8);  // in Bps (Bytes/Sec) 
                                                      // TODO will be updated when dynamic sized tranfer supported
  bw_possible_by_size_mbps  = bw_possible_by_size/1000_000;
  
  if(bw_requested > max_bw_possible) begin
    `xil_fatal(TAG, $sformatf("SRC_ID %0d ::: INVALID_BANDWIDTH_SETTING :: %0s :: Requested Bandwidth(%0dMBps) is exceeded the maximum possible axi bus Bandwidth(%0dMBps) based on the configured axi_data_width(%0dbit) and axi_clk_freq(%0dMHz).", PARAM_SRC_ID, display, bw_requested_mbps, max_bw_possible_mbps, data_width, clk_freq_mhz));
    // NOTE: if you downgrade the above fatal to error, the below stamentes should be used
    //`xil_warning(TAG, $sformatf("SRC_ID %0d ::: %0s :: AXI Requests are being send @Max possible Bandwidth(%0dMBps) since the requsted bandwidth(%0dMBps) is exceeded", PARAM_SRC_ID, display, max_bw_possible_mbps, bw_requested_mbps))
    //addr_delay_for_bw         = 0;
    //mst_ext_vif.tg_seq_err_cnt++;
  end
  else if(bw_requested > bw_possible_by_size) begin
    `xil_fatal(TAG, $sformatf("SRC_ID %0d ::: INVALID_BANDWIDTH_SETTING :: %0s :: Requested Bandwidth(%0dMBps) is exceeded the maximum possible axi bus Bandwidth(%0dMBps) based on the configured axi_size('h%0h) and axi_clk_freq(%0dMHz).", PARAM_SRC_ID, display, bw_requested_mbps, bw_possible_by_size_mbps, axi_size, clk_freq_mhz));
    // NOTE: if you downgrade the above fatal to error, the below stamentes should be used
    //`xil_warning(TAG, $sformatf("SRC_ID %0d ::: %0s :: AXI Requests are being send @Max possible Bandwidth(%0dMBps) since the requsted bandwidth(%0dMBps) is exceeded", PARAM_SRC_ID, display, bw_possible_by_size_mbps, bw_requested_mbps))
    //addr_delay_for_bw         = 0;
    //mst_ext_vif.tg_seq_err_cnt++;
  end
  else if(is_variable_size_enabled == 1 || is_variable_len_enabled == 1) begin
    `xil_warning(TAG, $sformatf("%0s :: AXI Requests are being send @Max possible Bandwidth (%0dMBps) since ALL size/len option is enabled", display, max_bw_possible_mbps))
    addr_delay_for_bw         = 0;
    addr_delay_for_bw_r       = 0;
  end
  else begin
    req_freq                  = bw_requested_bits/axi_size_int; // in Hz
    ideal_transfer_interval   = $itor(clk_freq)/$itor(req_freq); // in axi clks
    addr_delay_for_bw_r       = ideal_transfer_interval * axi_len_int; // in axi clks (real type) 
    addr_delay_for_bw         = addr_delay_for_bw_r; // rounded off delay (int type)
  end

  // Fractional Delay logic
  if(addr_delay_for_bw - addr_delay_for_bw_r > 0) begin // Negative delay missed
    delay_missed    = addr_delay_for_bw - addr_delay_for_bw_r; 
    delay_adjust_type = 0;
  end
  else if(addr_delay_for_bw_r - addr_delay_for_bw > 0) begin // Positive delay missed
    delay_missed    = addr_delay_for_bw_r - addr_delay_for_bw;
    delay_adjust_type = 1;
  end

  if(C_AXI_PROTOCOL_GUI == "AXI4_STREAM") begin 
    `xil_info(TAG, $sformatf("SRC_ID %0d ::: BANDWIDTH_SETTING :: %0s :: REQUESTED_BANDWIDTH %0dMBps, AXI_DATA_WIDTH %0dbit, PACKET_LEN 'h%0h, CLK_FREQ = %0dMHz, PACKET_DELAY %0dcyc(rounded off), PACKET_DELAY (actual) = %0fcyc, FRACTIONAL_DELAY_MISSED = (%0s)%0fcyc", PARAM_SRC_ID, display, bw_requested_mbps, (1<<axi_size)*8, axi_len, clk_freq_mhz, addr_delay_for_bw > 0 ? addr_delay_for_bw-axi_len_int : 0, addr_delay_for_bw_r > 0 ? addr_delay_for_bw_r-axi_len_int : 0, (delay_adjust_type == 0 ? "-" : "+"), delay_missed), VERBOSITY_TG_FULL)
    addr_delay_for_bw = addr_delay_for_bw - axi_len_int; // For AXI Stream
  end
  else begin
    `xil_info(TAG, $sformatf("SRC_ID %0d ::: BANDWIDTH_SETTING :: %0s :: REQUESTED_BANDWIDTH %0dMBps, AXI_SIZE 'h%0h, AXI_LEN 'h%0h, CLK_FREQ = %0dMHz, ADDR_DELAY %0dcyc(rounded off), ADDR_DELAY (actual) = %0fcyc, FRACTIONAL_DELAY_MISSED = (%0s)%0fcyc", PARAM_SRC_ID, display, bw_requested_mbps, axi_size, axi_len, clk_freq_mhz, addr_delay_for_bw, addr_delay_for_bw_r, (delay_adjust_type == 0 ? "-" : "+"), delay_missed), VERBOSITY_TG_FULL)
  end
endfunction : addr_delay_for_bw


/////////////////////////////////////////////////////////////////
// Function Description: adjust_addr_delay
// This function is responsible for adjust the delay value based on the current transaction
// count, delay_adjust_type and delay_missed.
// The delay adujustemnt is done by this function whenever the accumulated fractional delay
// is crosses(saturated to) the value of 1.
// Here we really wont do accumulate the fractional delays for every transaction. Instead we will apply 
// the below expression for every transaction to find out the fractional delay saturation point.
// current_missed_delay (current_txn_cnt * fractional missed delay) - current_missed_delay_i (rounded off) < delay_missed (fractional missed delay)
// If the expression true, this is the saturtaion point and the delay will be adusted based on adjust type.
function automatic int adjust_addr_delay(int cnt, bit delay_adjust_type, int addr_delay, real delay_missed);
  real  current_missed_delay;
  int   current_missed_delay_i;
  bit   do_delay_adjust;
  
  do_delay_adjust         = 0;
  current_missed_delay    = delay_missed * (cnt-1);
  current_missed_delay_i  = $floor(current_missed_delay);

  if((current_missed_delay - current_missed_delay_i < delay_missed) && cnt > 1) do_delay_adjust = 1; 
  
  if(delay_adjust_type == 0 && do_delay_adjust == 1) begin // Negtive delay adjustment
    adjust_addr_delay = addr_delay - 1;
  end
  else if(delay_adjust_type == 1 && do_delay_adjust == 1) begin // Positive delay adjustment
    adjust_addr_delay = addr_delay + 1;
  end
  else begin
    adjust_addr_delay = addr_delay;
  end

  //if(do_delay_adjust == 1) `xil_info(TAG, $sformatf("Addr delay has been adjusted for the txn cnt = %0d. ADDR_DELAY = %0d", cnt, adjust_addr_delay), VERBOSITY_TG_DEBUG)
endfunction : adjust_addr_delay


/////////////////////////////////////////////////////////////////
// Function Description: gen_rand_addr_delay
// This function is responsible to generate random addr_delay based on the 
// random mode choosen.
function automatic int gen_rand_addr_delay (input int bw/*in MBps*/, input axi_cntrl_field_mode_t rand_type, input int bw_limit/*in percentage of bandwidth*/, inout int seed, input string display, input int size, input int len, input int clk_period, input int data_width);
  int limit         = (bw * bw_limit)/100;
  int end_limit     = bw + limit;
  int start_limit   = bw > limit ? bw - limit : bw;
  int std_dev       = bw > limit ? limit : bw;
  int std_dev_x100  = 100 * std_dev; // this will be used to findout the negative delays generated

  xil_patg_uint rand_bw;
  xil_patg_uint min_bw = (1<<size);
  xil_patg_uint max_bw = (1000_000 * (1<<size))/clk_period;
  int delay;
  real delay_missed;
  bit delay_adjust_type;

  if(bw_limit > 30 &&  rand_type == AXI_MODE_RANDOM_BW_NORMAL_DIST) 
    `xil_warning(TAG, "The choosen BANDWIDTH_LIMIT should not be greater than 30% of required bandwidth incase of NORMAL DISTRIBUTION.")
  
  case(rand_type)
    AXI_MODE_RANDOM_BW_UNIFORM_DIST   : rand_bw = $dist_uniform(seed, start_limit, end_limit);
    AXI_MODE_RANDOM_BW_NORMAL_DIST    : begin rand_bw = $dist_normal(seed, bw, std_dev); if(rand_bw > std_dev_x100)rand_bw = 0; end
    AXI_MODE_RANDOM_BW                : rand_bw = $urandom_range(min_bw, max_bw);
    default                           : `xil_fatal(TAG, $sformatf("Wrong random option entered for BANDWIDTH in CSV. entered = %0s", rand_type))
  endcase

  if(rand_bw == 0)
    delay = 0;
  else
    delay = addr_delay_for_bw(display, rand_bw * 1000000, clk_period, data_width, len, size, 0, 0, delay_adjust_type, delay_missed); //TODO need to add fractional delay support

  return(delay);
endfunction : gen_rand_addr_delay


/////////////////////////////////////////////////////////////////
// Function Description: set_data 
// This function will generate the wdata for the axi4/axi3 burst.
// Also it will be used to generate the tdata for the axi_stream packet.
// when this function is called it will generate the data for all the
// beats(tarnsfers)of burtst/packet based on the size and len
//
// RANDOM_DATA – random data will be send on each write beat. 
// The seed value can be given in const_data argument to generate 
// different random patterns
//
// CONSTANT_DATA – The constant value which is given on const_data argument 
// will be send on all write beats.
//
// SRC_ID_AS_DATA – The PARAM_SRC_ID value will be send on all write 
// data beats. This can be used for debugging.
//
// ADDR_AS_DATA – The corresponding axi beat address will be send as 
// data in write beats

// AXI_ID_AS_DATA – The axi AWID/ARID of txn will be send as data in write beats
//
// AXI_BURST_AS_DATA – The axi AWBURST/ARBURST of txn will be send as data in write beats
//
// AXI_LEN_AS_DATA – The axi AWLEN/ARLEN of txn will be send as data in write beats
//
// AXI_SIZE_AS_DATA – The axi AWSIZE/ARSIZE of txn will be send as data in write beats
//
// AXI_CACHE_AS_DATA – The axi AWCACHE/ARCACHE of txn will be send as data in write beats
//
// WALKING_0_DATA – any one data bit in on beat will have value 0 
// and rest of all bits will have value 1. This value 0 will walk through 
// (i.e. circularly left shifted by 1) bit wise in each beat.
// If the size of the next txn is same as the prev txn, the walk data will be carry forwarded.
// If the size of the next txn is not same as the prev txn, then the walking data will be reloded.
// E.g. axi_len = 8, axi_size=0.
// Beat0 = ‘b1111_1110
// Beat1 = ‘b1111_1101
// Beat2 = ‘b1111_1010
// Beat3 = ‘b1111_0111
// Beat4 = ‘b1110_1111
// Beat5 = ‘b1101_1111
// Beat6 = ‘b1011_1111
// Beat7 = ‘b0111_1111
// Beat8 = ‘b1111_1110
//
// WALKING_1_DATA - any one data bit in on beat will have value 1 
// and rest of all bits will have value 0. This value 1 will walk through
// (i.e. circularly left shifted by 1) bit wise in each beat. 
// If the size of the next txn is same as the prev txn, the walk data will be carry forwarded.
// If the size of the next txn is not same as the prev txn, then the walking data will be reloded.
// E.g. axi_len = 8, axi_size=0.
// Beat0 = ‘b0000_0001
// Beat1 = ‘b0000_0010
// Beat2 = ‘b0000_0100
// Beat3 = ‘b0000_1000
// Beat4 = ‘b0001_0000
// Beat5 = ‘b0010_0000
// Beat6 = ‘b0100_0000
// Beat7 = ‘b1000_0000
// Beat8 = ‘b0000_0001
// 
// HAMMER_DATA – Long tail, Short head. In a beat 1/4th of axi_size bits (LSB) will have 
// same value (0/1) and rest of all bits(i.e. 3/4th of axi_size bits, MSB) will have inverted 
// bit value (1/0). Each beat will be inverted by preceding beat value
// E.g. axi_len = 3, axi_size=1.
// Beat0 = ‘b0000_0000_0000_1111
// Beat1 = ‘b1111_1111_1111_0000
// Beat2 = ‘b0000_0000_0000_1111
// Beat3 = ‘b1111_1111_1111_0000
//
// E.g. axi_len = 1, axi_size=2.
//
//                  11
//      00000000000011  Beat0:  32bit hammer data (head = 1(WData[7:0]), tail = 0(WData[31:8]))
//      00000000000011
//                  11
//
//                  00
//      11111111111100  Beat1:  32bit hammer data (head = 0(WData[7:0]), tail = 1(WData[31:8]))
//      11111111111100
//                  00
//
function automatic  void set_data(
              input   data_pattern_t  data_pat    = CONSTANT_DATA, 
              input   int             id          = 0,
              input   longint         addr        = 0, 
              input   axi_burst_t     burst       = AXI_INCR_BURST,
              input   int             len         = 0, // len width should be able to accomadate AXI and AXIS
              input   bit [3:0]       size        = 0, 
              input   int             cache       = 0,
              inout   bit[63:0]       const_data, // will be used as seed when RANDOM_DATA pattern selected
              inout   bit[7:0]        prev_last_data[],
              output  logic [7:0]     wdata[]
              );

  bit [C_AXI_WDATA_WIDTH-1:0]   wdata_beat;
  bit [C_AXI_WDATA_WIDTH-1:0]   wdata_beat_tmp;
  bit [C_AXI_WDATA_WIDTH-1:0]   prev_last_data_packed;
  bit [C_AXI_WDATA_WIDTH-1:0]   edge_of_walking_0;
  bit [C_AXI_WDATA_WIDTH-1:0]   edge_of_walking_0_tmp;
  bit [C_AXI_WDATA_WIDTH-1:0]   edge_of_walking_1;
  bit [C_AXI_ADDR_WIDTH - 1:0]  addr_temp;
  xil_patg_ulong                wrap_bound_l, wrap_bound_h;
  bit                           toggle;
  bit                           reset_data;
  bit [11:0]                    HAMMER_HEAD_WIDTH;
  bit [11:0]                    HAMMER_TAIL_WIDTH;

// create dyn arr to store wdata 
  wdata = new[(1 << size) * (len+1)];

// set write data
  case(data_pat)
    CONSTANT_DATA : begin
      for(int i = 0; i < len+1; i++) begin
        wdata_beat = const_data;
        for(int j = 0; j < (1 << size); j++) begin
          wdata[(i*(1<<size))+j] = wdata_beat[j*8+:8];
        end
      end
    end

    RANDOM_DATA : begin
      foreach (wdata[i]) begin
        wdata[i] = $random(const_data[31:0]);
      end
    end

    ADDR_AS_DATA : begin // beat address will be send in all beats
      addr_temp = addr;
      for(int i = 0; i < len+1; i++) begin
        wdata_beat = addr_temp;
        for(int j = 0; j < (1 << size); j++) begin
          wdata[(i*(1<<size))+j] = wdata_beat[j*8+:8];
        end
        addr_temp = next_xfer_addr(addr_temp, size, len, burst, i, wrap_bound_l, wrap_bound_h);
      end
    end

    START_ADDR_AS_DATA : begin // start address will be send in all beats
      wdata_beat = addr;
      for(int i = 0; i < len+1; i++) begin
        for(int j = 0; j < (1 << size); j++) begin
          wdata[(i*(1<<size))+j] = wdata_beat[j*8+:8];
        end
      end
    end

    //WALKING_1_DATA : begin
    //  wdata_beat = 'h1; 
    //  for(int i = 0; i < len+1; i++) begin
    //    for(int j = 0; j < (1 << size); j++) begin
    //      wdata[(i*(1<<size))+j] = wdata_beat[j*8+:8];
    //    end
    //    wdata_beat = wdata_beat << 1;
    //  end
    //end

    WALKING_1_DATA : begin
      // find out edge of walking_1 data to loop over
      edge_of_walking_1 = 2**(((1<<size)*8)-1); 

      // packing the prev_last_data
      for(int i = 0; i < C_AXI_WDATA_WIDTH/8; i++) begin
        if(prev_last_data.size() > 0 && i < prev_last_data.size())
          prev_last_data_packed[i*8+:8] = prev_last_data[i];
        else
          prev_last_data_packed[i*8+:8] = 8'b0;
      end
      
      // Initialize the wdata beat
      if(prev_last_data.size() == 0 || (prev_last_data.size() != 0 && (prev_last_data.size() != (1<<size) || prev_last_data_packed == edge_of_walking_1)))
        wdata_beat  = 'h1;
      else 
        wdata_beat  =  prev_last_data_packed << 1;
      
      // create dyn mem
      prev_last_data    = new[(1 << size)];

      // generate walking_1 data
      for(int i = 0; i < len+1; i++) begin
        for(int j = 0; j < (1 << size); j++) begin
          wdata[(i*(1<<size))+j] = wdata_beat[j*8+:8];
          if(i==len)
            prev_last_data[j] = wdata_beat[j*8+:8]; // store last data
        end

        // reset data
        if(reset_data)
          wdata_beat  = 'h1;
        else
          wdata_beat  = wdata_beat << 1;

        reset_data  = wdata_beat == edge_of_walking_1 ? 1 : 0;
      end
    end

    //WALKING_0_DATA : begin
    //  wdata_beat_tmp = 'h1;
    //  for(int i = 0; i < len+1; i++) begin
    //    wdata_beat = ~wdata_beat_tmp;
    //    for(int j = 0; j < (1 << size); j++) begin
    //      wdata[(i*(1<<size))+j] = wdata_beat[j*8+:8];
    //    end
    //    wdata_beat_tmp = wdata_beat_tmp << 1;
    //  end
    //end

   WALKING_0_DATA : begin
      // find out edge of walking_0 data to loop over
      edge_of_walking_1 = 2**(((1<<size)*8)-1); 
      edge_of_walking_0_tmp = ~edge_of_walking_1;
      for(int i = 0; i < C_AXI_WDATA_WIDTH; i++) begin
        if(i < ((1<<size)*8))  edge_of_walking_0[i+:1] = edge_of_walking_0_tmp[i+:1];
        else edge_of_walking_0[i+:1] = 0;
      end

      // packing the prev_last_data
      for(int i = 0; i < C_AXI_WDATA_WIDTH/8; i++) begin
        if(prev_last_data.size() > 0 && i < prev_last_data.size())
          prev_last_data_packed[i*8+:8] = prev_last_data[i];
        else
          prev_last_data_packed[i*8+:8] = 8'hFF;
      end
      
      // Initialize the wdata beat
      if(prev_last_data.size() == 0 || (prev_last_data.size() != 0 && (prev_last_data.size() != (1<<size) || prev_last_data_packed == edge_of_walking_0))) begin
        wdata_beat_tmp  = 'h1;
      end
      else 
        wdata_beat_tmp  =  (~prev_last_data_packed) << 1;
      
      // create dyn mem
      prev_last_data    = new[(1 << size)];

      // generate walking_0 data
      for(int i = 0; i < len+1; i++) begin
        wdata_beat      = ~wdata_beat_tmp;
        for(int j = 0; j < (1 << size); j++) begin
          wdata[(i*(1<<size))+j] = wdata_beat[j*8+:8];
          if(i==len)
            prev_last_data[j] = wdata_beat[j*8+:8]; // store last data
        end

        reset_data  = wdata_beat == edge_of_walking_0_tmp ? 1 : 0;

        // reset data
        if(reset_data) begin
          wdata_beat_tmp  = 'h1;
        end
        else
          wdata_beat_tmp  = wdata_beat_tmp << 1;
      end
    end

    //HAMMER_DATA : begin
    //  wdata_beat_tmp = 'hf;
    //  for(int i = 0; i < len+1; i++) begin
    //    wdata_beat = wdata_beat_tmp;
    //    for(int j = 0; j < (1 << size); j++) begin
    //      wdata[(i*(1<<size))+j] = wdata_beat[j*8+:8];
    //    end
    //    wdata_beat_tmp = ~wdata_beat_tmp;
    //  end
    //end

    HAMMER_DATA : begin
      // packing the prev_last_data
      for(int i = 0; i < C_AXI_WDATA_WIDTH/8; i++) begin
        if(prev_last_data.size() > 0 && i < prev_last_data.size())
          prev_last_data_packed[i*8+:8] = prev_last_data[i];
        else
          prev_last_data_packed[i*8+:8] = 8'hFF;
      end

      // Initialize the wdata beat
      HAMMER_HEAD_WIDTH = (((1 << size)*8)/4); // 1/4th of size bits will have head portion of Hammer data (all 1's or all 0's)
      HAMMER_TAIL_WIDTH = ((1 << size)*8) - HAMMER_HEAD_WIDTH; // 3/4th of size bits will have tail portion of Hammer data (all 0's or all 1's)

      if(prev_last_data.size() == 0 || (prev_last_data.size() != 0 && prev_last_data.size() != (1<<size))) begin
        for(int i = 0; i < C_AXI_WDATA_WIDTH; i++) begin
          if(i < HAMMER_HEAD_WIDTH)
            wdata_beat_tmp[i+:1]  = 1'b1; // hammer head 
          else if (i < (HAMMER_HEAD_WIDTH + HAMMER_TAIL_WIDTH))
            wdata_beat_tmp[i+:1]  = 1'b0; // hammer tail
          else
            wdata_beat_tmp[i+:1]  = 1'b1; // dummy bits, not used 
        end
      end
      else begin
        wdata_beat_tmp  = ~prev_last_data_packed; 
      end

      // create dyn mem
      prev_last_data    = new[(1 << size)];

      // generate the hammer data
      for(int i = 0; i < len+1; i++) begin
        wdata_beat = wdata_beat_tmp;
        for(int j = 0; j < (1 << size); j++) begin
          wdata[(i*(1<<size))+j] = wdata_beat[j*8+:8];
          if(i==len)
            prev_last_data[j] = wdata_beat[j*8+:8]; // store last data
        end
        wdata_beat_tmp = ~wdata_beat_tmp;
      end
    end

    NEIGHBOUR_DATA : begin
      wdata_beat_tmp = 'h1;
      toggle = 1;
      for(int i = 0; i < len+1; i++) begin
        if(toggle == 0) begin 
          wdata_beat = 'h0;
        end
        else begin
          wdata_beat = ~wdata_beat_tmp;
          wdata_beat_tmp = wdata_beat_tmp << 1;
        end
        toggle = ~toggle;
        for(int j = 0; j < (1 << size); j++) begin
          wdata[(i*(1<<size))+j] = wdata_beat[j*8+:8];
        end
      end
    end

    SRC_ID_AS_DATA  : begin
      wdata_beat = PARAM_SRC_ID;
      for(int i = 0; i < len+1; i++) begin
        for(int j = 0; j < (1 << size); j++) begin
          wdata[(i*(1<<size))+j] = wdata_beat[j*8+:8];
        end
      end
    end

    AXI_ID_AS_DATA  : begin
      wdata_beat = id;
      for(int i = 0; i < len+1; i++) begin
        for(int j = 0; j < (1 << size); j++) begin
          wdata[(i*(1<<size))+j] = wdata_beat[j*8+:8];
        end
      end
    end
    
    AXI_BURST_AS_DATA  : begin
      wdata_beat = burst;
      for(int i = 0; i < len+1; i++) begin
        for(int j = 0; j < (1 << size); j++) begin
          wdata[(i*(1<<size))+j] = wdata_beat[j*8+:8];
        end
      end
    end
    
    AXI_LEN_AS_DATA  : begin
      wdata_beat = len;
      for(int i = 0; i < len+1; i++) begin
        for(int j = 0; j < (1 << size); j++) begin
          wdata[(i*(1<<size))+j] = wdata_beat[j*8+:8];
        end
      end
    end
    
    AXI_SIZE_AS_DATA  : begin
      wdata_beat = size;
      for(int i = 0; i < len+1; i++) begin
        for(int j = 0; j < (1 << size); j++) begin
          wdata[(i*(1<<size))+j] = wdata_beat[j*8+:8];
        end
      end
    end

    AXI_CACHE_AS_DATA  : begin
      wdata_beat = cache;
      for(int i = 0; i < len+1; i++) begin
        for(int j = 0; j < (1 << size); j++) begin
          wdata[(i*(1<<size))+j] = wdata_beat[j*8+:8];
        end
      end
    end
  endcase

endfunction : set_data


/////////////////////////////////////////////////////////////////
// Function Description: set_strb 
// This function will generate the wstrb for the axi4/axi3 burst
// Also it will be used to generate the tstrb/tkeep for the 
// axi_stream packet. when this function is called it will generate 
// the strb/keep for all the beats(tarnsfers)of burtst/packet based 
// on the size and len. Input Argument arr_size should be (1 << size) * (len+1)
//
// ALL_VALID_STRB – All byte strobes are valid/enabled (value of 1)
//
// ALT_VALID_STRB – The first LSB byte strobe is generated randomly, 
// and value will be inverted on each byte strobe compared to adjacent value.
// E.g. axi_len 0, axi_size 3,
// wtrsb(beat 0):   0101_0101 (if wstrb[0] is randomized as 1)
// wtrsb(beat 0):   1010_1010 (if wstrb[0] is randomized as 0)
//
// NO_VALID_STRB – All byte strobes are invalid/disabled (value of 0)
//
// RAND_STRB – All byte strobes will have random value of 0/1 (valid/invalid).
function automatic  void set_strb(input strb_pattern_t strb_pat, input int arr_size, output bit wstrb[]);
  bit alt_strb;
  wstrb = new[arr_size];
// set write strobe
  case(strb_pat)
    //DEFINED_STRB : begin
    //  foreach (wstrb[i]) begin
    //    wstrb[i] = this.wstrb[i];
    //  end
    //end

    RAND_VALID_STRB : begin
      foreach (wstrb[i]) begin
          wstrb[i] = $random;
      end
    end

    ALL_VALID_STRB : begin
      foreach (wstrb[i]) begin
        wstrb[i] = 1;
      end
    end

    ALT_VALID_STRB : begin
      alt_strb = $random;
      for(int i = 0; i < wstrb.size(); i=i+2) begin
        wstrb[i] = alt_strb;
        wstrb[i+1] = ~alt_strb;
      end
    end

    NO_VALID_STRB : begin
      foreach (wstrb[i]) begin
        wstrb[i] = 0;
      end
    end
  endcase
endfunction : set_strb


/////////////////////////////////////////////////////////////////
// Function Description: get_slv_addr_range_from_param
// This function is used to extract the slave address range values
// from C_AXI_WRITE_BASEADDR_SLV/C_AXI_WRITE_HIGHADDR_SLV parameter
function automatic void get_slv_addr_range_from_param (input string str, output xil_patg_ulong arr[]);
	int off=0;
	xil_patg_ulong tmp;
	string lword;
	for ( int i = 0; i < str.len; i++) begin
    	if (str.getc(i) == " ") begin
        	lword = str.substr(off+2,i-1);
			    arr = new [arr.size+1](arr);
			    assert($sscanf(lword,"%h",tmp));
			    arr[arr.size-1] = tmp;
	        off = i+1;
    	end
	end
	lword = str.substr(off+2,str.len-1);
	arr = new [arr.size+1](arr);
	assert($sscanf(lword,"%h",tmp));
	arr[arr.size-1] = tmp;
endfunction : get_slv_addr_range_from_param


/////////////////////////////////////////////////////////////////
// Function Description: get_slv_width_size_from_param
// This function extracts the connected slaves data_width size from 
// C_AXI_SLAVE_DATA_WIDTH parameter. And it will be used to generate 
// AXI traffic based on NOC AXI restriction
function automatic void get_slv_width_size_from_param (input string str, output xil_patg_uint arr[]);
	int off=0;
	xil_patg_uint tmp;
	string lword;
	for ( int i = 0; i < str.len; i++) begin
    	if (str.getc(i) == ",") begin
        	lword = str.substr(off,i-1);
			    arr = new [arr.size+1](arr);
			    //assert($sscanf(lword,"%h",tmp));
          tmp = lword.atoi();
          tmp = $clog2(tmp/8);
			    arr[arr.size-1] = tmp;
	        off = i+1;
    	end
	end
	lword = str.substr(off,str.len-1);
	arr = new [arr.size+1](arr);
	//assert($sscanf(lword,"%h",tmp));
  tmp = lword.atoi();
  tmp = $clog2(tmp/8);
	arr[arr.size-1] = tmp;
endfunction : get_slv_width_size_from_param


//`endif
