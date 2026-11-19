`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2026 07:36:20 AM
// Design Name: 
// Module Name: rpca
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


module rpca(input [3:0]a,b,input cin, output [3:0]s,cout);
wire [3:0]c;
assign s[0]=a[0]^b[0]^cin;
assign c[1]=(a[0]&b[0])|(b[0]&cin)|(a[0]&cin);
assign s[1]=a[1]^b[1]^c[1];
assign c[2]=(a[1]&b[1])|(b[1]&c[1])|(a[1]&c[1]);
assign s[2]=a[2]^b[2]^c[2];
assign c[3]=(a[2]&b[2])|(b[2]&c[2])|(a[2]&c[2]);
assign s[3]=a[3]^b[3]^c[3];
assign cout=(a[3]&b[3])|(b[3]&c[3])|(a[3]&c[3]);
endmodule

module rpca_tb;
reg [3:0]a,b;
reg cin;
wire cout;
wire [3:0]s;
rpca x1(a,b,cin,s,cout);
initial begin
a=0;b=0;cin=0;//initial inpts given to input a,b,cin
#10 a=0;b=0;cin=1;
#10 a=0;b=1;cin=0;
#10 a=0;b=1;cin=1;
#10 a=1;b=0;cin=1;
#10 a=1;b=0;cin=1;
#10 a=1;b=1;cin=0;
#10 a=1;b=1;cin=1;
#10 $finish;
end
initial begin
$monitor("time t=%0t a=%b,b=%b,cin=%b -> cout=%b,s=%b",$time,a,b,cin,s,cout);
end
endmodule