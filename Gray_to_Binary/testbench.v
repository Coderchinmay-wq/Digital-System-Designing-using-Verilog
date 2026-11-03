module gbtb();
  reg [3;0]g;
  wire [3:0]b;
  gb uut (g,b);
  begin g = 0;
    initial g = 0;
    always #10 g = g+1;
  end
endmodule
