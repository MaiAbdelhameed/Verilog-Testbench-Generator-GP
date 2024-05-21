module or20 (
    input wire a,b,
    output reg out
);

    always @(*) begin
        out = (&{~a,~b}) ? 1'b0 : 1'b1;
    end
    
endmodule
