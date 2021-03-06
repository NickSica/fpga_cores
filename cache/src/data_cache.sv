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

module Cache #(cache_type = 0, cache_size = 1024, associativity = 3, word_num = 32, word_wid = 64) 
    (input logic clk_i, wr_en_i, rd_en_i, rst_i,
     input logic [63:0] addr_i, data_i,
     output logic [63:0] data_o);

    parameter int 	IDX_WID = $ceil($clog2(associativity));   
    //typedef logic [word_num-1:0][data_wid/8-1:0][7:0] block_t;
    //typedef block_t [cache_size-1:0] data_cache_t;
    //typedef enum { IDLE, READ_0, READ_1, READ_2, READ_3  } state_t;
    //state_t state = IDLE;

    logic [4:0][7:0][7:0] ram [0:4095];
    //logic [32:0] 				      ram_data, r_data;

    logic [cache_size-1:0][associativity-1:0] hit = {cache_size{ {associativity{1'b0}} }};
    logic [cache_size-1:0][associativity-1:0] hit_valid = {cache_size{ {associativity{1'b0}} }};
    logic [cache_size-1:0][IDX_WID:0] 	      hit_idx = {cache_size{ {IDX_WID+1{1'b0}}}};
    logic [cache_size-1:0][associativity-1:0] inval_entry = {cache_size{ {associativity{1'b0}} }};
    logic [cache_size-1:0][IDX_WID:0] 	      inval_entry_idx = {cache_size{ {IDX_WID+1{1'b0}}}};
    logic [cache_size-1:0][IDX_WID-1:0]       rd_idx;
    
    logic [cache_size-1:0][IDX_WID:0] 	      replace_idx;
    logic [cache_size-1:0] 		      replace_valid;    
 
    initial begin
	    assert(word_wid % 8 == 0);
    end

    always_ff @(posedge clk_i) begin
        if(wr_en_i) begin
	    ram[addr_i[31:8]][addr_i[7:3]][0] <= data_o[7:0];	    

	    if(addr_i[0]) begin
		ram[addr_i[31:8]][addr_i[7:3]][1] <= data_o[15:8];		
	    end
	    
	    if(addr_i[0]) begin
		ram[addr_i[31:8]][addr_i[7:3]][3:2] <= data_o[31:16];
	    end
	    
	    if(addr_i[0] & addr_i[1]) begin
		 ram[addr_i[31:8]][addr_i[7:3]][7:4] <= data_o[63:32];
	    end
        end
    end

    genvar i;
    generate
	if(cache_type == 0) begin  // set associative
	    logic [cache_size-1:0][associativity-1:0][14:0] tag_store = {cache_size{ {associativity{15'b0}} }};  // { valid bit, 14 bit tag store }
	    logic [cache_size-1:0][associativity-1:0][4:0][7:0][7:0] data_store = {cache_size{ {associativity{ {word_wid{1'b0}} }} }};
	    
	    for(i = 0; i < cache_size; i++) begin: g_lru
		lru_replacement #(cache_type, cache_size, associativity, word_wid, IDX_WID) lru(.clk_i, .en_i((addr_i[31:22] == i) && rd_en_i), .hit_i(|hit[i]), .rst_i, 
												.valid_i(|hit_valid[i]), .idx_i(hit_idx[i]),
												.inval_entry_i(|inval_entry[i]), .inval_entry_idx_i(inval_entry_idx[i]),
		    										.valid_o(replace_valid[i]), .idx_o(replace_idx[i]));
		always_ff @(posedge clk_i) begin
	            if(replace_valid[i][addr_i[31:22]] & rd_en_i) begin
	    		data_store[addr_i[31:22]][replace_idx[i][addr_i[31:22]]] <= ram[addr_i[31:8]];
	    		tag_store[addr_i[31:22]][replace_idx[i][addr_i[31:22]]] <= {1'b1, addr_i[21:8]};
	            end

		    shift_reg_en <= rd_en_i & 1'b1;		    
		end

		always_comb begin
		    if((|hit[i] | replace_valid[i][addr_i[31:22]]) & rd_en_i) begin
			if(|hit[i]) begin
			    rd_idx[i] = hit_idx[i];			
			end else begin
			    rd_idx[i] = replace_idx[i][addr_i[31:22]];
			end

			data_o[7:0] = data_store[addr_i[31:22]][rd_idx][addr_i[7:3]][0];

			if(addr_i[0]) begin
			    data_o[15:8] = data_store[addr_i[31:22]][rd_idx][addr_i[7:3]][1];			
			end else begin
			    data_o[15:8] = 8'b0;			    
			end
			
			
			if(addr_i[0]) begin
			    data_o[31:16] = data_store[addr_i[31:22]][rd_idx][addr_i[7:3]][3:2];			
			end else begin
			    data_o[31:16] = 16'b0;			    
			end

			if(addr_i[0] & addr_i[1]) begin
			    data_o[63:32] = data_store[addr_i[31:22]][rd_idx][addr_i[7:3]][7:4];			
			end else begin
			    data_o[63:32] = 32'b0;			    
			end
		    end else begin // if ((|hit | replace_valid[addr_i[31:22]]) & rd_en_i)
			data_o = 63'b0;
			rd_idx[i] = {IDX_WID{1'b0}};			
		    end // else: !if((|hit[i] | replace_valid[i][addr_i[31:22]]) & rd_en_i)		    
		end // always_comb
	    end // block: g_lru
	
	    always_comb begin
		inval_entry = {associativity{1'b0}};
		if(rd_en_i) begin
                    for(logic[IDX_WID-1:0] k = 0; k < associativity; k++) begin
			if(~tag_store[addr_i[31:22]][k][14]) begin
                            hit_valid[i][k] = 1'b1;
                            hit[i][k] = 1'b0;
                            inval_entry_idx[i] = k;
                            inval_entry[i][k] = 1'b1;
			end else if(tag_store[addr_i[31:22]][k][13:0] == addr_i[21:8]) begin
			    hit_valid[i][k] = 1'b1;
		            hit[i][k] = 1'b1;
		            hit_idx[i] = k;
			end else begin
		    	    hit[i][k] = 1'b0;
		            hit_valid[i][k] = 1'b1;
			end
                    end // for (int k = 0; k < associativity; k++)
		end
	    end // always_ff @ (posedge clk_i)
	end else if(cache_type == 1) begin  // direct mapped
	    logic [cache_size-1:0][14:0] tag_store;  // { valid bit, 14 bit tag store }
	    logic [cache_size-1:0][word_wid-1:0] data_store;
	    
	    always_ff @(posedge clk_i) begin
		    if(tag_store[addr_i[17:8]] == addr_i[31:18]) begin
		        hit <= 1'b1;
//		        data_o <= (data_store[addr_i[17:8]][addr_i[7:3]][((addr_i[2:0] + 1) << 3) : (addr_i[2:0] << 3)] & (8'b11111111 << (addr_i[2:0] << 3)));
		    end else begin
		        hit <= 1'b0;	    
		    end
	    end
	end // if (is_associative)      
    endgenerate
endmodule: Cache















