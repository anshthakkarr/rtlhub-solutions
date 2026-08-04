`default_nettype none 

module demux_1to4 (
    input d,
    input [1:0] sel,
    output logic y0, y1, y2, y3
);

always_comb begin
    case (sel)
        2'b00: begin
            y0 = d;
            y1 = 1'b0;
            y2 = 1'b0;
            y3 = 1'b0;
        end
        2'b01: begin
            y0 = 1'b0;
            y1 = d;
            y2 = 1'b0;
            y3 = 1'b0;
        end
        2'b10: begin
            y0 = 1'b0;
            y1 = 1'b0;
            y2 = d;
            y3 = 1'b0;
        end
        2'b11: begin
            y0 = 1'b0;
            y1 = 1'b0;
            y2 = 1'b0;
            y3 = d;
        end
        default: begin
            y0 = 1'b0;
            y1 = 1'b0;
            y2 = 1'b0;
            y3 = 1'b0;
        end
    endcase
end

endmodule