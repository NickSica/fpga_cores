/*********************************************************************************
 * Engineer: Nicholas Sica
 * 
 * Create Date: 06/22/2020 03:37:00 PM
 * Design Name: 
 * Module Name: i2c_master
 * Project Name: i2c
 * Target Devices: 
 * Tool Versions: 
 * Description: 
 * 
 * Dependencies: 
 * 
 * Revision:
 * Revision 0.01 - File Created
 * Additional Comments:
 * 
*********************************************************************************/
typedef enum logic [2:0] {
			  IDLE,
			  SEND_ADDR,
			  DATA_XFER,
			  } states_t;

module i2c_master (
		   input logic 	      clk_i, en_i, rw_i, ack_i,
		   input logic [6:0]  addr_i,
		   input logic [7:0]  data_i,
		   output logic       scl_o, ack_o,
		   output logic [7:0] data_o,
		   inout logic 	      sda_io
		   );

  states_t     i2c_state_c = IDLE;
  logic        scl_r;
  logic [7:0]  rw_addr_c = {rw_i, addr_i};
  unsigned int idx = 0;
  
  always_ff @(posedge clk_i) 
    begin : scl_gen_p
      scl_r <= ~scl_r;
    end;

  always_ff @(posedge clk_i)
    begin : sda_ctrl_p
      case(i2c_state_c)
	IDLE : 
	  if(en_i)
	    begin
	      sda_io <= 0;
	      idx = 0;
	    end;
	
	SEND_ADDR :
	  begin
	    sda_io <= rw_addr_c[idx];
	    idx++;
	  end;
	
	DATA_XFER :
	  begin
	    
	  end;
      endcase; // case (i2c_state_c)
    end;
        
  always_comb
    case(i2c_state_c)
      IDLE : if(en_i) i2c_state_c = SEND_ADDR;

      SEND_ADDR : if(idx == 8) i2c_state_c = DATA_XFER;

      DATA_XFER : if(idx == 8) 
	begin
	end;
    endcase; // case(i2c_state_c)
  
  scl_o <= scl_r;
endmodule i2c_master;





