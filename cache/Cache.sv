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

module Cache #(cache_type = 0, cache_size = 1024, associativity = 3, word_num = 32, word_wid = 64) 
    (input en_i, clk_i,
     input logic [31:0] addr_i,
     output logic [7:0] data_o);
   
    //typedef logic [word_num-1:0][data_wid/8-1:0][7:0] block_t;
    //typedef block_t [cache_size-1:0] data_cache_t;
    typedef enum { IDLE, READ_0, READ_1, READ_2, READ_3  } state_t;
    state_t state = IDLE;

    logic [0:4095][63:0] main_mem;
    //logic [32:0] 				      ram_data, r_data;
    logic 					      hit, hit_valid;
   
    initial begin
	assert(word_wid % 8 != 0) begin
	    $error("Data width is not a multiple of 8!");
	end
    end

    genvar i;
    generate
	if(cache_type == 0) begin  // set associative
	    logic [associativity-1:0][cache_size-1:0][14:0] tag_store;  // { valid bit, 14 bit tag store }
	    logic [associativity-1:0][cache_size-1:0][word_wid-1:0] data_store;    
	    //data_cache_t [associativity - 1:0] data_store;
	    
	    always_ff @(posedge clk_i) begin
		tag_store[0][addr_i[31:22]] <= addr_i[21:8];
	    end

	    for(i = 0; i < cache_size; i++) begin: g_lru
		LRU #(cache_type, cache_size, associativity, word_wid) lru(.clk_i, .hit_i(hit), .valid_i(hit_valid), .idx_i(), .valid_o(replace_valid), .idx_o(replace_idx));

		always_ff @(replace_valid) begin
		    if(replace_valid) begin
			data_store[replace_idx][tag_store[addr_i[31:22]]] <= main_mem[addr_i[31:8]];
		    end
		end
	    end
	end else if(cache_type == 1) begin  // direct mapped
	    logic [cache_size-1:0][14:0] tag_store;  // { valid bit, 14 bit tag store }
	    logic [cache_size-1:0][word_wid-1:0] data_store;
	    
	    always_ff @(posedge clk_i) begin
		if(tag_store[addr_i[17:8]] == addr_i[31:18]) begin
		    hit <= 1'b1;
		    data_o <= data_store[addr_i[17:8]][addr_i[7:3]][addr_i[2:0]];
		end else begin
		    hit <= 1'b0;	    
		end
	    end
      
	end // if (is_associative)      
    endgenerate
 
    
    /*
    always_ff @(posedge clk_i) begin
	case(state)
	  IDLE: begin
	      if(~hit & hit_valid) begin
		  state <= READ_0;		  
	      end      
	  end

	  READ_0: begin
	      ram_data[7:0] <= r_data;
	      state <= READ_1;	      
	  end

	  READ_1: begin
	      ram_data[15:8] <= r_data;
	      state <= READ_2;	      
	  end

	  READ_2: begin
	      ram_data[23:16] <= r_data;
	      state <= READ_3;	      
	  end

	  READ_3: begin
	      ram_data[31:24] <= r_data;
	      state <= READ_0;	      
	  end
	endcase // case (state)
    end // always_ff @ (posedge clk_i)
    */

    
endmodule: Cache















