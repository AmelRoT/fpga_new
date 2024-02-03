module test_again (

    input clk, 
    input a1_dummy_value, 
    output reg [12:0] counter, 
    output reg pwm


); 


// making a simple PWM singal 

always @(posedge clk )
begin 

    if(a1_dummy_value == 1'b0) begin 

        counter <= 0; 

    end 

    else begin 

        counter <= counter+1'b1; 

    end 


    if(counter <= 2500) 
    begin 

        pwm = 1'b1; 

    end 

    else 
    begin 

        pwm = 1'b0; 
    end 

    if(counter >= 5000) 
    begin 
        counter <= 0; 
    end 


end 





endmodule 