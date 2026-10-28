module bit1c(a,b,i,e,g);
  input a,b;
  output i,e,g;
  assign i = (~a)&b;
  assign e = ~(a^b); // or assign e=((~a)&(~b))|(a&b);
  assign g = a&(~b);
endmodule 
