`timescale 1ns / 1ps

module data_cache_tb();
    logic [63:0] wr_data = 64'b0;
    logic [63:0] rd_data;
    logic [63:0] addr;
    logic    rd_en = 1'b1;
    logic    wr_en = 1'b0;
    logic    rst = 1'b1;
    logic    clk = 1'b0;

    always #1 clk <= ~clk;

    data_cache data_cache(.clk_i(clk), .wr_en_i(wr_en), .rd_en_i(rd_en), .rst_i(rst), .addr_i(addr), .data_i(wr_data), .data_o(rd_data));
    
    initial begin
  $readmemh("ram.dat", data_cache.ram_r);
  rd_en = 1'b1;
  rst = 1'b0;
  addr = 64'b0;
  #2 addr = 64'b00100000000;
  #2 addr = 64'b01000000000;
  #2 addr = 64'b0;
  #2 addr = 64'b01100000000;
  #2 addr = 64'b10000000000;
  #2 addr = 64'b01000000000;
  #2 addr = 64'b10100000000;
  #2 addr = 64'b10100000000;
  #2 addr = 64'b11000000000;
    end
endmodule: data_cache_tb

