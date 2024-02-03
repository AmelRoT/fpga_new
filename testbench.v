`timescale 1ns/1ps

// Example testbench
module testbench;
    reg a = 1'b1;
    reg b = 1'b1;
    reg c = 1'b1;
    reg clk = 1'b1;
    wire d;
    // Instantiate the module
    test_2 uut (
        .a(a),
        .b(b),
        .c(c),
        .clk(clk),
        .d(d)
    );

    // Your clock generation logic (for simulation purposes)
    always begin
        #5 clk = ~clk;  // Invert the clock every 5 time units
    end

    // Your stimulus and testing logic here

endmodule