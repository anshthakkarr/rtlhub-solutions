`default_nettype none 

module adder (
    input a, b, cin,
    output sum, cout
);

logic ha1_sum, ha1_cout, ha2_sum, ha2_cout;

assign ha1_sum = a ^ b;
assign ha1_cout = a & b;
assign ha2_sum = ha1_sum ^ cin;
assign ha2_cout = cin & ha1_sum;
assign sum = ha2_sum;
assign cout = ha2_cout | ha1_cout;


endmodule