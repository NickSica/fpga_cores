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
    IDLE,
    SRC_ADDR,
    DST_ADDR,
    ZEROS,
    PROTOCOL,
    TCP_LEN,
    SRC_PORT,
    DST_PORT,
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
  parse_state_t parser_state_r = IDLE;

  int          counter_v = 0;
  const        C_ZEROS_LEN = 7;
  logic [31:0] src_addr_r;
  logic [31:0] dst_addr_r;
  logic [7:0]  protocol_r;
  logic [15:0] tcp_len_r;
  logic [15:0] src_port_r;
  logic [15:0] dst_port_r;
  logic [31:0] seq_num_r;
  logic [31:0] ack_num_r;
  logic [3:0]  data_offset_r;
  logic [3:0]  reserved_r;
  logic [7:0]  flags_r;
  logic [15:0] win_size_r;
  logic [15:0] chksum_r;
  logic [15:0] urg_ptr_r;
  logic [31:0] options_r;
  logic        data_r; // TODO : Variable width decide how to deal with this later

  always_ff begin : parse_data_p
    case (parser_state_r)
      IDLE : begin
        
      end

      SRC_ADDR : begin
        src_addr_r[counter_v] <= data_i;
        if (counter_v == $bits(src_addr_r) - 1) begin
          parser_state_r      <= DST_ADDR;
          counter_v           <= 0;
        else begin
          counter_v++;
        end
      end

      DST_ADDR : begin
         dst_addr_r[counter_v] <= data_i;
        if (counter_v == $bits(dst_addr_r) - 1) begin
          parser_state_r       <= ZEROS;
          counter_v            <= 0;
        else begin
          counter_v++;
        end
       
      end

      ZEROS : begin
        if (counter_v == C_ZEROS_LEN) begin
          parser_state_r      <= PROTOCOL;
          counter_v           <= 0;
        else begin
          counter_v++;
        end

      end

      PROTOCOL : begin
        protocol_r[counter_v] <= data_i;
        if (counter_v == $bits(protocol_r) - 1) begin
          parser_state_r      <= TCP_LEN;
          counter_v           <= 0;
        else begin
          counter_v++;
        end
      end
     
      TCP_LEN : begin
        tcp_len_r[counter_v] <= data_i;
        if (counter_v == $bits(tcp_len_r) - 1) begin
          parser_state_r     <= SRC_PORT;
          counter_v          <= 0;
        else begin
          counter_v++;
        end
      end

      SRC_PORT : begin
	src_port_r[counter_v] <= data_i;
        if (counter_v == $bits(src_port_r) - 1) begin
          parser_state_r     <= DST_PORT;
          counter_v          <= 0;
        else begin
          counter_v++;
        end
      end
      
      DST_PORT : begin
        dst_port_r[counter_v] <= data_i;
        if (counter_v == $bits(dst_port_r) - 1) begin
          parser_state_r     <= SEQ_NUM;
          counter_v          <= 0;
        else begin
          counter_v++;
        end
      end

      SEQ_NUM : begin
	seq_num_r[counter_v] <= data_i;
        if (counter_v == $bits(seq_num_r) - 1) begin
          parser_state_r     <= ACK_NUM;
          counter_v          <= 0;
        else begin
          counter_v++;
        end
      end

      ACK_NUM : begin
        ack_num_r[counter_v] <= data_i;
        if (counter_v == $bits(ack_num_r) - 1) begin
          parser_state_r     <= DATA_OFFSET;
          counter_v          <= 0;
        else begin
          counter_v++;
        end
      end

      DATA_OFFSET : begin
	data_offset_r[counter_v] <= data_i;
        if (counter_v == $bits(data_offset_r) - 1) begin
          parser_state_r     <= RESERVED;
          counter_v          <= 0;
        else begin
          counter_v++;
        end
      end

      RESERVED : begin
	reserved_r[counter_v] <= data_i;
        if (counter_v == $bits(reserved_r) - 1) begin
          parser_state_r     <= FLAGS;
          counter_v          <= 0;
        else begin
          counter_v++;
        end
      end

      FLAGS : begin
	flags_r[counter_v] <= data_i;
        if (counter_v == $bits(flags_r) - 1) begin
          parser_state_r     <= WINDOW_SIZE;
          counter_v          <= 0;
        else begin
          counter_v++;
        end
      end

      WINDOW_SIZE : begin
	win_size_r[counter_v] <= data_i;
        if (counter_v == $bits(win_size_r) - 1) begin
          parser_state_r     <= CHECKSUM;
          counter_v          <= 0;
        else begin
          counter_v++;
        end
      end

      CHECKSUM : begin
	chksum_r[counter_v] <= data_i;
        if (counter_v == $bits(chksum_r) - 1) begin
          parser_state_r    <= URG_PTR;
          counter_v         <= 0;
        else begin
          counter_v++;
        end
      end

      URG_PTR : begin
	urg_ptr_r[counter_v] <= data_i;
        if (counter_v == $bits(urg_ptr_r) - 1) begin
          parser_state_r     <= DATA;
          counter_v          <= 0;
        else begin
          counter_v++;
        end
      end

      // TODO : Decide how to deal with data
      DATA : begin
	tcp_len_r[counter_v] <= data_i;
        if (counter_v == $bits(tcp_len_r) - 1) begin
          parser_state_r     <= IDLE;
          counter_v          <= 0;
        else begin
          counter_v++;
        end
      end
    endcase;
  end
endmodule tcp_disassembler;

