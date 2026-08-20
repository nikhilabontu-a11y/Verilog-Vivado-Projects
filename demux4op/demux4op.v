`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2026 09:07:20 AM
// Design Name: 
// Module Name: demux4op
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


module demux4op(
    input i,
    input e,
    input s1,
    input s0,
    output y0,
    output y1,
    output y2,
    output y3
    );
    assign y0=e&~s1&~s0;
    assign y1=e&~s1&s0;
    assign y2=e&s1&~s0;
    assign y3=e&s1&s0;
endmodule

module demux4op_tb;
    reg i;
    reg e;
    reg s1;
    reg s0;
    
    wire y0;
    wire y1;
    wire y2;
    wire y3;
demux4op uut(
    .i(i),
    .e(e),
    .s1(s1),
    .s0(s0),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
);
initial begin
    i=0;e=0;s1=0;s0=0;#10;
    i=0;e=0;s1=0;s0=1;#10;
    i=0;e=0;s1=1;s0=0;#10;
    i=0;e=0;s1=1;s0=1;#10;
    i=0;e=1;s1=0;s0=0;#10;
    i=0;e=1;s1=0;s0=1;#10;
    i=0;e=1;s1=1;s0=0;#10;
    i=0;e=1;s1=1;s0=1;#10;
    i=1;e=0;s1=0;s0=0;#10;
    i=1;e=0;s1=0;s0=1;#10;
    i=1;e=0;s1=1;s0=0;#10;
    i=1;e=0;s1=1;s0=1;#10;
    i=1;e=1;s1=0;s0=0;#10;
    i=1;e=1;s1=0;s0=1;#10;
    i=1;e=1;s1=1;s0=0;#10;
    i=1;e=1;s1=1;s0=1;#10;
    $finish;
end
initial begin
    $monitor("time=%0t,i=%b,e=%b,s1=%b,s0=%b,y0=%b,y1=%b,y2=%b,y3=%b",
    $time,i,e,s1,s0,y0,y1,y2,y3);
    end
endmodule
 
 
    
    
    
    
