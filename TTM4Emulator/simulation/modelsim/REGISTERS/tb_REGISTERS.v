`timescale 1 ns / 10 ps // Time Unit / Accuracy
`define TB_CYCLE        20     // 20ns (50MHz)
`define TB_RESET_COUNT  4      // Reset Count
`define TB_FINISH_COUNT 1000   // Finish Count


module tb_REGISTERS(
);

  wire       tb_RST;
  wire       tb_CLK;
  reg        tb_nPC_LD;
  reg        tb_nPC_OPEN;
  reg        tb_nJRD_ST;
  reg        tb_nJRU_ST;
  reg        tb_nORD_ST;
  reg        tb_nORU_ST;
  reg        tb_nJRD_OUT;
  reg        tb_nJRU_OUT;
  reg        tb_nIRD_OUT;
  reg        tb_nIRU_OUT;
  wire [7:0] tb_PA;
  wire [3:0] tb_LOADBUS;
  wire [3:0] tb_STOREBUS;
  wire [7:0] tb_OR;
  wire [7:0] tb_IR;

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
  reg [7:0] IR;

  initial tb_nPC_OPEN = 1'b0;

  assign tb_STOREBUS = STOREBUS;
  assign tb_IR = IR;

  initial begin
    tb_nPC_LD = 1'b1;
    // Release Reset
    # (`TB_CYCLE * `TB_RESET_COUNT * 2)
    // Wait
    # (`TB_CYCLE * 20)
    tb_nPC_LD = 1'b0;
    # (`TB_CYCLE)
    tb_nPC_LD = 1'b1;
  end

  initial begin
    STOREBUS = 4'b0000;
    tb_nJRD_ST = 1'b1;
    tb_nJRU_ST = 1'b1;
    tb_nORD_ST = 1'b1;
    tb_nORU_ST = 1'b1;
    tb_nIRU_OUT = 1'b0;
    tb_nIRD_OUT = 1'b0;
    tb_nJRU_OUT = 1'b0;
    tb_nJRD_OUT = 1'b0;
    // Release Reset
    # (`TB_CYCLE * `TB_RESET_COUNT * 2)
    // Wait
    # (`TB_CYCLE * 5)
    STOREBUS = 4'b0101;
    tb_nJRD_ST = 1'b0;
    tb_nJRU_ST = 1'b1;
    tb_nORD_ST = 1'b0;
    tb_nORU_ST = 1'b1;
    # (`TB_CYCLE)
    tb_nJRD_ST = 1'b1;
    tb_nJRU_ST = 1'b1;
    tb_nORD_ST = 1'b1;
    tb_nORU_ST = 1'b1;
    # (`TB_CYCLE * 5)
    STOREBUS = 4'b1010;
    tb_nJRD_ST = 1'b1;
    tb_nJRU_ST = 1'b0;
    tb_nORD_ST = 1'b1;
    tb_nORU_ST = 1'b0;
    # (`TB_CYCLE)
    tb_nJRD_ST = 1'b1;
    tb_nJRU_ST = 1'b1;
    tb_nORD_ST = 1'b1;
    tb_nORU_ST = 1'b1;
  end


  initial begin
    IR = 8'b01111110;
    tb_nJRD_OUT = 1'b0;
    tb_nJRU_OUT = 1'b0;
    tb_nIRD_OUT = 1'b0;
    tb_nIRU_OUT = 1'b0;
    // Release Reset
    # (`TB_CYCLE * `TB_RESET_COUNT * 2)
    // Wait
    # (`TB_CYCLE * 30)
    tb_nJRD_OUT = 1'b1;
    tb_nJRU_OUT = 1'b0;
    tb_nIRD_OUT = 1'b0;
    tb_nIRU_OUT = 1'b0;
    # (`TB_CYCLE * 5)
    tb_nJRD_OUT = 1'b0;
    tb_nJRU_OUT = 1'b1;
    tb_nIRD_OUT = 1'b0;
    tb_nIRU_OUT = 1'b0;
    # (`TB_CYCLE * 5)
    tb_nJRD_OUT = 1'b0;
    tb_nJRU_OUT = 1'b0;
    tb_nIRD_OUT = 1'b1;
    tb_nIRU_OUT = 1'b0;
    # (`TB_CYCLE * 5)
    tb_nJRD_OUT = 1'b0;
    tb_nJRU_OUT = 1'b0;
    tb_nIRD_OUT = 1'b0;
    tb_nIRU_OUT = 1'b1;
    # (`TB_CYCLE * 5)
    IR = 8'b0000000;
    tb_nJRD_OUT = 1'b0;
    tb_nJRU_OUT = 1'b0;
    tb_nIRD_OUT = 1'b0;
    tb_nIRU_OUT = 1'b0;
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
  REGISTERS U_REGISTERS(
    .RST(tb_RST),
    .CLK(tb_CLK),
    .nPC_LD(tb_nPC_LD),
    .nPC_OPEN(tb_nPC_OPEN),
    .nJRD_ST(tb_nJRD_ST),
    .nJRU_ST(tb_nJRU_ST),
    .nORD_ST(tb_nORD_ST),
    .nORU_ST(tb_nORU_ST),
    .nJRD_OUT(tb_nJRD_OUT),
    .nJRU_OUT(tb_nJRU_OUT),
    .nIRD_OUT(tb_nIRD_OUT),
    .nIRU_OUT(tb_nIRU_OUT),
    .PA(tb_PA),
    .LOADBUS(tb_LOADBUS),
    .STOREBUS(tb_STOREBUS),
    .OR(tb_OR),
    .IR(tb_IR)
  );

endmodule
