`timescale 1 ns / 10 ps // Time Unit / Accuracy
`define TB_CYCLE        20     // 20ns (50MHz)
`define TB_RESET_COUNT  4      // Reset Count
`define TB_FINISH_COUNT 1000   // Finish Count


module tb_REGISTER_A_B(
);

  wire       tb_RST;
  wire       tb_CLK;
  reg        tb_nB_ST;
  reg        tb_nB_OUT;
  wire [3:0] tb_STOREDATA;
  wire [3:0] tb_LOADDATA;
  wire [3:0] tb_COUNTER;

  // Reset
  reg RESET;
  initial begin
    RESET = 1'b1;
    # (`TB_CYCLE * `TB_RESET_COUNT)
    RESET = 1'b0;
    # (`TB_CYCLE * `TB_RESET_COUNT)
    RESET = 1'b1;
  end
  assign tb_RST = RESET;

  // Clock
  reg CLK_50M;
  initial begin
    CLK_50M = 1'b0;
  end
  always # (`TB_CYCLE / 2)
    CLK_50M <= ~CLK_50M;
  assign tb_CLK = CLK_50M;

  // Test
  reg [3:0] STOREDATA;

  assign tb_STOREDATA = STOREDATA;

  initial begin
  STOREDATA = 4'b1010;
  tb_nB_ST = 1'b1;
  tb_nB_OUT = 1'b0;
  // Release Reset
  # (`TB_CYCLE * `TB_RESET_COUNT * 2)
  // Wait
  # (`TB_CYCLE * 5)
  tb_nB_ST = 1'b0;
  # (`TB_CYCLE)
  tb_nB_ST = 1'b1;
  # (`TB_CYCLE * 5)
  tb_nB_OUT = 1'b1;
  end

  // Finish
  reg [31:0] tb_cycle_count;
  initial tb_cycle_count = 32'h0;
  always @(posedge tb_CLK) begin
    tb_cycle_count <= tb_cycle_count + 32'h000_0001;
  end
  always @* begin
    if (tb_cycle_count == `TB_FINISH_COUNT)
    begin
      $display("***** SIMULATION TIMEOUT ***** at %d", tb_cycle_count);
      $stop; // abort simulation
    end
  end

  // instance
  REGISTER_B U_REGISTERS_B(
    .RST(tb_RST),
    .CLK(tb_CLK),
    .nB_ST(tb_nB_ST),
    .nB_OUT(tb_nB_OUT),
    .STOREDATA(tb_STOREDATA),
    .LOADDATA(tb_LOADDATA),
    .COUNTER(tb_COUNTER)
  );

endmodule
