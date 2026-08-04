`default_nettype none

module excess3_to_bcd (
    input [3:0] excess3,
    output logic [3:0] bcd,
    output logic valid
);

always_comb begin
    case (excess3)
        4'h3: begin 
            bcd = 4'd0;
            valid = 1'b1;
        end
        4'h4: begin 
            bcd = 4'd1;
            valid = 1'b1;
        end
        4'h5: begin 
            bcd = 4'd2;
            valid = 1'b1;
        end
        4'h6: begin 
            bcd = 4'd3;
            valid = 1'b1;
        end
        4'h7: begin 
            bcd = 4'd4;
            valid = 1'b1;
        end
        4'h8: begin 
            bcd = 4'd5;
            valid = 1'b1;
        end
        4'h9: begin 
            bcd = 4'd6;
            valid = 1'b1;
        end
        4'ha: begin 
            bcd = 4'd7;
            valid = 1'b1;
        end
        4'hb: begin 
            bcd = 4'd8;
            valid = 1'b1;
        end
        4'hc: begin 
            bcd = 4'd9;
            valid = 1'b1;
        end
        default: begin
            bcd = 4'd0;
            valid = 1'b0;
        end
    endcase
end

endmodule