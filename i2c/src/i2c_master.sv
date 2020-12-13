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
	input	logic	clk_i, en_i, rw_i, ack_i,
	input	logic [6:0] addr_i,
	input	logic [7:0] data_i,
	output logic ack_o,
	output logic [7:0] data_o,
	inout logic scl_io, sda_io,
	);

	parameter [7:0] CLK_DIV = 4;
	unsigned int clk_count = 0;
	states_t		 i2c_state_c = IDLE;
	logic				 scl_r;
	logic        sda_r;
	logic        ack_r;
	logic        ack_valid_r;
	logic        data_rcv_r;
	logic        scl_en;
	logic        sda_en;
	logic [7:0]	 addr_r;
	logic [7:0]  data_r;
	unsigned int idx = 0;

	assign scl_io = scl_r ? 1'bz : 1'b0;
	assign sda_io = sda_r ? 1'bz : 1'b0;

	always_ff @(posedge clk_i) begin : scl_gen_p
		if(rst_i) begin
			scl_r <= 1'b0;
		end
		else if(clk_count < 4) begin
			clk_count++;
		end
		else begin
			clk_count <= 0;
			scl_r <= ~scl_r;
		end
	end

	always_ff @(posedge clk_i) begin : tri_ctrl_p
		case(i2c_state_c)
			ACK_ADDR : sda_r <= 1'b1;

			DATA_XFER :	begin
				if(rw_r)
					sda_r <= 1'b1;
			end

			// High impedance if writing to slave
			ACK_DATA : begin
				if(~rw_r)
					sda_r <= 1'b1;
			end

			SEND_STOP : sda_r <= 1'b1;
	end


	always_ff @(negedge scl_io) begin : sda_ctrl_p
		case(i2c_state_c)
			IDLE :
				if(en_i && sda_io) begin
					sda_r <= 0;
					rw_r <= rw_i;
					addr_r <= {rw_i, addr_i};
					data_r <= data_i;
					idx <= 0;
				end

			SEND_ADDR : begin
				sda_r <= addr_r[idx];
				idx++;
			end

			ACK_ADDR : begin
				ack_r <= sda_io;
				idx <= 0;
			end

			DATA_XFER :	begin
				if(rw_r) begin // Requesting data from slave
					data_rcv_r[idx] <= sda_io[idx];
					idx++;
				end
				else begin
					sda_r <= data_r[idx];
					idx++;
				end
			end

			// Send an ack if reading from slave
			ACK_DATA : begin
				if(rw_r) begin
					ack_r <= sda_io;
					idx <= 0;
				end
				else begin
					idx <= 0;
				end
			end

			SEND_STOP : sda_io <= 1'b1;
		endcase // case (i2c_state_c)
	end

	always_comb begin : state_ctrl_p
		case(i2c_state_c)
			IDLE : if(en_i && sda_io) i2c_state_c = SEND_ADDR;

			SEND_ADDR : begin
				if(idx == 8)
					i2c_state_c = ACK_ADDR;
			end

			ACK_ADDR : begin
				if(ack_valid_r) begin
					if(ack_r)
						i2c_state_c = DATA_XFER;
					else
						i2c_state_c = SEND_ADDR;
				end
			end

			DATA_XFER : begin
				if(idx == 8)
					i2c_state_c = ACK_DATA;
			end


			ACK_DATA :
				if(ack_r)
					i2c_state_c = SEND_STOP;
				else
					i2c_state_c = DATA_XFER;

			SEND_STOP :	i2c_state_c = IDLE;
		endcase // case(i2c_state_c)
	end // block: state_ctrl_p

	scl_io <= scl_r;


	// Formal Verification
`ifdef FORMAL
	initial sda_io = 1'b1;
	initial i2c_state_c = IDLE;
	always @(posedge scl_io) begin
		if(i2c_state_c != IDLE && i2c_state_c != SEND_STOP) assert($stable(sda_io));

		case(i2c_state_c)
			IDLE : begin
				assert($stable(idx));
			end

			SEND_ADDR : begin
				assert(idx >= 0 && counter <= 8);
			end
		endcase // case (i2c_state_c)
	end // always @ (posedge scl_io)
`endif
endmodule i2c_master
