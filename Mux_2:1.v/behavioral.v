module mx2(
  input wire s,
  input wire m1, m2,
  output reg y);
  always@ (m1,m2,s)
    begin
      y = (~s&m1)|(s&m2);
    end
endmodule
