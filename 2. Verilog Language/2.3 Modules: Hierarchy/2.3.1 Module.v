module top_module ( input a, input b, output out );
    mod_a instance1(.in1(a), .in2(b), .out(out));

    /*
        Second Way:
            mod_a instance1(a, b, out);
        This way need to follow module () variable position.
    */

endmodule

/*

     Larger, more complex circuits are built by composing bigger
      modules out of smaller modules and other pieces.

    Hint: mod_a is sub-module of module.
*/