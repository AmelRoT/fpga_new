
module test_2 (
    input a,
    input b,
    input c,
    input clk, 
    input rst, 
    output reg [4:0] counter,
    output reg d
);

reg d1; 


always @(posedge clk) begin

    counter <= counter +1'b1; 

    if (rst == 1'b1) begin
        // Reset condition, force d to 1'b1
       // force d = 1'b1;
       d <= 1'b0; 
    end 
    
    else begin
        // Your original logic
        d <= (a | b) & c;
        // If you want to force d to 1'b0 under certain conditions, you can use something like:
        // if (some_condition) force d = 1'b0;
       counter <= 0; 

    end

end


endmodule
