/*********************************************************************************
 * Engineer: Nicholas Sica
 *
 * Create Date: 06/22/2020 03:37:00 PM
 * Design Name:
 * Module Name: i2c_slave
 * Project Name: i2c_slave
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
						 RCV_ADDR,
						 ACK_ADDR,
						 DATA_XFER,
						 ACK_DATA,
						 SEND_STOP
						 } states_t;

module i2c_slave (
	input	logic	scl_i, en_i, rw_i, ack_i,
	input	logic [6:0] addr_i,
	input	logic [7:0] data_i,
	output logic ack_o,
	output logic [7:0] data_o,
	inout logic sda_io,
	);

	parameter ADDRESS;

	states_t i2c_state_c = IDLE;
	logic start_r, ack_r, data_rcv_r;
	logic [7:0] addr_r;
	logic [7:0] rw_addr_c = {rw_i, addr_i};
	unsigned int idx = 0;

	always_ff @(posedge scl_i) begin
		RCV_ADDR : begin
			addr_r[idx] <= sda_io;
			idx++;
		end

		ACK_ADDR : begin
			if(addr_r == ADDRESS) begin
				sda_io <= 1'b0;
				ack_r <= 1'b0;
			end
			idx <= 0;
		end

	always_ff @(negedge scl_i) begin
		case(i2c_state_c)
			IDLE :
				if(~sda_io) begin
					start_r <= 1'b1;
					idx <= 0;
				end


		endcase
	end // always_ff @(negedge scl_i)

	always_comb begin : state_ctrl_p
		case(i2c_state_c)
			IDLE : if(start_r) i2c_state_c = RCV_ADDR;

			RCV_ADDR : if(idx == 8) i2c_state_c = ACK_ADDR;

			ACK_ADDR :
				if(ack_r) begin
					i2c_state_c = DATA_XFER;
				else
					i2c_state_c = IDLE;
				end

			DATA_XFER : if(idx == 8) i2c_state_c = ACK_DATA;

			ACK_DATA :
				if(ack_r)
					i2c_state_c = SEND_STOP;
				else
					i2c_state_c = DATA_XFER;

			SEND_STOP :	i2c_state_c = IDLE;
		endcase // case(i2c_state_c)
	end // block: state_ctrl_p

endmodule i2c_slave
