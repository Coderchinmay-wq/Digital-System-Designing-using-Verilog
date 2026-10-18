module fullsubtb();
reg a,b,c;
wire b1,d;
fullsub uut (a,b,c,b1,d);
begin
initial a=0;
initial b=0;
initial c=0;
always #10 a=a+1;
always #20 b=b+1;
always #30 c=c+1;
end
endmodule
