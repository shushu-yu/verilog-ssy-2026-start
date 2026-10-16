`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/10/15 16:29:11
// Design Name: 
// Module Name: tb_half_adder
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

module tb_half_adder(
    );
  reg x, y;
wire z, w;
half_adder u1(.a(x),.b(y),.sum(z),.cout(w));
initial begin
x=1;y=1;#10;
x=1;y=0;#10;
x=0;y=1;#10;
x=0;y=0;#10;
$finish;
end
endmodule

