`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2026 01:23:34 AM
// Design Name: 
// Module Name: alu
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


module alu(input [3:0]a,b,output[3:0]y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10);
assign y0=a+b;
assign y1=a-b;
assign y2=a>>2;
assign y3={2'b00,a[3:2]};
assign y4={a[1:0],2'b00};
assign y5=a<<1;
assign y6=a&b;
assign y7=a|b;
assign y8=~(a&b);
assign y9=a^b;
assign y10=~(a^b);

endmodule 

module alu_tb;
reg [3:0]a,b;
wire [3:0]y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10;
alu x1(a,b,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10);
initial begin
a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=1;
#10 a=1;b=1;
#10 $finish;
end
initial begin
$monitor("at time %t,a=%b,b=%b->y0=%b,y1=%b,y2=%b,y3=%b,y4=%b,y5=%b,y6=%b,y7=%b,y8=%b,y9=%b,y10=%b",$time,a,b,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10);
end 
endmodule






 

