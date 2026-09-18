`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2026 08:04:43 AM
// Design Name: 
// Module Name: encoder
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


module encoder(
    input d0,
    input d1,
    input d2,
    input d3,
    output a,
    output b
    );
    assign a=d2|d3;
    assign b=d1|d3;
endmodule

module encoder_tb;
reg d0,d1,d2,d3;
wire a,b;
encoder x1(d0,d1,d2,d3,a,b);
initial begin
d0=0;d1=0;d2=0;d3=0;
#10 d0=0;d1=0;d2=0;d3=1;
#10 d0=0;d1=0;d2=1;d3=0;
#10 d0=0;d1=0;d2=1;d3=1;
#10 d0=0;d1=1;d2=0;d3=0;
#10 d0=0;d1=1;d2=0;d3=1;
#10 d0=0;d1=1;d2=1;d3=0;
#10 d0=0;d1=1;d2=1;d3=1;
#10 d0=1;d1=0;d2=0;d3=0;
#10 d0=1;d1=0;d2=0;d3=1;
#10 d0=1;d1=0;d2=1;d3=0;
#10 d0=1;d1=0;d2=1;d3=1;
#10 d0=1;d1=1;d2=0;d3=0;
#10 d0=1;d1=1;d2=0;d3=1;
#10 d0=1;d1=1;d2=1;d3=0;
#10 d0=1;d1=1;d2=1;d3=1;
#10 $finish;
end
initial begin
$monitor("at time %t,d0=%b,d1=%b,d2=%b,d3=%b,a=%b,b=%b,",$time,d0,d1,d2,d3,a,b);
end
endmodule