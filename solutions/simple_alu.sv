`default_nettype none

module alu (
    input [3:0] a, b,
    input [2:0] op,
    output logic [3:0] result,
    output logic zero
);

always_comb begin
    case (op)
        3'b000: begin
            result = a & b;
            zero = ~(result == 4'd0) ? 1'b0: 1'b1;
        end
        3'b001: begin
            result = a | b;
            zero = ~(result == 4'd0) ? 1'b0: 1'b1;
        end
        3'b010: begin
            result = a + b;
            zero = ~(result == 4'd0) ? 1'b0: 1'b1;

        end
        3'b011: begin
            result = a - b;
            zero = ~(result == 4'd0) ? 1'b0: 1'b1;

        end
        3'b100: begin
            result = a ^ b;
            zero = ~(result == 4'd0) ? 1'b0: 1'b1;

        end
        3'b101: begin
            result = (a < b) ? 1 : 0;
            zero = ~(result == 4'd0) ? 1'b0: 1'b1;

        end
        3'b110: begin
            result = ~(a | b);
            zero = ~(result == 4'd0) ? 1'b0: 1'b1;

        end
        3'b111: begin
            result = ~(a & b);
            zero = ~(result == 4'd0) ? 1'b0: 1'b1;

        end
        default: begin
            result = 4'b0000;
            zero = 1'b1;
        end
    endcase

end

endmodule