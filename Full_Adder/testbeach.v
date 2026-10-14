module fulladdertb();
reg a,b,c;
wire s,cout;
fulladder uut (a,b,c,s,cout);
 begin
initial a=0; 
initial b=0; 
initial c=0; 
always #10 a=a+1;
always #20 b=b+1;
always #30 c=c+1;
end
endmodule
