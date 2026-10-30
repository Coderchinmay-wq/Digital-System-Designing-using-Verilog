module twobitc(a0,a1,b0,b1,g,l,e);
  input a0,a1,b0,b1;
  output g,l,e;
  assign g = (a1&(~b1))|(a0&(~b1)&(~b0))|(a1&a0&(~b0));
  assign l = ((~a1)&b1)|((~a0)&b1&b0)|((~a1)&(~a0)&b0);
  assign e = (~(a0^b0))&(~(a1^b1));
endmodule
