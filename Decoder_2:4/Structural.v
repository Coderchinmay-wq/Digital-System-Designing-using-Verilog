module d24(i,y);
  input [1:0]i;
  output [3:0]y;

  and (y[0],~i[0],~i[1]);
  and (y[1],~i[0],i[1]);
  and (y[2],i[0],~i[1]);
  and (y[3],i[0],i[1]);
endmodule
