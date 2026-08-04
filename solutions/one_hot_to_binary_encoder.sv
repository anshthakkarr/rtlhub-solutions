`default_nettype none

module onehot_encoder (
    input [7:0] onehot,
    output logic [2:0] bin,
    output logic valid
);

always_comb begin
    casez (onehot)
        8'h00: begin 
            valid = 1'b0;
            bin = 3'bxxx;
        end
        8'h01: begin
            valid = 1'b1;
            bin = 3'b000;
        end
        8'h02: begin 
            valid = 1'b1;
            bin = 3'b001;
        end
        8'h04: begin
            valid = 1'b1;
            bin = 3'b010;
        end
        8'h08: begin
            valid = 1'b1;
            bin = 3'b011;
        end
        8'h10: begin
            valid = 1'b1;
            bin = 3'b100;
        end
        8'h20: begin
            valid = 1'b1;
            bin = 3'b101;
        end
        8'h40: begin
            valid  = 1'b1;
            bin = 3'b110;
        end
        8'h80: begin
            valid = 1'b1;
            bin = 3'b111;
        end
        default: begin
            valid = 1'b0;
            bin = 3'bxxx;
        end
    endcase

end



endmodule