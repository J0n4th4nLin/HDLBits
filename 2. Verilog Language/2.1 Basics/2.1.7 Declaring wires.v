module top_module(
        input a, b , c, d, 
        output out, out_n);

    wire w1, w2;

    assign w1 = a&b;
    assign w2 = c&d;

    assign out = w1|w2;
    assign out_n = ~out;

    /*
        Second Way:
            wire w1, w2;
            
            and(w1, a, b);
            and(w2, a, b);

            or(out , w1, w2);
            not(out_n, out);

        Third Way:
            assign out = (a&b | c&d);
            assign out_n = ~(a&b | c&d);
     */

endmodule