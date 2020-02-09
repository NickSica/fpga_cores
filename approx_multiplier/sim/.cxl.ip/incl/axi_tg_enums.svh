//`ifndef _AXI_TG_ENUMS_SVH_
//`define _AXI_TG_ENUMS_SVH_

//*****************************************************************************
// Global Enumeration (enum) Types
//*****************************************************************************

typedef enum{
  NONE,
  AXI_WRITE,
  AXI_READ
}axi_cmd_t;

typedef enum {
  AXI_SIZE_1BYTE,
  AXI_SIZE_2BYTE,
  AXI_SIZE_4BYTE,
  AXI_SIZE_8BYTE,
  AXI_SIZE_16BYTE,
  AXI_SIZE_32BYTE,
  AXI_SIZE_64BYTE,
  AXI_SIZE_128BYTE
}axi_size_t;

typedef enum {
  AXI_FIXED_BURST,
  AXI_INCR_BURST,
  AXI_WRAP_BURST
}axi_burst_t;

typedef enum {
  AXI_NORMAL,
  AXI_EXCLUSIVE,
  AXI_LOCKED
}axi_lock_t;

typedef enum {
  AXI_AW_REQ_BEFORE_WDATA,
  AXI_WDATA_BEFORE_AW_REQ,
  AXI_NO_ADDR_DATA_TIMING
}axi_addr_data_timing_t;

typedef enum {
  CONSTANT_DATA,
  RANDOM_DATA,
  ADDR_AS_DATA,
  AXI_ID_AS_DATA,
  AXI_BURST_AS_DATA,
  AXI_LEN_AS_DATA,
  AXI_SIZE_AS_DATA,
  AXI_CACHE_AS_DATA,
  START_ADDR_AS_DATA,
  WALKING_1_DATA,
  WALKING_0_DATA,
  HAMMER_DATA,
  NEIGHBOUR_DATA,
  SRC_ID_AS_DATA
} data_pattern_t;

typedef enum {
  DEFINED_STRB,
  RAND_VALID_STRB,
  ALL_VALID_STRB,
  ALT_VALID_STRB,
  NO_VALID_STRB
}strb_pattern_t;

typedef enum {
  DEFINED_KEEP,
  RAND_VALID_KEEP,
  ALL_VALID_KEEP,
  ALT_VALID_KEEP,
  NO_VALID_KEEP
}keep_pattern_t;

typedef enum {
  AXI_MODE_DEFINED,
  AXI_MODE_INCR_BY,
  AXI_MODE_DECR_BY,
  AXI_MODE_AUTO_INCR,
  AXI_MODE_ALL,
  AXI_MODE_RANDOM,
  AXI_MODE_RANDOM_RANGE,
  AXI_MODE_RAND_ADDR,
  AXI_MODE_RAND_ADDR_ALIGNED,
  AXI_MODE_RAND_ADDR_UNALIGNED,
  AXI_MODE_RAND_ADDR_UNIFORM,
  AXI_MODE_RAND_ADDR_UNIFORM_ALIGNED,
  AXI_MODE_RAND_ADDR_UNIFORM_UNALIGNED,
  AXI_MODE_RANDOM_BW,
  AXI_MODE_RANDOM_BW_UNIFORM_DIST,
  AXI_MODE_RANDOM_BW_NORMAL_DIST
}axi_cntrl_field_mode_t;

typedef enum {
  WAIT_RSP_EACH_TXN,
  WAIT_RSP_END_TXN,
  NO_WAIT_RSP
} wait_rsp_t;

typedef enum{
  SINGLE_SLAVE_ACTIVE,
  ALL_SLAVE_ACTIVE,
  RANDOM_SLAVE_ACTIVE
}axi_slave_select_mode_t;


//`endif
