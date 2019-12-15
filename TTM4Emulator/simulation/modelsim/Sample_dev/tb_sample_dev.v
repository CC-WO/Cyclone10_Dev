`timescale 1 ns / 10 ps // Time Unit / Accuracy
`define TB_CYCLE        20     // 20ns (50MHz)
`define TB_RESET_COUNT  4      // Reset Count
`define TB_FINISH_COUNT 1000   // Finish Count


module tb_sample_dev(
);

  // System
  wire       tb_RST;
  wire       tb_CLK;
  // TTM4 Global
  wire [7:0] tb_PA;
  wire [3:0] tb_LOADBUS;
  wire [3:0] tb_STOREBUS;
  wire [7:0] tb_OR;
  wire [7:0] tb_IR;
  // PC
  wire       tb_PC_nLD;
  wire       tb_nPC_OPEN;
  wire       tb_nJRD_ST;
  wire       tb_nJRU_ST;
  wire       tb_nORD_ST;
  wire       tb_nORU_ST;
  wire       tb_nJRD_OUT;
  wire       tb_nJRU_OUT;
  wire       tb_nIRD_OUT;
  wire       tb_nIRU_OUT;
  // MEMORY
  wire [3:0] tb_IM;
  wire [2:0] tb_LR;
  wire [2:0] tb_SR;
  wire [4:0] tb_OP;
  wire       tb_nOE;
  wire       tb_nWE;
  // INSTRUCTION DECODER
  wire       tb_Z_FLAG;
  wire       tb_C_FLAG;
  wire       tb_nA_OUT;
  wire       tb_nB_OUT;
  wire       tb_nA_ST;
  wire       tb_nB_ST;
  wire [1:0] tb_SEL;
  wire       tb_nFA_EN;
  wire       tb_nAND_EN;
  wire       tb_nOR_EN;
  wire       tb_nXOR_EN;
  wire       tb_nSK_EN;
  wire       tb_SP_D_nU;
  wire       tb_SPC;

  // Clock
  reg CLK_50M;
  initial begin
    CLK_50M = 1'b1;
  end
  always # (`TB_CYCLE / 2)
    CLK_50M <= ~CLK_50M;
  assign tb_CLK = CLK_50M;

  // Test
  reg        RESET;
  reg [3:0]  STOREBUS;
  reg [7:0]  IR;
  reg [7:0]  PA;
  reg [14:0] IO;
  reg        nOE;
  reg        nWE;
  reg        nPC_OPEN;
  reg        nJRD_ST;
  reg        nJRU_ST;
  reg        nORD_ST;
  reg        nORU_ST;
  reg        nJRD_OUT;
  reg        nJRU_OUT;
  reg        nIRD_OUT;
  reg        nIRU_OUT;
  reg        Z_FLAG;
  reg        C_FLAG;

  assign tb_RST       = RESET;
  assign tb_STOREBUS  = STOREBUS;
  assign tb_IR        = IR;
  assign tb_PA        = PA;
  assign tb_IM        = IO[3:0];
  assign tb_LR        = IO[6:4];
  assign tb_SR        = IO[9:7];
  assign tb_OP        = IO[14:10];
  assign tb_nPC_OPEN  = nPC_OPEN;
  assign tb_nJRD_ST   = nJRD_ST;
  assign tb_nJRU_ST   = nJRU_ST;
  assign tb_nORD_ST   = nORD_ST;
  assign tb_nORU_ST   = nORU_ST;
  assign tb_nJRD_OUT  = nJRD_OUT;
  assign tb_nJRU_OUT  = nJRU_OUT;
  assign tb_nIRD_OUT  = nIRD_OUT;
  assign tb_nIRU_OUT  = nIRU_OUT;
  assign tb_nOE       = nOE;
  assign tb_nWE       = nWE;
  assign tb_Z_FLAG    = Z_FLAG;
  assign tb_C_FLAG    = C_FLAG;

  initial begin
    // Initialize
    // PC
    STOREBUS = 4'b0000;
    nJRD_ST = 1'bz;
    nJRU_ST = 1'bz;
    nORD_ST = 1'bz;
    nORU_ST = 1'bz;
    nIRU_OUT = 1'bz;
    nIRD_OUT = 1'bz;
    nJRU_OUT = 1'bz;
    nJRD_OUT = 1'bz;
    nPC_OPEN = 1'b1;
    // MEMORY
    nOE = 1'b1;
    nWE = 1'b1;
    PA = 8'hzz;
    IO  = 15'b000_0000_0000_0000;
    // INSTRUCTION DECODER
    Z_FLAG = 1'b0;
    C_FLAG = 1'b0;

    // Reset
    RESET = 1'b1;
    # (`TB_CYCLE * `TB_RESET_COUNT)
    RESET = 1'b0;
    # (`TB_CYCLE * `TB_RESET_COUNT)
    RESET = 1'b1;
    // Wait
    # (`TB_CYCLE * 4)
    // Load Firmware
    nWE = 1'b0;
    PA = 8'h00;
    IO  = 15'b00000_000_000_0000; // nop
    # (`TB_CYCLE)
    PA = 8'h01;
    IO  = 15'b00001_010_000_0010; // mov a 2
    # (`TB_CYCLE)
    PA = 8'h02;
    IO  = 15'b10100_010_010_0011; // add a a 3
    # (`TB_CYCLE)
    PA = 8'h03;
    IO  = 15'b00001_111_000_0100; // mov jrd 4
    # (`TB_CYCLE)
    PA = 8'h04;
    IO  = 15'b01100_000_000_0000; // jmp
    # (`TB_CYCLE)
    nWE = 1'b1;

    // Wait
    # (`TB_CYCLE * 4)
    // Check Firmware
    nOE = 1'b0;
    IO  = 15'bzzz_zzzz_zzzz_zzzz;
    PA = 8'h00;
    # (`TB_CYCLE)
    PA = 8'h01;
    # (`TB_CYCLE)
    PA = 8'h02;
    # (`TB_CYCLE)
    PA = 8'h03;
    # (`TB_CYCLE)
    PA = 8'h04;
    # (`TB_CYCLE)
    PA = 8'h05;
    # (`TB_CYCLE)
    nOE = 1'b1;

    // Start Program Counter
    // Reset
    RESET = 1'b1;
    # (`TB_CYCLE * `TB_RESET_COUNT)
    RESET = 1'b0;
    # (`TB_CYCLE * `TB_RESET_COUNT)
    RESET = 1'b1;
    // Release Program Counter
    nOE = 1'b0;
    nPC_OPEN = 1'b0;
    PA = 8'hzz;

    # (`TB_CYCLE * 10)

    $display("***** SIMULATION TIMEOUT ***** at %d", tb_cycle_count);
    $stop; // abort simulation

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
  REGISTERS U_REGISTERS(
    .RST(tb_RST),
    .CLK(tb_CLK),
    .PC_nLD(tb_PC_nLD),
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

  MEMORY U_MEMORY_BLOCk(
    .CLK(tb_CLK),
    .IM(tb_IM),
    .LR(tb_LR),
    .SR(tb_SR),
    .OP(tb_OP),
    .nOE(tb_nOE),
    .nWE(tb_nWE),
    .PA(tb_PA)
  );

  INSTRUCTION_DECODER U_INSTRUCTION_DECODER(
    .CLK(tb_CLK),
    .Z_FLAG(tb_Z_FLAG),
    .C_FLAG(tb_C_FLAG),
    .LR(tb_LR),
    .SR(tb_SR),
    .OP(tb_OP),
    .nA_OUT(tb_nA_OUT),
    .nB_OUT(tb_nB_OUT),
    .nIRU_OUT(tb_nIRU_OUT),
    .nIRD_OUT(tb_nIRD_OUT),
    .nJRU_OUT(tb_nJRU_OUT),
    .nJRD_OUT(tb_nJRD_OUT),
    .nA_ST(tb_nA_ST),
    .nB_ST(tb_nB_ST),
    .nORU_ST(tb_nORU_ST),
    .nORD_ST(tb_nORD_ST),
    .nJRU_ST(tb_nJRU_ST),
    .nJRD_ST(tb_nJRD_ST),
    .SEL(tb_SEL),
    .nFA_EN(tb_nFA_EN),
    .nAND_EN(tb_nAND_EN),
    .nOR_EN(tb_nOR_EN),
    .nXOR_EN(tb_nXOR_EN),
    .nSK_EN(tb_nSK_EN),
    .SP_D_nU(tb_SP_D_nU),
    .PC_nLD(tb_PC_nLD),
    .SPC(tb_SPC)
  );

endmodule
