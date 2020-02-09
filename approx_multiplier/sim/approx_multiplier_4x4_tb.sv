module approx_multiplier_4x4_tb ();
    logic clk                = 1'b1;
    logic rst                = 1'b1;
    logic [3:0] multiplier   = 4'b0;
    logic [3:0] multiplicand = 4'b0;
    logic [7:0] product;    
    
    always #100 clk <= ~clk;

    initial begin
	#100 rst <= 1'b0;
	for(int i = 0; i <= 15; i++) begin 
	    #100 multiplier   <= i;
	    multiplicand <= i;	    
	end
     end

    approx_multiplier_4x4 approx_mult(
        a_i(multiplier),
        b_i(multiplicand),
        product_o(product)
    );
    
    
endmodule : approx_multiplier_4x4_tb
