module LEDCUBE(input wire clk, output wire [2:0] y);
    reg [26:0] cnt = 27'b0;
    assign y[0] = ~cnt[26]&~cnt[25]|cnt[26]&~cnt[25]&cnt[24]|cnt[26]&cnt[25]&~cnt[24];
    assign y[1] = ~cnt[24];
    assign y[2] = cnt[26]&~cnt[25]|~cnt[25]&cnt[24]|~cnt[26]&cnt[25]&~cnt[24];
    always @(posedge clk) cnt = cnt+1;
endmodule
