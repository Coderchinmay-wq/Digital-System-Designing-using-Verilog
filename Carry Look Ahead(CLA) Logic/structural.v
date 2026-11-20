module clahead(
input [3:0] A, B,
    input Cin,
    output [3:0] Sum,
    output Cout);

    wire [3:0] P, G; // Propagate and Generate
    wire C1, C2, C3;

    assign P = A ^ B;       // Propagate
    assign G = A & B;       // Generate
    assign C1 = G[0] | (P[0] & Cin);
    assign C2 = G[1] | (P[1] & C1);
    assign C3 = G[2] | (P[2] & C2);
    assign Cout = G[3] | (P[3] & C3);

    assign Sum[0] = P[0] ^ Cin;
    assign Sum[1] = P[1] ^ C1;
    assign Sum[2] = P[2] ^ C2;
    assign Sum[3] = P[3] ^ C3;
endmodule
