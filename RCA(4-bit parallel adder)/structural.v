module rca (a, b, cin, s, cout);
  input [3:0] a, b;
  input cin;
  output [3:0] s;
  output cout;
  wire [2:0] c;

  fulladder x1(a[0], b[0], cin,  s[0], c[0]);
  fulladder x2(a[1], b[1], c[0], s[1], c[1]);
  fulladder x3(a[2], b[2], c[1], s[2], c[2]);
  fulladder x4(a[3], b[3], c[2], s[3], cout);
endmodule


module fulladder(a, b, cin, s, cout);
  input a, b, cin;
  output s, cout;

  assign s = a ^ b ^ cin;                  
  assign cout = (a & b) | (b & cin) | (cin & a);  
endmodule
