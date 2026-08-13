`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/12/2026 04:09:45 AM
// Design Name: 
// Module Name: mux2ip
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


module mux2ip(
    input i0,
    input i1,
    input s0,
    output y
    );
    assign y=(~s0&i0)|(s0&i1);
    
endmodule

module mux2ip_tb;
    reg i0;
    reg i1;
    reg s0;
    wire y;
mux2ip uut(
    .i0(i0),
    .i1(i1),
    .s0(s0),
    .y(y)
);
initial begin
    i0=0;i1=0;s0=0;#10;
    i0=0;i1=0;s0=1;#10;
    i0=0;i1=1;s0=0;#10;
    i0=0;i1=1;s0=1;#10;
    i0=1;i1=0;s0=0;#10;
    i0=1;i1=0;s0=1;#10;
    i0=1;i1=1;s0=0;#10;
    i0=1;i1=1;s0=1;#10;
        
    $finish;
end
initial begin
    $monitor("time =%0t,i0=%b,i1=%b,s0=%b,y=%b",
    $time,i0,i1,s0,y);
    end
endmodule
    
    
    
