module halfadder(
    input a,
    input b,
    output s,
    output c
    );
    assign s=a^b;
    assign c=a&b;
endmodule

module halfadder_tb;
    reg a;
    reg b;
    wire s;
    wire c;
halfadder uut(
    .a(a),
    .b(b),
    .s(s),
    .c(c)
);
initial begin
    a=0;b=0;#10;
    a=0;b=1;#10;
    a=1;b=0;#10;
    a=1;b=1;#10;
    
end
initial begin
    $monitor("time=%0t,a=%b,b=%b,s=%b,c=%b",
    $time,a,b,s,c);
    end
endmodule
    
    
        




  