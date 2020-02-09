`ifndef NPS_MACROS
`define NPS_MACROS
`ifndef VERBOSITY_T_ENUM
`define VERBOSITY_T_ENUM
typedef enum {NONE,LOW,FULL,DBG} verbosity_t;
parameter verbosity_t VERBOSITY=DBG;
`endif
`define PRINT(ifdef_msg,msg,verbosity_l) \
  if (ifdef_msg ) \
  if(VERBOSITY>=verbosity_l) $display("%m: @%0t ",$time,msg); \
  else \
    begin end \
 
`define PRINT_MODEL(ifdef_msg,msg,verbosity_l) \
  if (ifdef_msg ) \
  if(VERBOSITY>=verbosity_l) $display("%m: @%0t ",$time,msg); \
  //`else \
  //  begin end \


`endif 
