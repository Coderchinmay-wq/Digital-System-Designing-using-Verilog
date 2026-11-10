module ec42(i,y);
  reg [3:0]i;
  wire [1:0]y;
  ec42 uut (i,y);
  begin 
    initial i=0;
    always #10 i = i+1;
  end
endmodule
