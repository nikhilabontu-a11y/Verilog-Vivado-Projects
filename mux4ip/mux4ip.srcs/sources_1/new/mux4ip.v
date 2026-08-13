`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/13/2026 12:31:57 AM
// Design Name: 
// Module Name: mux4ip
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


module mux4ip(
    input i0,
    input i1,
    input i2,
    input i3,
    input s1,
    input s0,
    output y
    );
    assign y=(i0&~s1&~s0)|(i1&~s1&s0)|(i2&s1&~s0)|(i3&s1&s0);
    
endmodule

module mux4ip_tb;
    reg i0;
    reg i1;
    reg i2;
    reg i3;
    reg s1;
    reg s0;
    
    wire y;
mux4ip uut(
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .s1(s1),
    .s0(s0),
    .y(y)
);
initial begin
    i0=0;
    i1=1;
    i2=0;
    i3=1;
    s1=0;s0=0;#10;
    s1=0;s0=1;#10;
    s1=1;s0=0;#10;
    s1=1;s0=1;#10;
    $finish;
end
initial begin
    $monitor("time = %0t,i0=%b,i1=%b,i2=%b,i3=%b,s1=%b,s0=%b",$time,i0,i1,i2,i3,s1,s0);
end
endmodule

    
    
    

