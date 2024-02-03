module test_3 (

    input a1,
    input a2, 
    input clk, 
    output reg [4:0] counter, 
    output reg b1

); 

reg a11; 

always @(posedge clk) begin 
    // a11 <= a1; 
    if(a1 == 1'b1) 
    begin
        counter <= counter+1'b1; 
    end 

    else begin 
        counter <= 0;
    end 

    if (counter == 4'b1000)
    begin 

        b1 <= 1'b1; 
    end 
    else begin 

//        a11 <= 1'b1; 

    end 

end 




endmodule 