module bcd_adder (
    input [3:0] a,
    input [3:0] b,
    input cin,

    output [3:0] sum,
    output cout
);

logic [4:0] binary_sum;
logic correction;

assign binary_sum = a + b + cin;
assign correction = (binary_sum > 5'd9);

assign sum = correction ? (binary_sum[4:0] + 6) : binary_sum[4:0];
assign cout = correction;

endmodule