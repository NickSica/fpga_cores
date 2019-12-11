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

module LRU #(cache_type = 0, cache_size = 1024, associativity = 3, word_wid = 64)
    (input logic clk_i, hit_i, valid_i,
     input logic [9:0] 	idx_i,
     output logic 	valid_o,
     output logic [9:0] idx_o);

    //parameter idx_bits = $clog2(cache_size);
    logic [associativity-1:0][10:0] lru_shift_registers;  // bit 10 is a valid bit to make sure the data is valid
    logic [associativity-1:0] 	   reg_equals_idx;
    logic [associativity-1:0] 	   shift_reg_en;

    assign shift_reg_en[associativity-1] = reg_equals_idx[associativity-1];
    genvar i;
    generate
	for(i = associativity-1; i >= 0; i--) begin
	    assign reg_equals_idx[i] = (idx_i != lru_shift_registers[associativity-1][9:0]) & valid_i;
	end
    endgenerate

    always_comb begin
        
        for(int j = associativity-2; j >= 0; j--) begin
            shift_reg_en[j] = shift_reg_en[j+1] & shift_reg_en[j];
        end
    end

    always_ff @(posedge clk_i) begin
	idx_o <= lru_shift_registers[0][9:0];
	lru_shift_registers[associativity-1] <= {1'b1, idx_i};
	valid_o <= ~hit_i & lru_shift_registers[0][10];
	
	for(int j = 0; j < associativity-1; j++) begin
	    if(shift_reg_en[j]) begin
		lru_shift_registers[j] <= lru_shift_registers[j+1];
	    end	    
	end   
    end // always_ff @ (posedge clk_i)
endmodule: LRU





