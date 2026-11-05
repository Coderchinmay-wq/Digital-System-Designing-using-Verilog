module mx41(
  input [3:0]i,
  input [3:0]s'
  output y
);
  wire [1:0]ns;
  wire w0, w1, w2, w3;

  not (ns[0], s[0]);
  not (ns[1], s[1]);
  and (w0, i[0], ns[1], ns[0]);
  and (w0, i[0], ns[1], s[0]);
  and (w0, i[0], s[1], ns[0]);
  and (w0, i[0], s[1], s[0]);

  or (y, w0, w1, w2, w3);
endmodule
