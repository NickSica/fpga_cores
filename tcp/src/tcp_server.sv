/*********************************************************************************
 * Engineer: Nicholas Sica
 * 
 * Create Date: 03/12/2020 06:00:04 PM
 * Design Name: 
 * Module Name: tcp_server
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

module tcp_server (
    input logic clk_i,
    input logic rst_i
  );

  typedef enum logic [1:0] { LISTEN, SYN_RECEIVED, ESTABLISHED } tcp_state_t;
  tcp_state_t tcp_state = LISTEN;

  logic is_dest_x;
  
  tcp_disassembler tcp_d (
    .clk_i,
    .rst_i,
    .data_i,
    .ip_addr_o(ip_addr_x),
    .port_o(port_x)
  );

  always_ff begin
    case(tcp_state) begin
      LISTEN : begin
        
      end

      SYN_RECEIVED : begin

      end

      ESTABLISHED : begin

      end
    endcase
  end

endmodule tcp_server;












