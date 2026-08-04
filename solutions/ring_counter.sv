module ring_counter (
    input clk, reset,
    output logic [3:0] count
);

always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
        count <= 4'b0001;
    end else if (count == 4'b1000) begin
        count <= 4'b0001;
    end else begin
        count <= count << 1;
    end
end

endmodule