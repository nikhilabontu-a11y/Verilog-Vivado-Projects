`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/18/2026 06:43:39 AM
// Design Name: 
// Module Name: demux2op
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


module demux2op(
    input i,
    input e,
    input s0,
    output y0,
    output y1
    );
    assign y0=e&~s0&i;
    assign y1=e&s0&i;
endmodule
module demux2op_tb;
    reg i;
    reg e;
    reg s0;
    wire y0;
    wire y1;
demux2op uut(
    .i(i),
    .e(e),
    .s0(s0),
    .y0(y0),
    .y1(y1)
);
initial begin
    i=0;e=0;s0=0;#10;
    i=0;e=0;s0=1;#10;
    i=0;e=1;s0=0;#10;
    i=0;e=1;s0=1;#10;
    i=1;e=0;s0=0;#10;
    i=1;e=0;s0=1;#10;
    i=1;e=1;s0=0;#10;
    i=1;e=1;s0=1;#10;
    $finish;
end
initial begin
    $monitor("time =%0t,i=%b,e=%b,s0=%b,y0=%b,y1=%b",
    $time,i,s0,e,y0,y1);
    end
endmodule

