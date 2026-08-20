`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/20/2026 09:25:20 AM
// Design Name: 
// Module Name: demux8op
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


module demux8op(
    input i,
    input e,
    input s2,
    input s1,
    input s0,
    output y0,
    output y1,
    output y2,
    output y3,
    output y4,
    output y5,
    output y6,
    output y7
    );
    assign y0=i&e&~s2&~s1&~s0;
    assign y1=i&e&~s2&~s1&s0;
    assign y2=i&e&~s2&s1&~s0;
    assign y3=i&e&~s2&s1&s0;
    assign y4=i&e&s2&~s1&~s0;
    assign y5=i&e&s2&~s1&s0;
    assign y6=i&e&s2&s1&~s0;
    assign y7=i&e&s2&s1&s0;
endmodule
module demux8op_tb;
    reg i;
    reg e;
    reg s2;
    reg s1;
    reg s0;
    wire y0;
    wire y1;
    wire y2;
    wire y3;
    wire y4;
    wire y5;
    wire y6;
    wire y7;
demux8op uut(
    .i(i),
    .e(e),
    .s2(s2),
    .s1(s1),
    .s0(s0),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3),
    .y4(y4),
    .y5(y5),
    .y6(y6),
    .y7(y7)
);
integer k;
initial begin 
    {i,e,s2,s1,s0}=5'b00000;
    for(k=0;k<32;k=k+1)
    begin
        {i,e,s2,s1,s0}=k;
        #10;
    end
    $finish;
end
initial begin
    $monitor("time=%0t,i=%b,e=%b,s2=%b,s1=%b,s0=%b,y0=%b,y1=%b,y2=%b,y3=%b,y4=%b,y5=%b,y6=%b,y7=%b",
    $time,i,e,s2,s1,s0,y0,y1,y2,y3,y4,y5,y6,y7);
    end
endmodule
        
    
    


    
    
    
    
    
    
