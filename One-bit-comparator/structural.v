module bit1c(a,b,l,e,g);
  input a,b;
  output l,e,g;
  wire t;
  and q1(g,a,~b);
  and q2(l,~a,b);
  xor q3(t,~a,b);
  not q4(e,t);
endmodule
