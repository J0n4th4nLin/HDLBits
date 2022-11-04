module top_module(input a, b, output out);

    assign out = ~(a^b);

    /*
        Second Way:
            assign out = a ~^ b;

        Third Way:
            assign out = a ^~ b;

        Fourth Way:
            xnor(out, a, b);
    */

endmodule
/*
    ^ is represented XOR
*/