module bit2cmptb();
reg A0,A1,B0,B1;
wire E, G, L;
bit2cmp uut (A0,A1,B0,B1,E,G,L);
begin
initial A0=0;
initial B0=0;
initial A1=0;
initial B1=0;
always #10 A0=A0+1;
always #20 B0=B0+1;
end
endmodule
