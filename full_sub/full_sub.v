`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2026 12:04:27 AM
// Design Name: 
// Module Name: full_sub
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


module full_sub(
    input a,
    input b,
    input c,
    output D,
    output B
    );
    assign D=(a==0)?(b^c):~(b^c);
    assign B=(a==0)?(b|c):~(b|c);
endmodule

module full_sub_tb;
reg a,b,c;
wire D,B;
full_sub x1(a,b,c,D,B);
initial begin
a=0;b=0;c=0;
#10 a=0;b=0;c=1;
#10 a=0;b=1;c=0;
#10 a=0;b=1;c=1;
#10 a=1;b=0;c=0;
#10 a=1;b=0;c=1;
#10 a=1;b=1;c=0;
#10 a=1;b=1;c=1;
#10 $finish;
end
initial begin
$monitor("at time %t,a=%b,b=%b,c=%c,D=%b,B=%b",$time,a,b,c,D,B);
end
endmodule

