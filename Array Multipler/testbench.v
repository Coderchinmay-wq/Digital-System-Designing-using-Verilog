module arraymtb();
  reg [1:0]a,b;
  wire [3:0]p;

  arraym uut(a,b,p);
  begin
    initial a = 0;
    initial b = 0;
    always #10 a = a+1;
    always #10 b = b+1;

  end
endmodule
