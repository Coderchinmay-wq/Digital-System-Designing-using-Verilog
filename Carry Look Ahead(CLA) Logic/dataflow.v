module cla(
  input [3:0]A,B,
  input cin;
  output [3:0]sum,
  output Cout);

  wire [3:0]P,G;
  wire C1, C2, C3;
  
  assign P = A^B;
  assign G = A&B;

  assign c1 = G[0] | (P[0] & cin);
  assign c2 = G[1] | (P[1] & c1);
  assign c3 = G[2] | (P[2] & c2);
  assign cout = G[3] | (P[3] & c3);
  
  assign sum[0] = P[0] ^ cin;
  assign sum[1] = P[1] ^ c1;
  assign sum[2] = P[2] ^ c2;
  assign sum[3] = P[3] ^ c3;

endmodule
