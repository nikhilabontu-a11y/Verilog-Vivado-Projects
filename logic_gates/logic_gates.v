module logic_gates (
    input  a,
    input  b,

    output y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15
    
);
    assign y0=1'b0;
    assign y1=a&b;
    assign y2=a&(~b);
    assign y3=a;
    assign y4=(~a)&b;
    assign y5=b;
    assign y6=a^b;
    assign y7=a|b;
    assign y8=~(a|b);
    assign y9=~(a^b);
    assign y10=~b;
    assign y11=a|(~b);
    assign y12=~a;
    assign y13=(~a)|b;
    assign y14=~(a&b);
    assign y15=1'b1;
 

endmodule