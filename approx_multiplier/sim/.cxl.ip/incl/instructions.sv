assign bram_out[0] = {TG_PATTERN_MODE_LINEAR,    TG_PATTERN_MODE_PRBS,      TG_RW_MODE_WRITE_READ,  TG_RW_SUBMODE_DEFAULT,       TG_VICTIM_MODE_NO_VICTIM,  TG_VICTIM_SELECT_EXTERNAL, 5'd0,     32'd218,                             10'd0, 32'd1024, 6'd1};
assign bram_out[1] = {TG_PATTERN_MODE_LINEAR,    TG_PATTERN_MODE_HAMMER0,   TG_RW_MODE_WRITE_READ,  TG_RW_SUBMODE_DEFAULT,       TG_VICTIM_MODE_NO_VICTIM,  TG_VICTIM_SELECT_EXTERNAL, 5'd0,     32'd218,                             10'd0, 32'd1024, 6'd2};
assign bram_out[2] = {TG_PATTERN_MODE_PRBS,      TG_PATTERN_MODE_PRBS,      TG_RW_MODE_WRITE_READ,  TG_RW_SUBMODE_DEFAULT,       TG_VICTIM_MODE_NO_VICTIM,  TG_VICTIM_SELECT_EXTERNAL, 5'd0,     32'd300,                             10'd0, 32'd1024, 6'd3};
assign bram_out[3] = {TG_PATTERN_MODE_LINEAR,    TG_PATTERN_MODE_LINEAR,      TG_RW_MODE_WRITE_READ,  TG_RW_SUBMODE_DEFAULT,       TG_VICTIM_MODE_NO_VICTIM,  TG_VICTIM_SELECT_EXTERNAL, 5'd0,    32'd218,							  10'd0, 32'd1024, TG_INSTR_NUM_EXIT};
