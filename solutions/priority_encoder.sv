`default_nettype none 

module priority_encoder (
    input [3:0] in,
    output logic [1:0] out,
    output logic valid
);

always_comb begin
    casez (in)
        4'b0000: begin
            out = 2'bxx;
            valid = 1'b0;
        end
        4'b1zzz: begin
            out = 2'b11;
            valid = 1'b1;
        end
        4'b01zz: begin
            out= 2'b10;
            valid = 1'b1;
        end
        4'b001z: begin
            out = 2'b01;
            valid = 1'b1;
        end
        4'b0001: begin
            out = 2'b00;
            valid = 1'b1;
        end
        default: begin
            out = 2'b00;
            valid = 1'b0;
        end
    endcase

end


endmodule