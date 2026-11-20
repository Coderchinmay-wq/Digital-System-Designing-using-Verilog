module cla2(
    input [3:0] A, B,
    input Cin,
    output reg [3:0] Sum,
    output reg Cout);

    reg [3:0] P, G; // Propagate and Generate
    reg C1, C2, C3;

    always @(*) begin
        P = A ^ B;
        G = A & B;

        C1 = G[0] | (P[0] & Cin);
        C2 = G[1] | (P[1] & C1);
        C3 = G[2] | (P[2] & C2);
        Cout = G[3] | (P[3] & C3);

        Sum[0] = P[0] ^ Cin;
        Sum[1] = P[1] ^ C1;
        Sum[2] = P[2] ^ C2;
        Sum[3] = P[3] ^ C3;
    end
endmodule
