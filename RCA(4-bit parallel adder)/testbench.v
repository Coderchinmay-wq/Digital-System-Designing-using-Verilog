module rcatb();
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0]sum;
wire cout;
rca uut (a,b,cin, sum,cout);
  begin
 
  initial a=4'b0000;
  initial b=4'b0000;
  initial cin=1;
  
 always #10 a=a+1;
 always #20 b=b+1;
 end
endmodule
