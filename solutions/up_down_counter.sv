module updown_counter (
    input clk, reset, up_down,
    output logic [3:0] count
);

always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
        count <= 4'h0;
    end else if (up_down) begin
        count <= count + 1;
    end else begin
        count <= count - 1;
    end
end
endmodule