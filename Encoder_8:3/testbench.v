module ec83tb();
  reg [7:0]i;
  wire [2:0]y;
  ec83 uut (i,y);
  initial begin
    i = 8'b00000001;
    #10 i = 8'b00000010;
    #10 i = 8'b00000100;
    #10 i = 8'b00001000;
    #10 i = 8'b00010000;
    #10 i = 8'b00100000;
    #10 i = 8'b01000000;
    #10 i = 8'b10000000;
    #10
    $stop;
  end
endmodule


module encoder83tb();
 reg d0, d1, d2, d3, d4, d5, d6, d7;
 wire q2, q1, q0;
   encoder83 uut ( d0,d1,d2,d3,d4,d5,d6,d7,q2,q1,q0);

    initial begin
        d0=1; d1=0; d2=0; d3=0; d4=0; d5=0; d6=0; d7=0; #10;
        d0=0; d1=1; d2=0; d3=0; d4=0; d5=0; d6=0; d7=0; #10;
        d0=0; d1=0; d2=1; d3=0; d4=0; d5=0; d6=0; d7=0; #10;
        d0=0; d1=0; d2=0; d3=1; d4=0; d5=0; d6=0; d7=0; #10;
        d0=0; d1=0; d2=0; d3=0; d4=1; d5=0; d6=0; d7=0; #10;
        d0=0; d1=0; d2=0; d3=0; d4=0; d5=1; d6=0; d7=0; #10;
        d0=0; d1=0; d2=0; d3=0; d4=0; d5=0; d6=1; d7=0; #10;
        d0=0; d1=0; d2=0; d3=0; d4=0; d5=0; d6=0; d7=1; #10;
        $stop;
    end
endmodule
