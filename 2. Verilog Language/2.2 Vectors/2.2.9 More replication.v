module top_module (
    input a, b, c, d, e,
    output [24:0] out );//

    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    // assign out = ~{ ... } ^ { ... };

    assign out = {{a ~^ a}, {a ~^ b}, {a ~^ c}, {a ~^ d}, {a ~^ e},
                  {b ~^ a}, {b ~^ b}, {b ~^ c}, {b ~^ d}, {b ~^ e},
                  {c ~^ a}, {c ~^ b}, {c ~^ c}, {c ~^ d}, {c ~^ e},
                  {d ~^ a}, {d ~^ b}, {d ~^ c}, {d ~^ d}, {d ~^ e},
                  {e ~^ a}, {e ~^ b}, {e ~^ c}, {e ~^ d}, {e ~^ e}};

    /*
        Second Way:
            wire [24:0] in1;
            wire [24:0] in2;

            assign in1 = {{5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}}};
            assign in2 = {5{a , b, c, d, e}};
            assign out = in1 ~^ in2;

        Third Way:
            assign out = {{{5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}}} ~^ {5{a, b, c, d, e}}};
    */

endmodule
