module bit1cmptb();
reg a,b;
wire g,e,l;
bit1cmp utt (a,b,g,e,l);
begin
initial a=0;
initial b=0;
always #20 a=a+1;
always #10 b=b+1;
end
endmodule
