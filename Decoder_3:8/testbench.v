module dc38tb();
  reg [2:0]i;
  wire [7:0]y;
  dc38 uut (i,y);
  initial begin
    i = 3'b000;
    #10 i = 3'b001;
    #10 i = 3'b010;
    #10 i = 3'b011;
    #10 i = 3'b100;
    #10 i = 3'b101;
    #10 i = 3'b110;
    #10 i = 3'b111;
    #10
    $stop;
  end
endmodule

// use this test bench for structural module code inputs, output and inside initial begin 
 reg a, b, c, en;
 wire y0, y1, y2, y3, y4, y5, y6, y7;

decoder38 uut (a, b, c, en, y0, y1, y2, y3, y4, y5, y6, y7);

initial begin
 en = 1;
 a = 0; b = 0; c = 0; #10;
 a = 0; b = 0; c = 1; #10;
 a = 0; b = 1; c = 0; #10;
 a = 0; b = 1; c = 1; #10;
 a = 1; b = 0; c = 0; #10;
 a = 1; b = 0; c = 1; #10;
 a = 1; b = 1; c = 0; #10;
 a = 1; b = 1; c = 1; #10;
en = 0; a = 0; b = 0; c = 0; #10; 
$finish;
  // till here for structural before end and endmodule
