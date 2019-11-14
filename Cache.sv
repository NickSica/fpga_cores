module Cache #(is_associative = 0, cache_size = 1024, associativity = 2, word_num = 32, data_wid = 64) 
   (input en_i, clk_i,
    input logic [31:0] addr_i,
    output logic [7:0] data_o);
   
   typedef logic [word_num-1:0][data_wid/8-1:0][7:0] block_t;
   typedef block_t [cache_size-1:0] data_cache_t;
   
   logic hit;
   
   initial begin
      assert(data_wid % 8 != 0) begin
	 $error("Data width is not a multiple of 8!");
      end
   end
     
   generate
   if(is_associative) begin
      logic [associativity - 1:0][cache_size-1:0][14:0] tag_store;  // { valid bit, 14 bit tag store }
      data_cache_t [associativity - 1:0] data_store;
      
        
      always_ff @(posedge clk_i) begin
	 tag_store[0][addr_i[31:22]] <= addr_i[21:8];
      
      end
   end else begin
      logic [associativity - 1:0][cache_size-1:0][14:0] tag_store;  // { valid bit, 14 bit tag store }
      data_cache_t data_store;

      // Cache replacement
      always_ff @(posedge clk_i) begin
	 
      end

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
   
endmodule: Cache



