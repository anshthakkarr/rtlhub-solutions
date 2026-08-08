module dff_async_reset (
    input clk, reset, d,
    output logic q
);

always_ff @(posedge clk or posedge reset) begin
    if (reset) begin 
        q <= 0;
    end else begin
        q <= d;
    end
end 

endmodule