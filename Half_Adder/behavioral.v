module halfadder(a,b,s,c);
  input a,b;
  output s,c;
  
  reg s,c;
  always@(a,b)
    begin 
      s=a^b;
      c=a&b;
    end
endmodule
