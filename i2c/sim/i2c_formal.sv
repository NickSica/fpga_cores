/*********************************************************************************
 * Engineer: Nicholas Sica
 *
 * Create Date: 12/06/2020 09:44:00 PM
 * Design Name:
 * Module Name: i2c_formal
 * Project Name: i2c_formal
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
`include "../src/i2c_master.sv";
`include "../src/i2c_slave.sv";

typedef enum logic [2:0] {
						 IDLE,
						 RCV_ADDR,
						 ACK_ADDR,
						 DATA_XFER,
						 ACK_DATA,
						 SEND_STOP
						 } states_t;

module i2c_formal (
	input logic scl_i, en_i, rw_i
	);

i2c_master master(
	.scl_i,
	.en_i,
	.rw_i,
	.ack_i(),
	.sda_i(),
	.addr_i(),
	.data_i(),
	.ack_o(),
	.sda_o(),
	.data_o(),
	);

i2c_slave slave(
	.scl_i,
	.en_i,
	.rw_i,
	.ack_i(),
	.sda_i(),
	.addr_i(),
	.data_i(),
	.ack_o(),
	.sda_o(),
	.data_o(),
	);

endmodule i2c_formal
