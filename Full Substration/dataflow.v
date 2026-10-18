module fullsub(a,b,c,b1,d);
input a,b,c;
output b1,d;
assign b1=(~a&c)|(~a&b)|(b&c);
assign d=a^b^c; 
endmodule
