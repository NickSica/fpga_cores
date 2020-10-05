// Not my code - moved from the VHDL provided in the research paper
// Area-Optimized Low-Latency Approximate Multipliers for FPGA-Based Hardware Accelerators

module approx_multiplier_4x4 (
    input logic        clk_i;
    input logic [3:0]  a_i;
    input logic [3:0]  b_i;
    output logic [7:0] product_o;
);
    logic [5:0]        partial_prod0_x, partial_prod1_x;
    logic [3:0]        gen0_x, prop0_x, carries0_x, out0_x;
    logic [3:0]        gen1_x, prop1_x, carries1_x, out1_x;
    logic [1:0]        prod1_x;

    prop0_x[3] <= partial_prod1_x[4];
    gen0_x[3] <= partial_prod1_x[5];
    prod[6:3] <= out0_x[3:0];
    prod_o[7] <= carries1[3];
    prod_o[1] <= partial_prod0_x[1];
    
    approx_multiplier_4x2 lut1 (
        .a_i,
  .b_i(b_i[1:0]),
  .prod(partial_prod0_x)
    );

    // partial_prod_1[4] is tied to prop0_x
    // partial_prod_1[5] is tied to gen3
    approx_multiplier_4x2 lut2 (
        .a_i,
  .b_i(b_i[3:2]),
  .prod(partial_prod1_x)
    );

    lut6_2 #(
        .INIT(16'h007F7F80FFEAEA00)
    ) 
    lut_inst10 (  // P5
.I0(partial_prod0_x[2]),
.I1(a[0]),
.I2(b[2]),
.I3(partial_prod0_x[3]),
.I4(partial_prod1_x[1]),
.I5(1'b1),
.O5(gen0_x[0]),
.O6(prop0_x[0])        
    );

    lut6_2 #(
   .INIT(16'h6666666688888888)
       )
lut_inst11 (
  .I0(partial_prod0_x[4]),
  .I1(partial_prod1_x[2]),
  .I2(1'b1),
  .I3(1'b1),
  .I4(1'b1),
  .I5(1'b1),
  .O5(gen0_x[1]),
  .O6(prop0_x[1])
  );
  
lut6_2 #(
       .INIT(16'h6666666688888888)
)
lut_inst12 (
  .I0(partial_prod0_x[5]),
  .I1(partial_prod1_x[3]),
  .I2(1'b1),
  .I3(1'b1),
  .I4(1'b1),
  .I5(1'b1),
  .O5(gen0_x[2]),
  .O6(prop0_x[2])
  );


carry4 carry_inst1 (
  .DI(gen0_x),
  .S(prop0_x),
  .O(out_0_x),
  .CO(carries1_x),
  .CI(1'b0),
  .CYINIT(1'b0)
  );

   prod_o[6:3] <= out0_x[3:0];
   prod_o[7]   <= carries1_x[3];
   prod_o[1]   <= partial_prod0_x[1];

  // P1 and P2
  lut6_2 #(
      .INIT(16'h5FA05FA088888888)
  ) 
   lut_inst14 (
         .I0(a_i[0]),
         .I1(b_i[0]),
         .I2(b_i[2]),
         .I3(partial_prod0_x[2]),
         .I4(1'b1),
         .I5(1'b1),
         .O5(prod_o[0]),
         .O6(prod_o[2])


    );
        
endmodule: approx_multiplier_4x4
