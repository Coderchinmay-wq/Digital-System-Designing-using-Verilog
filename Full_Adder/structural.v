module fulladder(
  input a,
    input b,
    input cin,
    output sum,
    output carry);

wire w1, w2, w3, w4;

xor (w1, a, b);
xor (sum, w1, cin);

and (w2, a, b);
and (w3, b, cin);
and (w4, cin, a);
or  (carry, w2, w3, w4);
endmodule
