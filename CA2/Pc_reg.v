`timescale 1ns/1ns
module Pc_reg(clk, rst, pc_in, pc_out);
    input clk, rst;
    input [31:0] pc_in;
    output reg[31:0] pc_out;

    always @(posedge clk, posedge rst) begin
        if(rst)
            pc_out <= 32'b0;
        else
            pc_out <= pc_in;
    end
endmodule