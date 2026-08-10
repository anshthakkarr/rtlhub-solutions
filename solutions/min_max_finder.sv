module min_max_finder (
    input [3:0] a, b, c, d,
    output logic [3:0] min, max
);

logic [3:0] inter_min_1, inter_min_2, inter_max_1, inter_max_2;

assign inter_min_1 = (a <= d) ? a : d;
assign inter_min_2 = (b <= c) ? b : c;
assign inter_max_1 = (a >= d) ? a : d;
assign inter_max_2 = (b >= c) ? b : c;

assign min = inter_min_1 <= inter_min_2 ? inter_min_1 : inter_min_2;
assign max = inter_max_1 >= inter_max_2 ? inter_max_1 : inter_max_2;

endmodule