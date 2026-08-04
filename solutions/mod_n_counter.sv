module mod_n_counter (
    input clk, reset,
    input [3:0] modulo,
    output logic [3:0] count
);

always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
        count <= 4'h0;
    end else if (count >= modulo - 1) begin
            count <= 4'h0;
    end else begin
        count <= count + 1;
    end
end

endmodule