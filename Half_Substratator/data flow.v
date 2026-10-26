module halfsub(a,b,d,b1);
input a,b;
output d,b1;
assign b1=~a&b;
assign d=a^b;
endmodule
