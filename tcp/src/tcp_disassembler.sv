/*********************************************************************************
 * Engineer: Nicholas Sica
 * 
 * Create Date: 03/13/2020 06:00:04 PM
 * Design Name: 
 * Module Name: tcp_disassembler
 * Project Name: tcp
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

module tcp_disassembler (
    input  logic        clk_i,
    input  logic        rst_i,
    input  logic        data_i,
    output logic [31:0] ip_addr_o
    output logic [11:0] port_o
  );

  typedef enum logic [] {
    SRC_ADDR,
    DST_ADDR,
    ZEROS,
    PROTOCOL,
    TCP_LEN,
    SRC_IP,
    DST_IP,
    SEQ_NUM,
    ACK_NUM,
    DATA_OFFSET,
    RESERVED,
    FLAGS,
    WINDOW_SIZE,
    CHECKSUM,
    URG_PTR,
    DATA
  } parse_state_t;

    
    
endmodule tcp_disassembler;

