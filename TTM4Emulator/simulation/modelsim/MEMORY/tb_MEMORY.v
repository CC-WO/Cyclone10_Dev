`timescale 1 ns / 10 ps // Time Unit / Accuracy
`define TB_CYCLE        20     // 20ns (50MHz)
`define TB_RESET_COUNT  4      // Reset Count
`define TB_FINISH_COUNT 100    // Finish Count


module tb_MEMORY(
);

  wire        tb_RST;
  wire        tb_CLK;
  wire [3:0]  tb_IM;
  wire [2:0]  tb_LR;
  wire [2:0]  tb_SR;
  wire [4:0]  tb_OP;
  reg         tb_nOE;
  reg         tb_nWE;
  reg  [7:0]  tb_PA;

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
  reg  [14:0] IO;

  assign tb_IM = IO[3:0];
  assign tb_LR = IO[6:4];
  assign tb_SR = IO[9:7];
  assign tb_OP = IO[14:10];

  initial begin
    tb_nOE = 1'b1;
    tb_nWE = 1'b1;
    tb_PA = 8'h00;
    IO  = 15'b000_0000_0000_0000;
    // Release Reset
    # (`TB_CYCLE * `TB_RESET_COUNT * 2)
    // Write
    // Wait
    # (`TB_CYCLE * 4)
    tb_PA = 8'h00;
    IO  = 15'b000_1111_0000_0000;
    # (`TB_CYCLE)
    tb_nWE = 1'b0;
    # (`TB_CYCLE)
    tb_nWE = 1'b1;

    # (`TB_CYCLE)
    tb_PA = 8'h01;
    IO  = 15'b000_0000_1111_0000;
    # (`TB_CYCLE)
    tb_nWE = 1'b0;
    # (`TB_CYCLE)
    tb_nWE = 1'b1;

    # (`TB_CYCLE)
    tb_PA = 8'h02;
    IO  = 15'b000_0000_0000_1111;
    # (`TB_CYCLE)
    tb_nWE = 1'b0;
    # (`TB_CYCLE)
    tb_nWE = 1'b1;

    // Read
    // Wait
    # (`TB_CYCLE * 4)
    tb_PA = 8'h00;
    IO  = 15'bzzz_zzzz_zzzz_zzzz;
    # (`TB_CYCLE)
    tb_nOE = 1'b0;
    # (`TB_CYCLE)
    tb_nOE = 1'b1;

    # (`TB_CYCLE)
    tb_PA = 8'h01;
    tb_nOE = 1'b0;
    # (`TB_CYCLE)
    tb_nOE = 1'b1;

    # (`TB_CYCLE)
    tb_PA = 8'h02;
    tb_nOE = 1'b0;
    # (`TB_CYCLE)
    tb_nOE = 1'b1;

    # (`TB_CYCLE)
    tb_PA = 8'h03;
    tb_nOE = 1'b0;
    # (`TB_CYCLE)
    tb_nOE = 1'b1;
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

  // Instance
  MEMORY U_MEMORY(
    .CLK(tb_CLK),
    .IM(tb_IM),
    .LR(tb_LR),
    .SR(tb_SR),
    .OP(tb_OP),
    .nOE(tb_nOE),
    .nWE(tb_nWE),
    .PA(tb_PA)
  );

endmodule
