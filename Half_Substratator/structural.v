module halfsub(a,b,d,bout);
input a,b;
output d, bout;
xor (d,a,b);
and (bout,~a,b);
endmodule
