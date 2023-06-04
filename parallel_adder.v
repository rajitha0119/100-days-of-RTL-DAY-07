`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2023 10:41:32
// Design Name: 
// Module Name: parallel_adder
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


module full_adder(a,b,ci,o,co);
input a,b,ci;
output o,co;
assign o=a^b^ci;
assign co=a&b|b&ci|ci&a;
endmodule
module parallel_adder(r,s,ci,out,co);
input [3:0]r,s;
input ci;
output [3:0]out,co;
full_adder fa1(r[0],s[0],ci,out[0],co[0]);
full_adder fa2(r[1],s[1],co[0],out[1],co[1]);
full_adder fa3(r[2],s[2],co[1],out[2],co[2]);
full_adder fa4(r[3],s[3],co[2],out[3],co[3]);


endmodule
