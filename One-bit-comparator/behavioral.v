module bit1c(input wire a,
            input wire b,
            output reg g,
            output reg e,
             output reg l);
  always@ (a or b)
    begin
      if(a<b)
        begin
          g = 0;
          e = 0;
          l = 1;
        end
      else begin
          g = 1;
          e = 0;
          l = 0;
      end
    end
endmodule
