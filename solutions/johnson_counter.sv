module johnson_counter (
    input clk, reset,
    output logic [3:0] count
);

always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
        count <= 4'h0;
    end else begin
        if (count == 4'h0) begin
            count <= count + 1'b1;
        end else if (count[3] == 0) begin
            count <= {count[2:0], 1'b1};
        end else begin
            count <= count << 1;
        end
    end
end

endmodule