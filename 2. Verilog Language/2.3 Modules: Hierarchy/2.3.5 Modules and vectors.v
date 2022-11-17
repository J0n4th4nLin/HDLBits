module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);

    wire [7:0]q1;
    wire [7:0]q2; 
    wire [7:0]q3;

    my_dff8 md1(clk, d, q1);
    my_dff8 md2(clk, q1, q2);
    my_dff8 md3(clk, q2, q3);

    always @(*) begin
        case(sel) 
            2'd0:begin
                q = d;
            end
            2'd1:begin
                q = q1;
            end
            2'd2:begin
                q = q2;
            end
            2'd3:begin
                q = q3;
            end
        endcase
    end

endmodule