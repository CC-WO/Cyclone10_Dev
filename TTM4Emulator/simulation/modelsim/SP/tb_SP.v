`timescale 1 ns / 10 ps        // Time Unit / Accuracy
`define TB_CYCLE        20     // 20ns (50MHz)
`define TB_RESET_COUNT  4      // Reset Count
`define TB_FINISH_COUNT 100    // Finish Count


module tb_SP(
);

  wire       tb_RST;
  wire       tb_CLK;
  reg        tb_nSK_EN;
  reg        tb_SP_D_nU;
  reg        tb_SPC;
  wire [7:0] tb_SP;
  wire [3:0] tb_STOREBUS;

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

  reg [3:0] STOREBUS;
  assign tb_STOREBUS = STOREBUS;

  initial begin
  tb_nSK_EN  = 1'b0;
  tb_SP_D_nU = 1'b0;
  tb_SPC     = 1'b1;
  STOREBUS   = 4'h0;
  // Release Reset
  # (`TB_CYCLE * `TB_RESET_COUNT * 2)
  // Wait
  # (`TB_CYCLE * 5)
  tb_SP_D_nU = 1'b1;
  # (`TB_CYCLE * 2)
  tb_SPC = 1'b0;
  # (`TB_CYCLE * 1)
  tb_SPC = 1'b1;
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
  SP U_SP(
    .RST(tb_RST),
    .CLK(tb_CLK),
    .nSK_EN(tb_nSK_EN),
    .SP_D_nU(tb_SP_D_nU),
    .SPC(tb_SPC),
    .SP(tb_SP),
    .STOREBUS(tb_STOREBUS)
  );

endmodule
