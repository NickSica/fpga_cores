//-----------------------------------------------------------------------------
// Title         : VGA Controller
// Project       : vga_controller
//-----------------------------------------------------------------------------
// File          : vga_controller.sv
// Author        : Nicholas Sica
// Created       : 13.12.2020
// Last modified : 13.12.2020
//-----------------------------------------------------------------------------
// Description :
//------------------------------------------------------------------------------
// Modification history :
// 13.12.2020 : created
//-----------------------------------------------------------------------------

module vga_controller(
	input logic clk_i,
	input logic rst_i,
	output logic h_sync_o,
	output logic v_sync_o,
	output logic disp_en_o,
	);

	parameter CLK_DIV_THRESH = 18;
	parameter HOR_PIX = 640;
	parameter HOR_FR_PORCH = 16;
	parameter HOR_BACK_PORCH = 48;
	parameter VERT_PIX = 480;
	parameter VERT_FR_PORCH = 10;
	parameter VERT_BACK_PORCH = 33;

	localparam HOR_SYNC_START = HOR_PIX + HOR_FR_PORCH;
	localparam HOR_SYNC_END = HOR_SYNC_START + 96;
	localparam HOR_LAST_PIX = HOR_SYNC_END + HOR_BACK_PORCH;
	localparam VERT_SYNC_START = VERT_PIX + VERT_FR_PORCH;
	localparam VERT_SYNC_END = VERT_SYNC_START + 96;
	localparam VERT_LAST_PIX = VERT_SYNC_END + VERT_BACK_PORCH;
	localparam CLK_DIV_BITS = $clog2(CLK_DIV_THRESH);

	logic vga_clk_r;
	logic [CLK_DIV_BITS:0] clk_cnt_r;
	int vert_cnt_r;
	int hor_cnt_r;

	// 25 MHz vga_clk_r
	always_ff @(posedge clk_i) begin : clk_div_p
		if(rst_i) begin
			vga_clk_r <= 1'b0;
			clk_cnt_r <= 0;
		end
		else if(clk_cnt_r == CLK_DIV_THRESH - 1'b1) begin
			vga_clk_r <= ~vga_clk_r;
			clk_cnt_r <= 0;
		end
		else begin
			vga_clk_r <= vga_clk_r;
			clk_cnt_r <= clk_cnt_r + 1'b1;
		end // else: !if(rst_i)
	end

	always_ff @(posedge vga_clk_r) begin : hor_vert_cnt_p
		if(rst_i) begin
			hor_cnt_r <= 0;
			vert_cnt_r <= 0;
		end
		else begin
			if(hor_cnt_r == HOR_LAST_PIX - 1) begin
				hor_cnt_r <= 0;
				if(vert_cnt_r == VERT_LAST_PIX - 1)
					vert_cnt_r <= 0;
				else
					vert_cnt_r <= vert_cnt_r + 1;
			end
			else begin
				hor_cnt_r <= hor_cnt_r + 1;
				vert_cnt_r <= vert_cnt_r;
			end
		end
	end

	always_comb begin : hor_sync_p
		if(hor_cnt_r >= HOR_SYNC_START && hor_cnt_r < HOR_SYNC_END)
			h_sync_o = 1'b1;
		else
			h_sync_o = 1'b0;
	end

	always_comb begin : hor_sync_p
		if(vert_cnt_r >= VERT_SYNC_START && vert_cnt_r < VERT_SYNC_END)
			v_sync_o = 1'b1;
		else
			v_sync_o = 1'b0;
	end

	always_comb begin : disp_en_p
		if(vert_cnt_r < VERT_PIX && hor_cnt_r < HOR_PIX)
			disp_en_o = 1'b1;
		else
			disp_en_o = 1'b0;
	end
endmodule vga_controller
