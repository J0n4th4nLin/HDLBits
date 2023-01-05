module top_module (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan
); 

    assign heater = mode & too_cold;
    assign aircon = ~mode & too_hot;
    assign fan = heater | aircon | fan_on;

endmodule
/*
heating 1 -> heater(too_cold = 1, aircon = 0)  
cooling 0 -> aircon(too_hot = 1, heater = 0 )
fan 1 -> heater 1, cooling 1 
fan 0 -> heater 0, cooling 0 
*/