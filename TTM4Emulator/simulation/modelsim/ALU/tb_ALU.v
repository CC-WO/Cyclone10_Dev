`timescale 1 ns / 10 ps        // Time Unit / Accuracy
`define TB_CYCLE        20     // 20ns (50MHz)
`define TB_RESET_COUNT  4      // Reset Count
`define TB_FINISH_COUNT 100    // Finish Count


module tb_ALU(
);

  wire       tb_RST;
  wire       tb_CLK;
  wire [3:0] tb_X;
  wire [3:0] tb_Y;
  wire [3:0] tb_IM;
  wire [1:0] tb_SEL;
  reg        tb_nFA_EN;
  reg        tb_nAND_EN;
  reg        tb_nOR_EN;
  reg        tb_nXOR_EN;
  wire       tb_Z_FLAG;
  wire       tb_C_FLAG;
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
  reg [3:0] X;
  reg [3:0] Y;
  reg [3:0] IM;
  reg [1:0] SEL;

  assign tb_X = X;
  assign tb_Y = Y;
  assign tb_IM = IM;
  assign tb_SEL = SEL;

  initial begin
  SEL = 2'b01;
  tb_nFA_EN = 1'b0; tb_nAND_EN = 1'b0; tb_nOR_EN = 1'b0; tb_nXOR_EN = 1'b0;
  X = 4'b0101; Y = 4'b1010; IM = 4'b1100;

  // Release Reset
  # (`TB_CYCLE * `TB_RESET_COUNT * 2)
  // Wait
  # (`TB_CYCLE * 5)
  tb_nFA_EN = 1'b1; tb_nAND_EN = 1'b0; tb_nOR_EN = 1'b0; tb_nXOR_EN = 1'b0;
  # (`TB_CYCLE * 2)
  tb_nFA_EN = 1'b0; tb_nAND_EN = 1'b1; tb_nOR_EN = 1'b0; tb_nXOR_EN = 1'b0;
  # (`TB_CYCLE * 2)
  tb_nFA_EN = 1'b0; tb_nAND_EN = 1'b0; tb_nOR_EN = 1'b1; tb_nXOR_EN = 1'b0;
  # (`TB_CYCLE * 2)
  tb_nFA_EN = 1'b0; tb_nAND_EN = 1'b0; tb_nOR_EN = 1'b0; tb_nXOR_EN = 1'b1;
  # (`TB_CYCLE * 2)
  tb_nFA_EN = 1'b0; tb_nAND_EN = 1'b0; tb_nOR_EN = 1'b0; tb_nXOR_EN = 1'b0;

  SEL = 2'b00;
  tb_nFA_EN = 1'b1; tb_nAND_EN = 1'b0; tb_nOR_EN = 1'b0; tb_nXOR_EN = 1'b0;
  # (`TB_CYCLE * 2)
  tb_nFA_EN = 1'b0; tb_nAND_EN = 1'b1; tb_nOR_EN = 1'b0; tb_nXOR_EN = 1'b0;
  # (`TB_CYCLE * 2)
  tb_nFA_EN = 1'b0; tb_nAND_EN = 1'b0; tb_nOR_EN = 1'b1; tb_nXOR_EN = 1'b0;
  # (`TB_CYCLE * 2)
  tb_nFA_EN = 1'b0; tb_nAND_EN = 1'b0; tb_nOR_EN = 1'b0; tb_nXOR_EN = 1'b1;
  # (`TB_CYCLE * 2)
  tb_nFA_EN = 1'b0; tb_nAND_EN = 1'b0; tb_nOR_EN = 1'b0; tb_nXOR_EN = 1'b0;

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
  ALU U_ALU(
    .RST(tb_RST),
    .CLK(tb_CLK),
    .X(tb_X),
    .Y(tb_Y),
    .IM(tb_IM),
    .SEL(tb_SEL),
    .nFA_EN(tb_nFA_EN),
    .nAND_EN(tb_nAND_EN),
    .nOR_EN(tb_nOR_EN),
    .nXOR_EN(tb_nXOR_EN),
    .Z_FLAG(tb_Z_FLAG),
    .C_FLAG(tb_C_FLAG),
    .STOREBUS(tb_STOREBUS)
  );

endmodule
