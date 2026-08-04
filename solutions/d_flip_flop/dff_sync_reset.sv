module dff_sync_reset (
    input clk, reset, d,
    output logic q
);

always_ff @(posedge clk) begin
    if (reset) begin 
        q <= 0;
    end else begin
        q <= d;
    end
end 

endmodule