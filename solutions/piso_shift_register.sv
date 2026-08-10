module piso_shift_register (
    input clk, reset, load,
    input [3:0] parallel_in,
    output logic serial_out
);

logic [3:0] loaded_reg;

always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
        loaded_reg <= 0;
    end else if (load) begin
        loaded_reg <= parallel_in;
    end else begin
        loaded_reg <= loaded_reg << 1;
    end
end

assign serial_out = loaded_reg[3];

endmodule