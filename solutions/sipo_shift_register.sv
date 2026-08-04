module sipo_shift_register (
    input clk, reset, serial_in,
    output logic [3:0] parallel_out
);

always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
        parallel_out <= 4'h0;
    end else begin
        parallel_out <= {(parallel_out[2:0]), serial_in};
    end
end

endmodule