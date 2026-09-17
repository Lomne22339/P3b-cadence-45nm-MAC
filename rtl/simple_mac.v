// simple_mac.v -- 8x8 MAC with FSM controller and 4-entry coef file
// Reused from P3a synthesis (already proved clean on cmos065)
// Target for P3b: RTL-to-GDSII on Cadence tools + 45nm PDK
module simple_mac (
    input  wire        clk,
    input  wire        rst_n,
    // coefficient write port
    input  wire        cf_we,
    input  wire [1:0]  cf_addr,
    input  wire [7:0]  cf_din,
    // MAC operation
    input  wire        start,
    input  wire [7:0]  din,
    input  wire [1:0]  coef_sel,
    input  wire        clr_acc,
    output reg  [15:0] acc_out,
    output reg         done,
    output reg         busy
);

    // Coefficient register file (4 x 8-bit)
    reg [7:0] coef [3:0];
    integer i;

    // FSM
    localparam S_IDLE = 2'b00;
    localparam S_MUL  = 2'b01;
    localparam S_ACC  = 2'b10;
    localparam S_DONE = 2'b11;
    reg [1:0] state, next_state;

    reg [15:0] mult_result;

    // Sequential
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state   <= S_IDLE;
            acc_out <= 16'd0;
            done    <= 1'b0;
            busy    <= 1'b0;
            mult_result <= 16'd0;
            for (i = 0; i < 4; i = i + 1) coef[i] <= 8'd0;
        end else begin
            state <= next_state;

            if (cf_we) coef[cf_addr] <= cf_din;

            if (clr_acc)
                acc_out <= 16'd0;

            case (state)
                S_IDLE: begin
                    done <= 1'b0;
                    busy <= 1'b0;
                end
                S_MUL: begin
                    busy <= 1'b1;
                    mult_result <= din * coef[coef_sel];
                end
                S_ACC: begin
                    acc_out <= acc_out + mult_result;
                end
                S_DONE: begin
                    done <= 1'b1;
                    busy <= 1'b0;
                end
            endcase
        end
    end

    // Next-state logic
    always @(*) begin
        case (state)
            S_IDLE: next_state = start ? S_MUL  : S_IDLE;
            S_MUL:  next_state = S_ACC;
            S_ACC:  next_state = S_DONE;
            S_DONE: next_state = S_IDLE;
            default: next_state = S_IDLE;
        endcase
    end

endmodule
