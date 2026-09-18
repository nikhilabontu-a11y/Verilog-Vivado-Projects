`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2026 07:40:14 AM
// Design Name: 
// Module Name: decoder
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


module decoder(
    input a,
    input b,
    output d0,
    output d1,
    output d2,
    output d3
    );
    
    assign d0=~a&~b;
    assign d1=~a&b;
    assign d2=a&~b;
    assign d3=a&b; 
endmodule
module decoder_tb;
reg a;
reg b;
wire d0,d1,d2,d3;
decoder x1(a,b,d0,d1,d2,d3);
initial begin
a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
#10 $finish;
end
initial begin
$monitor("at time %t,a=%b,b=%b,d0=%b,d1=%b,d2=%b,d3=%b",$time,a,b,d0,d1,d2,d3);
end
endmodule
