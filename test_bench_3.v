`timescale 1ns/1ns

// Example testbench
module test_bench_3;

    reg a1 = 1'b0; 
    reg a2 = 1'b1; 
    reg clk = 1'b0; 
    wire [4:0] counter; 
    wire b1; 




    // Instantiate the module
    test_3 uut (
        .a1(a1),
        .a2(a2),
        .clk(clk), 
        .counter(counter),
        .b1(b1)
    );

    // initial begin
    //     #1 force a1 = 1'b1;  // Force a1 to 1 after 10 time units
    //     #1 force counter = 1'b0; 
    //     #1 force b1 = 1'b0; 
    // end

    // Your clock generation logic (for simulation purposes)
    always begin

        #1 clk = ~clk;  // Invert the clock every 1 time units
    end





    // Your stimulus and test   ing logic here

endmodule