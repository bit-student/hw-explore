/*
 *  File: Mult1.v
 *  Module: multiplier
 *  Author: Herman Schmit
 *  Date: Dec 22, 1997
 *  
 *  Purpose:
 *  Declare a multiplier with a period of one and latency of four.
 *  Uses the built-in * operator to describe a multiplication.
 *
 *  The ONLY reason this implementation has four registers and the 
 *  four cycle latency is to demonstrate the use of the test harness
 *  for multipliers with latency.  The multiplier operands, a and b, 
 *  are read directly from unregistered input pins.
 */

module multiplier ( rst,
                    clk,
                    a,
                    b,
                    c);
    input rst;
    input clk;
    input [11:0] a,b;
    output reg [23:0] c;
  
  reg [11:0] a_d,b_d; 
    reg [11:0] c_p;
    wire [11:0] c_p_d;
    wire [23:0] c_d;

    
/*    always @(posedge clk or negedge rst)
    begin
        if(!rst)
        begin
            c <= 12'h000;
        end
        else
        begin
            c_p  <= c_p_d;
            c <= c_d;
        end
    end
    assign c_p_d[10:0] = a[10:0] ^ b[11:1];
    assign c_p_d[11] = b[0];
    assign c_d = c_p * b; */
 always @(posedge clk or negedge rst)
begin
   if(!rst)
   begin
       a_d <= 12'h000;
       b_d <= 12'h000;
       c <= 24'h000;
   end
   else
   begin
       a_d <= a;
       b_d <= b;
       c <= c_d;
   end
end
assign c_d = a_d * b_d;   
    //always @(*)
    //begin
    //    c_p = a_d * b_d;
    //end
    
   
endmodule /* multiplier */
   

