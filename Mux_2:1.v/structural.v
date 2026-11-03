module mux21(
  input l0,l1,A,
  output z);
  wire nA, w0, w1;

  not (nA,A);
  and (w0,D0,nA);
  and (w1,D1,A);
  or (z, w0, w1);
endmodule
