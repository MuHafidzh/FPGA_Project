`timescale 1ns / 1ps
`default_nettype    none

module prescaler#(
    parameter DATA_WIDTH = 8
)(
    input wire clk,
    input wire rst,
    output reg out,
    input wire [DATA_WIDTH - 1:0] psc
);

    reg [DATA_WIDTH-1:0] counter;

    always @(posedge clk or posedge rst or negedge clk) begin
        if (rst) begin
            counter <= 0;
            out <= 0;
        end else begin
            counter <= counter + 1;
            if (counter >= psc) begin
                counter <= 0;
                out <= ~out;
            end
        end
    end
endmodule