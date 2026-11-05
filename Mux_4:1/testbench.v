module mx41tb;
  reg [3:0]i;
  reg [3:0]s;
  wire y;
  mx41 uut (i,s,y);
  initial begin
    I=4'b0001; S = 2'b00; #10;
    I=4'b0010; S = 2'b01; #10;
    I=4'b0100; S = 2'b10; #10;
    I=4'b1000; S = 2'b11; #10;
    $finish;
  end
endmodule
