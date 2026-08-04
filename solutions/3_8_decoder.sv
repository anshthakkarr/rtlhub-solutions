`default_nettype none

module decoder (
    input [2:0] in,
    output logic [7:0] out
);

    logic [3:0] dec1_out, dec2_out;

    always_comb begin

        case (in[1:0])
            2'b00: begin
                dec1_out = 4'b0001;
                dec2_out = 4'b0001;
            end 
            2'b01: begin
                dec1_out = 4'b0010;
                dec2_out = 4'b0010;
            end 
            2'b10: begin
                dec1_out = 4'b0100;
                dec2_out = 4'b0100;
            end 
            2'b11: begin
                dec1_out = 4'b1000;
                dec2_out = 4'b1000;
            end
            default: begin
                dec1_out = 4'b0000;
                dec2_out = 4'b0000;
            end
        endcase

        if (in[2]) dec1_out = '0;
        else dec2_out = '0;
    end

    assign out = {dec2_out, dec1_out};

endmodule