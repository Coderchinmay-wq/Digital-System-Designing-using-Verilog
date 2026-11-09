module dc38(
  input a, b, c, en,
  output y0, y1, y2,y3,y4,y5,y6,y7
);
  wire na, nb, nc;
  not (na, a);
  not (nb, b);
  not (nc, c);

  and (y0, na, nb, nc, en);
  and (y1, na, nb, c, en);
  and (y2, na, b, nc, en);
  and (y3, na, b, c, en);
  and (y4, a, nb, nc, en);
  and (y5, a, nb, c, en);
  and (y6, a, b, nc, en);
  and (y7, a, b, c, en);
  
endmodule
