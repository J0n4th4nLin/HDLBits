module top_module ( 
    input wire [2:0] vec,
    output wire [2:0] outv,
    output wire o2,
    output wire o1,
    output wire o0  ); // Module body starts after module declaration

    assign outv = vec;
    assign o0 = vec[0];
    assign o1 = vec[1];
    assign o2 = vec[2];

    /*
        Second Way:
        assign outv = vec;
        assign {o2, o1, o0} = vec; Success

        assign {o0, o1, o2} = vec; Incorrect
    */

endmodule

/*
    What is "Vector"?
    Ans: Vectors are used to group related signals using one name to make it more convenient to manipulate.
    e.g. wire [7:0] w; 
        declares an 8-bit vector named w that is functionally equivalent to having 8 separate wires.
    
    wire [99:0] my_vector;      // Declare a 100-element vector
    assign out = my_vector[10]; // Part-select one bit out of the vector


*/