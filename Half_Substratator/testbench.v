module halfsubtb();
reg a,b;
wire d,b1;
halfsub uut (a,b,d,b1);
begin
initial a=0;
initial b=0;
always #10 a=a+1;
always #20 b=b+1;
end
endmodule
