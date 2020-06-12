module ALU_CU(in_signal, ALU_OP);

    input[3:0] in_signal;
    output[3:0] ALU_OP;

    assign m = in_signal[3];
    assign n = in_signal[2];
    assign p = in_signal[1];
    assign q = in_signal[0];

    assign ALU_OP[3] = m & (~n) & p;
    assign ALU_OP[2] = q & (m ^ n);
    assign ALU_OP[1] = (~m & n) | (p ^ q);
    assign ALU_OP[0] = (~n & ~q) | (p & q & m);
endmodule