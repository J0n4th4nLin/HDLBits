module top_module( 
    input [7:0] in,
    output [7:0] out
);

    assign out = {in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7]};

    /*
        Second Way:
            generate
                genvar i;
                for(i = 0; i <= 7; i += 1)begin: bit_reverse
                    assign out[i] = in[7-i];
                end
            endgenerate
        Third Way:
            integer i;
            always @(*) begin: bit_reverse
                for(i = 0; i <= 7; i += 1)begin
                    out[i] = in[7-i];
                end
            end
    */  

endmodule

/*
        The difference between the second and third way 
    lies in the difference in syntax.

    bit_reverse is the name of "for"

    assign can't use with the always at the same time.
*/