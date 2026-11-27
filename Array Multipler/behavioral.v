module arraym(
  input [1:0]a,b,
  output reg [3:0]p
);

  reg pp0, pp1, pp2, pp3;
  reg s1, c1;

  always @(*)begin
    pp0 = a[0] & b [0];
    pp1 = a[0] & b [1];
    pp2 = a[1] & b [0];
    pp3 = a[1] & b [1];

    s1 = pp1 ^ pp2;
    c1 = pp1 & pp2;

    p[0] = pp0;
    p[1] = s1;
    p[2] = pp3 ^ c1;
    p[3] = pp3 ^ c1;
  end
endmodule
