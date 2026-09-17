// simple_mac_tb.v -- testbench for simple_mac
// Exercises: coef write, three MAC cycles with different coefficients, clear_acc
`timescale 1ns/1ps

module simple_mac_tb;

    reg         clk;
    reg         rst_n;
    reg         cf_we;
    reg  [1:0]  cf_addr;
    reg  [7:0]  cf_din;
    reg         start;
    reg  [7:0]  din;
    reg  [1:0]  coef_sel;
    reg         clr_acc;
    wire [15:0] acc_out;
    wire        done;
    wire        busy;

    simple_mac dut (
        .clk(clk), .rst_n(rst_n),
        .cf_we(cf_we), .cf_addr(cf_addr), .cf_din(cf_din),
        .start(start), .din(din), .coef_sel(coef_sel), .clr_acc(clr_acc),
        .acc_out(acc_out), .done(done), .busy(busy)
    );

    // 200 MHz clock (5 ns period), same as synthesis target
    initial clk = 1'b0;
    always #2.5 clk = ~clk;

    initial begin
        $monitor("t=%4t state_acc=%h done=%b busy=%b", $time, acc_out, done, busy);

        // 1. Reset
        rst_n   = 1'b0;
        cf_we   = 1'b0; cf_addr = 2'd0; cf_din = 8'd0;
        start   = 1'b0; din = 8'd0; coef_sel = 2'd0; clr_acc = 1'b0;
        repeat (3) @(negedge clk);
        rst_n = 1'b1;

        // 2. Write coefficients: coef[0]=2, coef[1]=3, coef[2]=5, coef[3]=7
        @(negedge clk); cf_we = 1'b1; cf_addr = 2'd0; cf_din = 8'd2;
        @(negedge clk);                cf_addr = 2'd1; cf_din = 8'd3;
        @(negedge clk);                cf_addr = 2'd2; cf_din = 8'd5;
        @(negedge clk);                cf_addr = 2'd3; cf_din = 8'd7;
        @(negedge clk); cf_we = 1'b0;

        // 3. First MAC: din=10, coef=coef[0]=2 -> 20
        @(negedge clk); din = 8'd10; coef_sel = 2'd0; start = 1'b1;
        @(negedge clk); start = 1'b0;
        wait (done);
        @(negedge clk);

        // 4. Second MAC: din=4, coef=coef[1]=3 -> +12 = 32
        @(negedge clk); din = 8'd4; coef_sel = 2'd1; start = 1'b1;
        @(negedge clk); start = 1'b0;
        wait (done);
        @(negedge clk);

        // 5. Third MAC: din=6, coef=coef[3]=7 -> +42 = 74
        @(negedge clk); din = 8'd6; coef_sel = 2'd3; start = 1'b1;
        @(negedge clk); start = 1'b0;
        wait (done);
        @(negedge clk);

        // 6. Clear accumulator
        @(negedge clk); clr_acc = 1'b1;
        @(negedge clk); clr_acc = 1'b0;

        repeat (5) @(negedge clk);
        $display("Final acc_out = %d (expected 0 after clear)", acc_out);
        $finish;
    end

endmodule
