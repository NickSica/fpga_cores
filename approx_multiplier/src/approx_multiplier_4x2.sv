module approx_multiplier_4x2 (
    input logic [3:0]  a_i;
    input logic [1:0]  b_i;
    output logic [5:0] prod_o;
);

    // P1 and P2
    lut6_2 #(
       .INIT(16'hB4CCF00066AACC00)
       )
    lut_inst1
      (
    .I0(a[0]),
    .I1(a[1]),
    .I2(a[2]),
    .I3(b[0]),
    .I4(b[1]),
    .I5('1'),
    .O6(prod[1]),
    .O6(prod[2])
);

lut6_2 // P3
#(.INIT(16'hC738F0F0FF000000))
    lut_inst2
(
    .I0(a[0]),
    .I1(a[1]),
    .I2(a[2]),
    .I3(a[3]),
    .I4(b[0]),
    .I5(b[1]),
    .O6(prod[3])
);

// P4
lut6_2
#(.INIT(16'h07C0FF0000000000))
    lut_inst3
(
    .I0(a[0]),
    .I1(a[1]),
    .I2(a[2]),
    .I3(a[3]),
    .I4(b[0]),
    .I5(b[1]),
    .O6(prod[4])
);

    // P5
    lut6_2 #(
    .INIT(16'hF800000000000000)
)
    lut_inst4 (
    .I0(a[0]),
    .I1(a[1]),
    .I2(a[2]),
    .I3(a[3]),
    .I4(b[0]),
    .I5(b[1]),
    .O6(prod[5])
);

prod[0] <= '0';

endmodule : approx_multiplier_4x2;
