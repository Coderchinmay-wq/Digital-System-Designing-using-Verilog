module bgtb();
  reg [3:0]bin;
  wire [3:0]gout;
  bg uut (bin,gout);
  begin
    initial bin = 4'b0000;
    always#20 bin = bin+1;
  end 
endmodule
