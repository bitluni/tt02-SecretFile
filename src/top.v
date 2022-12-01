module option23 (
    input [7:0] io_in,
    output reg [7:0] io_out
);

parameter WORD_COUNT = 32;

wire clk = io_in[0];
wire [6:0] din = io_in[7:1];

reg [2:0] counter;
//reg [7 * WORD_COUNT - 1: 0] buffer;
wire [7:0] romOut;

reg [8:0] counter2;

charRom rom(counter2[8:3], counter2[2:0], romOut);

always@(posedge clk) begin
    begin
        io_out <= romOut;
        counter2 <= counter2 + 1'd1;
    end
end
endmodule
