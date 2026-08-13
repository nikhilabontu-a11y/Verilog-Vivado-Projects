`timescale 1ns/1ps
module fulladder(
    input a,
    input b,
    input c,
    output s,
    output cout
);
    assign s=a^b^c;
    assign cout=(a&b)|(b&c)|(c&a);
endmodule 

module fulladder_tb;
    reg a;
    reg b;
    reg c;
    
    wire s;
    wire cout;
fulladder uut(
    .a(a),
    .b(b),
    .c(c),
    .s(s),
    .cout(cout)
);
initial begin
    a=0; b=0; c=0; #10;
    a=0; b=0; c=1; #10;
    a=0; b=1; c=0; #10;
    a=0; b=1; c=1; #10;
    a=1; b=0; c=0; #10;
    a=1; b=0; c=1; #10;
    a=1; b=1; c=0; #10;
    a=1; b=1; c=1; #10;

    $finish;

end
initial begin
    $monitor("time =%0t,a=%b,b=%b,c=%b,s=%b,cout=%b",
    $time,a,b,c,s,cout);
    end
endmodule
    

    