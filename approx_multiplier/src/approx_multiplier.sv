module approx_multiplier4x4(input logic [3:0] a_i, input logic [3:0] b_i, output logic [7:0] product_o);
    const logic [0:6] INIT_VALUES [63:0] = [ 64'hB4CCF00066AACC00, 
					     64'hC738F0F0FF000000, 
					     64'h07C0FF0000000000, 
					     64'hF800000000000000, 
					     64'h5FA05FA088888888, 
					     64'h007F7F80FF808000,
					     64'h6666666688888880 ];

    

    logic [5:0] partial_prod_0 = 6'b0;
    logic [5:0] partial_prod_1 = 6'b0;
    
    LUT6_2 #(.INIT(INIT_VALUES[0]));
    LUT6   #(.INIT(INIT_VALUES[1]));
    LUT6   #(.INIT(INIT_VALUES[2]));
    LUT6   #(.INIT(INIT_VALUES[3]));
    LUT6_2 #(.INIT(INIT_VALUES[0]));
    LUT6   #(.INIT(INIT_VALUES[1]));
    LUT6   #(.INIT(INIT_VALUES[3]));
    LUT6_2 #(.INIT(INIT_VALUES[4]))(.I0(), .I1(), .I2(), .I3(), .I4(), .I5(), .O0(), .O1());
    LUT6_2 #(.INIT(INIT_VALUES[5]))();
    LUT6_2 #(.INIT(INIT_VALUES[6]))();
    LUT6_2 #(.INIT(INIT_VALUES[6]))();    
    LUT6   #(.INIT(INIT_VALUES[2]))();
    


endmodule: approx_multiplier4x4



