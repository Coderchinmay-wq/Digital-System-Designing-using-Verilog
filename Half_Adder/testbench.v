module halfaddertb();
reg a,b;
wire s,c;
halfadder uut (a,b,s,c);
begin
initial a=0;
initial b=0;
always #10 a=a+1;
always #20 b=b+1;
end
endmodule
