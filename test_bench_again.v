`timescale 1ns/1ns

// Example testbench
module test_bench_again;

   reg a1_dummy_value = 1'b0; 
   reg clk = 1'b0; 
   wire pwm; 
   wire [12:0] counter; 


    // Instantiate the module
    test_again uut (
        .a1_dummy_value(a1_dummy_value),
        .clk(clk),
        .pwm(pwm), 
        .counter(counter)      
    );

    // initial begin
    //     #1 force a1 = 1'b1;  // Force a1 to 1 after 10 time units
    //     #1 force counter = 1'b0; 
    //     #1 force b1 = 1'b0; 
    // end

    // Your clock generation logic (for simulation purposes)
    always begin

        #10 clk = ~clk;  // Invert the clock every 1 time units -> 50MHz clock 

    end

    // Your stimulus and test   ing logic here

endmodule