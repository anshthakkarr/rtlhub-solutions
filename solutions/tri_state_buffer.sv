module tristate_buffer (
    input data_in, enable,
    output logic data_out
);

assign data_out = enable ? data_in : 1'bZ;

endmodule