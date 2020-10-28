/*********************************************************************************
 * Engineer: Nicholas Sica
 * 
 * Create Date: 11/07/2019 04:53:04 PM
 * Design Name: 
 * Module Name: Cache
 * Project Name: 
 * Target Devices: 
 * Tool Versions: 
 * Description: A cache implemented with cache_type = 0: set associative, 1: direct mapped
 * 
 * Dependencies: 
 * 
 * Revision:
 * Revision 0.01 - File Created
 * Additional Comments:
 * 
*********************************************************************************/
`timescale 1ns / 1ps

module data_cache #(cache_type = 0, cache_size = 1024, associativity = 3, word_num = 32, word_wid = 64) 
    (input logic clk_i, wr_en_i, rd_en_i, rst_i,
     input logic [63:0] addr_i, data_i,
     output logic [63:0] data_o);

    import cache_pkg::*;
    parameter int 	 IDX_WID = int'($ceil($clog2(associativity)));

    lookup_state_t state = IDLE;
    
    logic [4:0][7:0][7:0] ram_r [0:4095];
    //logic [32:0] 				      ram_r_data, r_data;

    logic [cache_size-1:0][associativity-1:0] hit = {associativity{1'b0}};
    logic [cache_size-1:0][associativity-1:0] hit_valid = {associativity{1'b0}};
    logic [cache_size-1:0][IDX_WID-1:0]       hit_idx = {IDX_WID{1'b0}};
    logic [cache_size-1:0][associativity-1:0] inval_entry = {associativity{1'b0}};
    logic [cache_size-1:0][IDX_WID-1:0]       inval_entry_idx = {IDX_WID{1'b0}};
    logic [cache_size-1:0][IDX_WID-1:0]       rd_idx;
    
    logic [cache_size-1:0][IDX_WID-1:0] replace_idx;
    logic [cache_size-1:0] 		replace_valid;    
 
    initial begin: p_check_wid
	assert(word_wid % 8 == 0);
    end

    always_ff @(posedge clk_i) begin: p_write_data
        if(wr_en_i) begin
	    ram_r[addr_i[31:8]][addr_i[7:3]][0] <= data_o[7:0];	    

	    if(addr_i[0]) begin
		ram_r[addr_i[31:8]][addr_i[7:3]][1] <= data_o[15:8];		
	    end
	    
	    if(addr_i[0]) begin
		ram_r[addr_i[31:8]][addr_i[7:3]][3:2] <= data_o[31:16];
	    end
	    
	    if(addr_i[0] & addr_i[1]) begin
		 ram_r[addr_i[31:8]][addr_i[7:3]][7:4] <= data_o[63:32];
	    end
        end
    end

    genvar i;
    generate
	if(cache_type == 0) begin: g_set_associative
	    logic [cache_size-1:0][associativity-1:0][14:0] tag_store_r = {cache_size{ {associativity{15'b0}} }};  // { valid bit, 14 bit tag store }
	    logic [cache_size-1:0][associativity-1:0][4:0][7:0][7:0] data_store_r = {cache_size{ {associativity{ {word_wid{1'b0}} }} }};
	    
	    for(i = 0; i < cache_size; i++) begin: g_lru
		lru_replacement #(cache_type, cache_size, associativity, word_wid, IDX_WID) lru (.clk_i, .en_i((addr_i[31:22] == i) && rd_en_i), .hit_i(|hit), .rst_i, 
												 .valid_i(|hit_valid), .idx_i(hit_idx), .inval_entry_i(|inval_entry), 
												 .inval_entry_idx_i(inval_entry_idx), .lookup_state_i(state),
		    										 .valid_o(replace_valid[i]), .idx_o(replace_idx[i]));
	    end // block: g_lru

	    always_comb begin
		if(state == SHIFT) begin
		    state = REPLACE;
		    $display("We are in fact in shift!");
		end
	    end
	
	    // Used to be clocked	
	    always_comb begin: p_replace_read_data
		if(state == REPLACE) begin
		    if(replace_valid[addr_i[31:22]] & rd_en_i) begin
	    		data_store_r[addr_i[31:22]][replace_idx[addr_i[31:22]]] = ram_r[addr_i[31:8]];
	    		tag_store_r[addr_i[31:22]][replace_idx[addr_i[31:22]]] = {1'b1, addr_i[21:8]};
		    end
		    
		    if((|hit | replace_valid[addr_i[31:22]]) & rd_en_i) begin
			if(|hit) begin
			    rd_idx = hit_idx;			
			end else begin
			    rd_idx = replace_idx[addr_i[31:22]];
			end

			data_o = 64'b0;		    		    
			data_o[7:0] = data_store_r[addr_i[31:22]][rd_idx][addr_i[7:3]][0];
			
			if(addr_i[0]) begin
			    data_o[15:8] = data_store_r[addr_i[31:22]][rd_idx][addr_i[7:3]][1];			
			end
			
			if(addr_i[0]) begin
			    data_o[31:16] = data_store_r[addr_i[31:22]][rd_idx][addr_i[7:3]][3:2];			
			end
			
			if(addr_i[0] & addr_i[1]) begin
			    data_o[63:32] = data_store_r[addr_i[31:22]][rd_idx][addr_i[7:3]][7:4];			
			end
		    end // if ((|hit | replace_valid[addr_i[31:22]]) & rd_en_i)
		    state = IDLE;		    
		end /*else begin // if (state == REPLACE)		    
		    rd_idx = {IDX_WID{1'b0}};
		    data_o = 64'b0;		    
		end // else: !if(state == REPLACE)		
		     */
	    end
	
	    always_ff @(posedge clk_i) begin: p_check_hit
		if(state == IDLE) begin
		    inval_entry = {associativity{1'b0}};
		    if(rd_en_i) begin
			for(logic[IDX_WID-1:0] k = 0; k < associativity; k++) begin
			    if(~tag_store_r[addr_i[31:22]][k][14]) begin
				hit_valid[k] = 1'b1;
				hit[k] = 1'b0;
				inval_entry_idx = k;
				inval_entry[k] = 1'b1;
			    end else if(tag_store_r[addr_i[31:22]][k][13:0] == addr_i[21:8]) begin
				hit_valid[k] = 1'b1;
				hit[k] = 1'b1;
				hit_idx = k;
			    end else begin
		    		hit[k] = 1'b0;
				hit_valid[k] = 1'b1;
			    end
			end // for (logic[IDX_WID-1:0] k = 0; k < associativity; k++)			
		    end // else: if(rd_en_i)
		    state = SHIFT;		
    	        end /*else begin // if (state == IDLE)
		    hit_valid = {associativity{1'b0}};
		    hit = {associativity{1'b0}};
		    hit_idx = {IDX_WID{1'b0}};		    
		    inval_entry_idx = {IDX_WID{1'b0}};
		    inval_entry = {associativity{1'b0}};
		end // else: !if(state == IDLE)	*/
	    end // always_ff @ (posedge clk_i)
	end else if(cache_type == 1) begin: g_direct_mapped
	    logic [cache_size-1:0][14:0] tag_store_r;  // { valid bit, 14 bit tag store }
	    logic [cache_size-1:0][word_wid-1:0] data_store_r;
	    
	    always_ff @(posedge clk_i) begin: p_check_hit
		if(tag_store_r[addr_i[17:8]] == addr_i[31:18]) begin
		    hit <= 1'b1;
		    // data_o <= (data_store_r[addr_i[17:8]][addr_i[7:3]][((addr_i[2:0] + 1) << 3) : (addr_i[2:0] << 3)] & (8'b11111111 << (addr_i[2:0] << 3)));
		end else begin
		    hit <= 1'b0;	    
		end
	    end
	end // if (is_associative)      
    endgenerate
endmodule: data_cache















