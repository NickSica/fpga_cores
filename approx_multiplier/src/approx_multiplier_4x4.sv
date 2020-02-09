module approx_multiplier_4x4 (
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
    logic [5:0] partial_prod_0 = 6'b0;
    logic [5:0] partial_prod_1 = 6'b0;
    logic [3:0] carry_gen      = 4'b0;
    logic [3:0] prop 	       = 4'b0;
   
    LUT6_2 #(.INIT(C_INIT_VALUES[0])) lut0 (
	    .I0(a_i[0]),
	    .I1(a_i[1]),
	    .I2(a_i[2]),
	    .I3(b_i[0]),
	    .I4(b_i[1]),
	    .I5(1),
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
	    .I5(1),
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
	    .I4(1),
	    .I5(1),
	    .O5(product_o[0]),
	    .O6(product_o[2])
    );

    LUT6_2 #(.INIT(C_INIT_VALUES[5])) lut8 (
	    .I0(partial_prod_0[2]),
	    .I1(a_i[0]),
	    .I2(b_i[2]),
	    .I3(partial_prod_0[3]),
	    .I4(partial_prod_1[1]),
	    .I5(1),
	    .O5(carry_gen[0]),
	    .O6(prop[0])
    );

    LUT6_2 #(.INIT(C_INIT_VALUES[6])) lut9 (
	    .I0(partial_prod_0[4]),
	    .I1(partial_prod_1[2]),
	    .I2(1),
	    .I3(1),
	    .I4(1),
	    .I5(1), 
  	    .O5(carry_gen[1]),
	    .O6(prop[1])
    );

    LUT6_2 #(.INIT(C_INIT_VALUES[6])) lut10 (
	    .I0(partial_prod_0[5]),
	    .I1(partial_prod_1[3]),
	    .I2(1),
	    .I3(1),
	    .I4(1),
	    .I5(1),
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

    always product_o[0] <= partial_prod_0[1];

    genvar i;
    generate
	for(i = 2; i <= 5; i++) begin : g_prod_low
	    always product_o[i] <= partial_prod_0[i] + partial_prod_1[i - 2];
	end

	for(i = 6; i <= 7; i++) begin : g_prod_high
	    always product_o[i] <= partial_prod_1[i - 2];
	end
    endgenerate

endmodule: approx_multiplier_4x4









