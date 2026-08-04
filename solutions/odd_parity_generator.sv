`default_nettype none 

module odd_parity_mux (
    input a, b, c,
    output f
);

logic [7:0] mux_data;

assign mux_data[0] = 1'b0;
assign mux_data[1] = 1'b1;
assign mux_data[2] = 1'b1;
assign mux_data[3] = 1'b0;
assign mux_data[4] = 1'b1;
assign mux_data[5] = 1'b0;
assign mux_data[6] = 1'b0;
assign mux_data[7] = 1'b1;


assign f = ^{a, b, c};

endmodule