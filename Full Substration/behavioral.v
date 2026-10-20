module fullsub(input A,      
    input B,       
    input Bin,     
    output reg D,  
    output reg Bout);

always @ (A or B or Bin) begin
    D = A ^ B ^ Bin;
    Bout = (~A & B) | ((~(A ^ B)) & Bin);
end
endmodule
