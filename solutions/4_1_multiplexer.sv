module mux (
    input d0, d1, d2, d3, s0, s1,
    output y
);
    logic mux1_out, mux2_out;

    assign mux1_out = s0 ? d1 : d0;
    assign mux2_out = s0 ? d3 : d2;

    assign y = s1 ? mux2_out : mux1_out;

endmodule