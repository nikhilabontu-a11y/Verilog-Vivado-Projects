`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2026 06:03:04 AM
// Design Name: 
// Module Name: mux8ip
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


module mux8ip(
    input i0,
    input i1,
    input i2,
    input i3,
    input i4,
    input i5,
    input i6,
    input i7,
    input s2,
    input s1,
    input s0,
    output y
    );
    assign y=(i0&~s2&~s1&~s0)|
    (i1&~s2&~s1&s0)|
    (i2&~s2&s1&~s0)|
    (i3&~s2&s1&s0)|
    (i4&s2&~s1&~s0)|
    (i5&s2&~s1&s0)|
    (i6&s2&s1&~s0)|
    (i7&s2&s1&s0);
endmodule

module mux8ip_tb;
    reg i0;
    reg i1;
    reg i2;
    reg i3;
    reg i4;
    reg i5;
    reg i6;
    reg i7;
    reg s2;
    reg s1;
    reg s0;
    wire y;
mux8ip uut(
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .i4(i4),
    .i5(i5),
    .i6(i6),
    .i7(i7),
    .s2(s2),
    .s1(s1),
    .s0(s0),
    .y(y)
 );
 initial begin
    i0=0;
    i1=1;
    i2=0;
    i3=0;
    i4=1;
    i5=0;
    i6=1;
    i7=0;
    
    s2=0;s1=0;s0=0;#10;
    s2=0;s1=0;s0=1;#10;
    s2=0;s1=1;s0=0;#10;
    s2=0;s1=1;s0=1;#10;
    s2=1;s1=0;s0=0;#10;
    s2=1;s1=0;s0=1;#10;
    s2=1;s1=1;s0=0;#10;
    s2=1;s1=1;s0=1;#10;
    $finish;
end
initial begin
    $monitor ("time=%0t,y0=%b,y1=%b,y2=%b,y3=%b,y4=%b,y5=%b,y6=%b,y7=%b,s2=%b,s1=%b,s0=%b,y=%b",
    $time,i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0,y);
    end
endmodule
 
    
