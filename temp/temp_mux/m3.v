module mux_dataflow(input a, b, sel,
                    reg output y);
    
    always @(*) begin
        y = (sel & b) | (~sel & a);
    end
    
endmodule