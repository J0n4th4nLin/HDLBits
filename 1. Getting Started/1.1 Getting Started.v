module top_module(output one);
    
    //Insert your code here
    assign one = 1'b1;

endmodule

/*
    Simply introduce architecture of the code.
        A complete architecture requires modules and endmodules to wrap them.
    top_module is the name of this module. Behind the top_module, () is represented
    the all wire which input or output. you can name your wire inside (),
    e.g. "one" is name of output wire. So we can use "one" which this variable in 
    below mainly code area.

    "assign" represents the description of the  data flow layer.
    e.g. assign out = in;

*/