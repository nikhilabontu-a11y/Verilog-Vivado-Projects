`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2026 11:46:17 PM
// Design Name: 
// Module Name: half_sub
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


module half_sub(
    input a,
    input b,
    output D,
    output B
    );
    assign D=(a^b);
    assign B=~a&b;

    endmodule
module half_sub_tb;
reg a,b;
wire D,B;
half_sub x1(a,b,D,B);
initial begin
a=0; b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
#10 $finish;
end
initial begin
$monitor("at time =%t,a=%b,b=%b,D=%b,B=%b",$time,a,b,D,B);
end
endmodule



