`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2026 11:52:16 PM
// Design Name: 
// Module Name: twobitcomparator
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


module twobitcomparator(
    input A1,
    input A0,
    input B1,
    input B0,
    input AgtB,
    input AltB,
    input AeqB
    );
   assign AgtB=(A1&~B1)|(A0&~B1&~B0)|(A1&A0&~B0);
   assign AltB=(~A1&B1)|(~A0&~A1&B0)|(~A0&B1&B0);
   assign AeqB=(A1~^B1)&(A0~^B0);
endmodule

module twobitcomparator_tb;
    reg A1;
    reg A0;
    reg B1;
    reg B0;
    wire AgtB;
    wire AltB;
    wire AeqB;
twobitcomparator uut(
    .A1(A1),
    .A0(A0),
    .B1(B1),
    .B0(B0),
    .AgtB(AgtB),
    .AltB(AltB),
    .AeqB(AeqB)
);
initial begin
    A1=0;A0=0;B1=0;B0=0;#10;
    A1=0;A0=0;B1=0;B0=1;#10;
    A1=0;A0=0;B1=1;B0=0;#10;
    A1=0;A0=0;B1=1;B0=1;#10;
    A1=0;A0=1;B1=0;B0=0;#10;
    A1=0;A0=1;B1=0;B0=1;#10;
    A1=0;A0=1;B1=1;B0=0;#10;
    A1=0;A0=1;B1=1;B0=1;#10;
    A1=1;A0=0;B1=0;B0=0;#10;
    A1=1;A0=0;B1=0;B0=1;#10;
    A1=1;A0=0;B1=1;B0=0;#10;
    A1=1;A0=0;B1=1;B0=1;#10;
    A1=1;A0=1;B1=0;B0=0;#10;
    A1=1;A0=1;B1=0;B0=1;#10;
    A1=1;A0=1;B1=1;B0=0;#10;
    A1=1;A0=1;B1=1;B0=1;#10;
    $finish;
end
initial begin
    $monitor("time=%0t,A1=%b,A0=%b,B1=%b,B0=%b,AgtB=%b,AltB=%b,AeqB=%b",
    $time,A1,A0,B1,B0,AgtB,AltB,AeqB);
    end
endmodule
        

    
    
   

