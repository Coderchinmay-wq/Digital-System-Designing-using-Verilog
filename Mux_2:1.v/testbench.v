module mux21tb();
  reg [1:0]i;
  reg s;
  reg y;
  mux21 uut(i,s,y);
  begin
    initial s = 0;
    initial i = 0;
    always #10 s = s+1;
    always #10 i = i+1;
  end
endmodule
