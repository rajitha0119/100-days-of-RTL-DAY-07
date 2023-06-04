`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2023 10:56:36
// Design Name: 
// Module Name: parallel_adder_tb
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


module parallel_adder_tb();
wire [3:0]co;
wire [3:0]out;
reg [3:0]r,s;
reg ci;
parallel_adder bbc(.co(co),.out(out),.r(r),.s(s),.ci(ci));
initial begin
$monitor(r,s,co,out);
r=4'b0010;
s=4'b0001;
ci=0;
end


endmodule
