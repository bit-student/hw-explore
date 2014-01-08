`timescale 1ns/1ps
module tb;
reg clk;
reg rst;
reg [11:0] a,b;
wire [23:0] c;
integer clk_prd = 1000; 
initial 
begin
    clk = 0;
    forever #(clk_prd/2) clk= ~clk;
end

initial 
begin
    rst = 0;
    a = 12'h fff;
    b = 12'h fff;
    # 3500 rst = 1;
    a = 12'h 124;
    b = 12'h 321;
    # 3500 
    a = 12'h 008;
    b = 12'h 002;
end

multiplier inst_multiplier( 
                    .rst(rst),
                    .clk(clk),
                    .a(a),
                    .b(b),
                    .c(c));
endmodule
