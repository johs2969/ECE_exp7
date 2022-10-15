`timescale 1us / 1ps

module LED3_control_tb( );

reg clk,rst;
reg [7:0] btn;

wire led_signal_R,led_signal_G,led_signal_B;

LED3_control u1 (.clk(clk), .rst(rst), .btn(btn), .led_signal_R(led_signal_R), .led_signal_G(led_signal_G), .led_signal_B(led_signal_B));

always begin
    #0.5 clk <=~clk;
    end

initial begin
    clk <=0;
    rst <=0;
    #1e+6 rst <=1;
    #1e+6 rst <=0;
    #1e+6 btn <=8'b00000001;
    #1e+6 btn <=8'b00000010;
    #1e+6 btn <=8'b00000100;
    $stop;
    end
endmodule
