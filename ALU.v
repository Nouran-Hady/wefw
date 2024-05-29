`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2022 04:09:49 PM
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module half_adder(in, sum, carry); 
input wire [1:0] in;
output reg sum;
output reg carry;
 
 always@(in)
 begin
 
 sum = in[0] ^ in[1];
 carry = in[0] & in[1];
 end
 endmodule
 
module full_adder(in, sum, carry);
input wire[3:0] in;
output sum, carry;
wire[3:0] w;

half_adder h1(w[0], w[1], in[0:1]);
half_adder h2(sum, w[2], w[0], in[3]);
or(carry, w[1], w[2]);
endmodule

module mux_2x1(in, sel, out);
input wire[1:0]in;
input wire sel;
output reg out;

always@(in or sel)
begin
if(sel)
out = in[1];
else
 out = in[0];
 end
endmodule

module mux_4x1(in, sel, out);
input wire [3:0] in;
input wire [1:0] sel;
output reg out;

always@(in or sel)
begin
case(sel)
2'b00 : out = in[0];
2'b01 : out = in[1];
2'b10 : out = in[2];
2'b11 : out = in[3];
endcase
end
endmodule

 
module ALU(

    );
endmodule
