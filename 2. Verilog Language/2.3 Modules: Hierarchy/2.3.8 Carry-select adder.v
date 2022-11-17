module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire cout;
    wire [31:16] sum_1;
    wire [31:16] sum_2;

    add16 a1(a[15:0], b[15:0], 1'b0, sum[15:0], cout);
    add16 a2(a[31:16],b[31:16], 1'b0, sum_1[31:16], );
    add16 a3(a[31:16],b[31:16], 1'b1, sum_2[31:16], );

    assign sum[31:16] = cout?sum_2:sum_1;

endmodule
