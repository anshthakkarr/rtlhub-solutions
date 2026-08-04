module bool_func (
    input a, b, c,
    output logic f
);

logic [7:0] decoder_out;
logic [2:0] decoder_in;

assign decoder_in = {a, b, c};

always_comb begin
    case (decoder_in)
        3'b111: begin
            decoder_out = 8'h80;
            f = 1;
        end
        3'b110: begin
            decoder_out = 8'h40;
            f = 1;
        end
        3'b101: begin
            decoder_out = 8'h20;
            f = 1;
        end
        3'b100: begin
            decoder_out = 8'h10;
            f = 0;
        end
        3'b011: begin
            decoder_out = 8'h08;
            f = 1;
        end
        3'b010: begin
            decoder_out = 8'h04;
            f = 0;
        end
        3'b001: begin
            decoder_out = 8'h02;
            f = 0;
        end
        3'b000: begin
            decoder_out = 8'h01;
            f = 0;
        end
        default: begin
            decoder_out = 8'h00;
            f = 0;
        end
    endcase
end

endmodule