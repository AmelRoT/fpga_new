`timescale 1ns/1ps

// Example testbench
module testbench;
    reg a = 1'b1;
    reg b = 1'b1;
    reg c = 1'b1;
    reg clk = 1'b1;
    reg rst = 1'b0; 
    wire [4:0] counter; 
    wire d;
    // Instantiate the module
    test_2 uut (
        .a(a),
        .b(b),
        .c(c),
        .clk(clk),
        .rst(rst),
        .counter(counter),
        .d(d)
    );

    // Your clock generation logic (for simulation purposes)
    always begin
        #5 clk = ~clk;  // Invert the clock every 5 time units
        #10 force rst = 1'b1; 
    end

    // Your stimulus and test   ing logic here

endmodule