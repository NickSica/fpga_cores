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
        ACK_ADDR,
        DATA_XFER,
        ACK_DATA,
        SEND_STOP
        } states_t;

module i2c_master (
       input logic        clk_i, en_i, rw_i, ack_i,
       input logic [6:0]  addr_i,
       input logic [7:0]  data_i,
       output logic       scl_o, ack_o,
       output logic [7:0] data_o,
       inout logic        sda_io
       );

  states_t     i2c_state_c = IDLE;
  logic        scl_r, ack_r, data_rcv_r;
  logic [7:0]  rw_addr_c = {rw_i, addr_i};
  unsigned int idx = 0;
  
  always_ff @(posedge clk_i) 
    begin : scl_gen_p
      scl_r <= ~scl_r;
    end;

  always_ff @(posedge scl_o)
    begin : sda_ctrl_p
      case(i2c_state_c)
  IDLE : 
    if(en_i && sda_io)
      begin
        sda_io <= 0;
        idx <= 0;
      end;
  
  SEND_ADDR :
    begin
      sda_io <= rw_addr_c[idx];
      idx++;
    end;

  ACK_ADDR :
    begin
      ack_r <= sda_io;
      idx <= 0;
    end;
    
  DATA_XFER :
    begin
      if(rw_i) // Requesting data from slave
        begin
    data_rcv_r[idx] <= sda_io[idx];
    idx++;
        end;
    end;

  ACK_DATA :
    begin
      if(rw_i)
        begin
    ack_r <= sda_io;
    idx <= 0;
        end;
    end;

  SEND_STOP :
    sda_io <= 1'b1;
      endcase; // case (i2c_state_c)
    end;

  always_ff @(negedge scl_o)
    begin : sda_ctrl_falling_p
      case(i2c_state_c)
  DATA_XFER :
    begin
      if(~rw_i) // Sending data to slave
        begin
    sda_io[idx] = data_rcv_r[idx];
    idx++;
        end;
    end;

  ACK_DATA :
    if(~rw_i)
      begin
        sda_io <= 1'b1;
        ack_r <= 1'b1;
        idx <= 0;
      end;

  SEND_STOP :
    sda_io <= 1'b0;
      endcase; // case (i2c_state_c)
    end;
  
  always_comb
    begin : state_ctrl_p
      case(i2c_state_c)
  IDLE :
    if(en_i && sda_io) i2c_state_c = SEND_ADDR;
  
  SEND_ADDR :
    if(idx == 8) i2c_state_c = ACK_ADDR;
  
  ACK_ADDR : 
    if(ack_r) 
      i2c_state_c = DATA_XFER;
          else
      i2c_state_c = SEND_ADDR;
  
  DATA_XFER : 
    if(idx == 8) i2c_state_c = ACK_DATA;

  ACK_DATA :
    if(ack_r) 
      i2c_state_c = SEND_STOP;
          else
      i2c_state_c = DATA_XFER;

  SEND_STOP :
    i2c_state_c = IDLE;
      endcase; // case(i2c_state_c)
    end; // block: state_ctrl_p
    
  scl_o <= scl_r;


  // Formal Verification
`ifdef FORMAL
  initial sda_io = 1'b1;
  initial i2c_state_c = IDLE;
  always @(posedge scl_o)
    begin;
      if(i2c_state_c != IDLE && i2c_state_c != SEND_STOP) assert($stable(sda_io));
      
      case(i2c_state_c)
  IDLE :
    begin
      assert($stable(idx));
    end;

  SEND_ADDR :
    begin
      assert(idx >= 0 && counter <= 8);
    end;
      endcase; // case (i2c_state_c)
    end; // always @ (posedge scl_o)
`endif
endmodule i2c_master;










