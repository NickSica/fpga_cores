module approx_multiplier_4x4 (
	input logic       clk_i,
	input logic [3:0] a_i,
	input logic [3:0] b_i,
	output logic [7:0] product_o
);
    localparam logic [63:0] C_INIT_VALUES [0:6] = '{ 64'hB4CCF00066AACC00, 
					      64'hC738F0F0FF000000, 
					      64'h07C0FF0000000000, 
					      64'hF800000000000000, 
					      64'h5FA05FA088888888, 
					      64'h007F7F80FF808000,
					      64'h6666666688888880 };
    logic 		    prod_0;
    logic 		    prod_2;
    logic [5:0] 	    partial_prod_0;
    logic [5:0] 	    partial_prod_1;
    logic [3:0] 	    carry_gen;
    logic [3:0] 	    prop;
   
    LUT6_2 #(.INIT(C_INIT_VALUES[0])) lut0 (
	    .I0(a_i[0]),
	    .I1(a_i[1]),
	    .I2(a_i[2]),
	    .I3(b_i[0]),
	    .I4(b_i[1]),
	    .I5(1'b1),
	    .O5(partial_prod_0[1]),
	    .O6(partial_prod_0[2])
    );

    LUT6   #(.INIT(C_INIT_VALUES[1])) lut1 (
	    .I0(a_i[0]),
	    .I1(a_i[1]),
	    .I2(a_i[2]),
	    .I3(a_i[3]),
	    .I4(b_i[0]),
	    .I5(b_i[1]),
	    .O(partial_prod_0[3])
    );

    LUT6   #(.INIT(C_INIT_VALUES[2])) lut2 (
	    .I0(a_i[0]),
	    .I1(a_i[1]),
	    .I2(a_i[2]),
	    .I3(a_i[3]),
	    .I4(b_i[0]),
	    .I5(b_i[1]),
	    .O(partial_prod_0[4])
    );

    LUT6   #(.INIT(C_INIT_VALUES[3])) lut3 ( 
	    .I0(a_i[0]),
	    .I1(a_i[1]),
	    .I2(a_i[2]),
	    .I3(a_i[3]),
	    .I4(b_i[0]),
	    .I5(b_i[1]),
	    .O(partial_prod_0[5])
    );

    LUT6_2 #(.INIT(C_INIT_VALUES[0])) lut4 (
	    .I0(a_i[0]),
	    .I1(a_i[1]),
	    .I2(a_i[2]),
	    .I3(b_i[2]),
	    .I4(b_i[3]),
	    .I5(1'b1),
	    .O5(partial_prod_1[1]),
	    .O6(partial_prod_1[2])
    );
    
    LUT6   #(.INIT(C_INIT_VALUES[1])) lut5 ( 
	    .I0(a_i[0]),
	    .I1(a_i[1]),
	    .I2(a_i[2]),
	    .I3(a_i[3]),
	    .I4(b_i[2]),
	    .I5(b_i[3]),
	    .O(partial_prod_1[3])
    );

    LUT6   #(.INIT(C_INIT_VALUES[3])) lut6 (
	    .I0(a_i[0]),
	    .I1(a_i[1]),
	    .I2(a_i[2]),
	    .I3(a_i[3]),
	    .I4(b_i[2]),
	    .I5(b_i[3]),
	    .O(carry_gen[3])
    );

    LUT6_2 #(.INIT(C_INIT_VALUES[4])) lut7 (
	    .I0(a_i[0]),
	    .I1(b_i[0]),
	    .I2(b_i[2]),
	    .I3(partial_prod_0[2]),
	    .I4(1'b1),
	    .I5(1'b1),
	    .O5(prod_0),
	    .O6(prod_2)
    );

    LUT6_2 #(.INIT(C_INIT_VALUES[5])) lut8 (
	    .I0(partial_prod_0[2]),
	    .I1(a_i[0]),
	    .I2(b_i[2]),
	    .I3(partial_prod_0[3]),
	    .I4(partial_prod_1[1]),
	    .I5(1'b1),
	    .O5(carry_gen[0]),
	    .O6(prop[0])
    );

    LUT6_2 #(.INIT(C_INIT_VALUES[6])) lut9 (
	    .I0(partial_prod_0[4]),
	    .I1(partial_prod_1[2]),
	    .I2(1'b1),
	    .I3(1'b1),
	    .I4(1'b1),
	    .I5(1'b1), 
  	    .O5(carry_gen[1]),
	    .O6(prop[1])
    );

    LUT6_2 #(.INIT(C_INIT_VALUES[6])) lut10 (
	    .I0(partial_prod_0[5]),
	    .I1(partial_prod_1[3]),
	    .I2(1'b1),
	    .I3(1'b1),
	    .I4(1'b1),
	    .I5(1'b1),
	    .O5(carry_gen[2]),
	    .O6(prop[2])
    );

    LUT6   #(.INIT(C_INIT_VALUES[2])) lut11 (
	    .I0(a_i[0]),
	    .I1(a_i[1]),
	    .I2(a_i[2]),
	    .I3(a_i[3]),
	    .I4(b_i[2]),
	    .I5(b_i[3]),
	    .O(prop[3])
    );

    always_ff @(posedge clk_i)
    p_assign_products : begin
	product_o[0] <= prod_0;
	product_o[1] <= partial_prod_0[1];
	product_o[2] <= prod_2;	
	
    	// used to be i = 2
        for(int i = 3; i <= 5; i++) begin 
	    product_o[i] <= partial_prod_0[i] + partial_prod_1[i - 2];
        end
	
	for(int i = 6; i <= 7; i++) begin
            product_o[i] <= partial_prod_1[i - 2];
	end
    end

endmodule: approx_multiplier_4x4









