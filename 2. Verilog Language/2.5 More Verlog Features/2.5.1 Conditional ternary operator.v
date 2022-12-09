module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    // assign intermediate_result1 = compare? true: false;

    assign min = ((a < b ? a : b) < c ? 
                  (a < b ? a : b) : c) < d ? 
                 ((a < b ? a : b) < c ? 
                  (a < b ? a : b) : c) : d; 
                  
endmodule