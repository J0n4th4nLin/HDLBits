module top_module ( input clk, input d, output q );

    wire q1, q2;

    my_dff md1( clk, d, q1);
    my_dff md2( clk, q1, q2);
    my_dff md3( clk, q2, q);

    /*
        Second Way:
            wire q1, q2;

            my_dff md1(.clk(clk), .d(d), .q(q1));
            my_dff md2(.clk(clk), .d(q1), .q(q2));
            my_dff md3(.clk(clk), .d(q2), .q(q));
    */

endmodule
