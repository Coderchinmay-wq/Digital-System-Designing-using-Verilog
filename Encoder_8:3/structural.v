module encoder83(
input d0,d1,d2,d3,d4,d5,d6,d7,
output q2,q1,q0);
or (q2,   d4, d5, d6, d7);                  
or (q1, d2, d3, d6, d7);
or (q0,   d1, d3, d5, d7);

endmodule
