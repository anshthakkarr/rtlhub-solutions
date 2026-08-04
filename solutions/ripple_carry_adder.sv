module ripple_carry_adder (
    input [3:0] a,
    input [3:0] b,
    input cin,

    output logic [3:0] sum,
    output logic cout
);

logic s0, s1, s2, s3, c1, c2, c3;

full_adder zero (
    .a(a[0]),
    .b(b[0]),
    .cin(cin),
    .sum(s0),
    .cout(c1)
);
full_adder one (
    .a(a[1]),
    .b(b[1]),
    .cin(c1),
    .sum(s1),
    .cout(c2)
);
full_adder two (
    .a(a[2]),
    .b(b[2]),
    .cin(c2),
    .sum(s2),
    .cout(c3)
);
full_adder three (
    .a(a[3]),
    .b(b[3]),
    .cin(c3),
    .sum(s3),
    .cout(cout)
);

assign sum = {s3, s2, s1, s0};

endmodule




module full_adder (
    input a,
    input b,
    input cin,
    output logic sum,
    output logic cout
);

assign sum = a ^ b ^ cin;
assign cout = (a&b)|(b&cin)|(a&cin);

endmodule