module arraym(
  input [1:0]a,b,
  output [3:0]p
);
  
  wire pp0, pp1, pp2, pp3;
  wire s1, c1;
  
  assign pp0 = a[0] & b[0];
  assign pp1 = a[0] & b[1];
  assign pp2 = a[1] & b[0];
  assign pp3 = a[1] & b[1];

  assign s1 = pp1 ^ pp2;
  assign c1 = pp1 & pp2;
  
  assign p[0] = pp0;
  assign p[1] = s1;
  assign p[2] = pp3 ^ c1;
  assign p[3] = pp3 & c1;

endmodule
