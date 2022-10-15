`timescale 1us / 1ps


module LED_control_tb();

reg clk,rst;
reg [7:0] bin;

wire [7:0] seg_data;
wire [7:0] seg_sel;
wire led_signal;

LED_control u1 (.clk(clk), .rst(rst), .bin(bin), .seg_data(seg_data), .seg_sel(seg_sel), .led_signal(led_signal));

always begin
    #0.5 clk <=~clk;
    end

initial begin
    clk <=0;
    rst <=0;
    bin <= 8'b00000000;
    #1e+6 rst <=1;
    #1e+6 rst <=0;
    #1e+6 bin <=8'b01000000;
    #1e+6 bin <=8'b10000000;
    #1e+6 bin <=8'b11000000;
    #1e+6 bin <=8'b11111111;
    $stop;
    end


endmodule
