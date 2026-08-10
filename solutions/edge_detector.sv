module edge_detector (
    input clk,
    input reset,
    input signal_in,
    output logic rising_edge,
    output logic falling_edge
);

logic prev_signal;

always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
        prev_signal <= 0;
        rising_edge <= 0;
        falling_edge <= 0;
    end else begin
        if (prev_signal == 0 & signal_in == 1) begin
            prev_signal <= 1;
            rising_edge <= 1;
            falling_edge <= 0;
        end else if (prev_signal == 1 & signal_in == 0) begin
            prev_signal <= 0;
            falling_edge <= 1;
            rising_edge <= 0;
        end else begin
            prev_signal <= signal_in;
            rising_edge <= 0;
            falling_edge <= 0;
        end
    end
end

endmodule