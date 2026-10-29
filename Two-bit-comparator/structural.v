module bit2cmp(
  input a1,a0,b1,b0,
  output e,g,l);
  wire g1,g0;
  wire m1,m2;

  xor (xnor1, a1, b1);
  xor (xnor0, a0, b0);
  and (e,xnor1,xnor0);
  and (g1,a1,~b1);
  and (g0,xnor1,a0,~b0);
  or (g,g1, g0);

  and (m1,~a1,b1):
  and (g0,xnor1,~a0,b0);
  or (L,m1,m2);
endmodule
