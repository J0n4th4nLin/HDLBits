module top_module(input a, b, output out);

    assign out = ~(a|b);

    /*
        Second Way:
          nor(out, a, b);
    */

endmodule
/*
    Why equal right side is "~(a | b)"?
    Ans: Because this question asks us "XOR", 
    while "|" is represented "OR", so we need to
    add "~ not" in front of "(a|b)".
*/