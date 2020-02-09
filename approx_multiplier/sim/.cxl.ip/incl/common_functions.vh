function integer logb2;
    input [31:0] value;
    reg [31:0] value_r;
    begin
        value_r = value - 1;
        for (logb2 = 0; value_r > 0; logb2 = logb2 + 1) begin
            value_r = value_r >> 1;
        end
    end
endfunction

function integer invlogb2;
    input [31:0] value;
    reg [31:0] value_r;
    begin
        value_r = value;
        for (invlogb2 = 1; value_r > 0; value_r = value_r - 1) begin
            invlogb2 = invlogb2<<1;
        end
    end
endfunction
