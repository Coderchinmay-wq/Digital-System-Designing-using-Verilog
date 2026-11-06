module d24tb();
  reg [1:0]i;
  wire [3:0]y;
  d24 uut (i,y);
  begin
    initial i = 0;
    always #20 i = i+1;
  end
endmodule
