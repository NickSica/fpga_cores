`ifndef __NSU_MACROS_SVH__
`define __NSU_MACROS_SVH__


`ifndef VERBOSITY_T_ENUM
`define VERBOSITY_T_ENUM
`ifndef NPI_PROT_IF
typedef enum {NONE,LOW,FULL,IDBG,DBG} verbosity_t;
parameter verbosity_t VERBOSITY=DBG;
`else
typedef enum {LOW,FULL,IDBG,DBG} verbosity_t;
parameter verbosity_t VERBOSITY=IDBG;
`endif
`endif

`define PRINT(ifdef_msg,msg,verbosity_l) \
  `ifdef ifdef_msg \
  if(VERBOSITY>=verbosity_l) $display("%m: @%0t ",$time,msg); \
  `else \
   begin end \
  `endif
  
  `define PRINT_MODEL(ifdef_msg,msg,verbosity_l) \
  if( ifdef_msg) \
  //if(top.verbosity>=verbosity_l) $display("%m: @%0t ",$time,msg); \
  if(VERBOSITY>=verbosity_l) $display("%m: @%0t ",$time,msg); \
  //`else \
//begin end \
 // `endif  



`ifndef NPI_PROT_IF
`define PRINT_MODEL_NSU(TAG, ifdef_msg, msg, verbosity_l) \
if( ifdef_msg) \
if(VERBOSITY>=verbosity_l) $display("INFO: [%0s] (%m) @%0t : %0s", TAG, $time, msg); 
`else
`define PRINT_MODEL_NSU(TAG, ifdef_msg, msg, verbosity_l) \
if(VERBOSITY>=verbosity_l) $display("INFO: [%0s] @%0t : %0s", TAG, $time, msg); 
`endif
 
  
`endif 
