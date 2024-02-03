`timescale 1ns/1ps

module test_2 (
    input a,
    input b,
    input c,
    input clk,
    output reg d
);


always @(posedge clk) begin
    if (clk) begin
        // Reset condition, force d to 1'b1
       // force d = 1'b1;
    end else begin
        // Your original logic
        d <= (a | b) & c;
        // If you want to force d to 1'b0 under certain conditions, you can use something like:
        // if (some_condition) force d = 1'b0;
    end
end

endmodule
