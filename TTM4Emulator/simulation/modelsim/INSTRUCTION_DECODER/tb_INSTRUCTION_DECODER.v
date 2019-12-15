`timescale 1 ns / 10 ps // Time Unit / Accuracy
`define TB_CYCLE        20     // 20ns (50MHz)
`define TB_RESET_COUNT  4      // Reset Count
`define TB_FINISH_COUNT 100    // Finish Count


module tb_INSTRUCTION_DECODER(
);

  wire       tb_RST;
  wire       tb_CLK;
  reg        tb_Z_FLAG;
  reg        tb_C_FLAG;
  wire [2:0] tb_LR;
  wire [2:0] tb_SR;
  wire [4:0] tb_OP;
  wire       tb_nA_OUT;
  wire       tb_nB_OUT;
  wire       tb_nIRU_OUT;
  wire       tb_nIRD_OUT;
  wire       tb_nJRU_OUT;
  wire       tb_nJRD_OUT;
  wire       tb_nA_ST;
  wire       tb_nB_ST;
  wire       tb_nORU_ST;
  wire       tb_nORD_ST;
  wire       tb_nJRU_ST;
  wire       tb_nJRD_ST;
  wire [1:0] tb_SEL;
  wire       tb_nFA_EN;
  wire       tb_nAND_EN;
  wire       tb_nOR_EN;
  wire       tb_nXOR_EN;
  wire       tb_nSK_EN;
  wire       tb_SP_D_nU;
  wire       tb_PC_nLD;
  wire       tb_SPC;

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
  reg [2:0] LR;
  reg [2:0] SR;
  reg [4:0] OP;

  assign tb_LR = LR;
  assign tb_SR = SR;
  assign tb_OP = OP;

  initial begin
  tb_Z_FLAG = 1'b0;
  tb_C_FLAG = 1'b0;
  LR = 3'b000;
  SR = 3'b000;
  OP = 5'b00000;
  // Release Reset
  # (`TB_CYCLE * `TB_RESET_COUNT * 2)
  // Wait
  # (`TB_CYCLE * 5)
  OP = 5'b00001; // mov
  SR = 3'b0x1;
  LR = 3'bx1x;
  # (`TB_CYCLE )
  OP = 5'b10001; // xor
  SR = 3'b0x1;
  LR = 3'bx1x;
  # (`TB_CYCLE )
  OP = 5'b10000; // and
  SR = 3'b0x1;
  LR = 3'bx1x;
  # (`TB_CYCLE )
  OP = 5'b10010; // or
  SR = 3'b0x1;
  LR = 3'bx1x;
  # (`TB_CYCLE )
  OP = 5'b10100; // add
  SR = 3'b0x1;
  LR = 3'bx1x;
  # (`TB_CYCLE )
  OP = 5'b10110; // sub
  SR = 3'b0x1;
  LR = 3'bx1x;
  # (`TB_CYCLE )
  OP = 5'b10111; // cmp
  SR = 3'b0x1;
  LR = 3'bx1x;
  # (`TB_CYCLE )
  OP = 5'b01100; // jmp
  SR = 3'bxxx;
  LR = 3'bxxx;
  # (`TB_CYCLE )
  OP = 5'b01010; // jnc
  SR = 3'bxxx;
  LR = 3'bxxx;
  # (`TB_CYCLE )
  OP = 5'b01011; // jc
  SR = 3'bxxx;
  LR = 3'bxxx;
  # (`TB_CYCLE )
  OP = 5'b01110; // jnz
  SR = 3'bxxx;
  LR = 3'bxxx;
  # (`TB_CYCLE )
  OP = 5'b01111; // jz
  SR = 3'bxxx;
  LR = 3'bxxx;
  # (`TB_CYCLE )
  OP = 5'b01001; // psh
  SR = 3'bxxx;
  LR = 3'bxxx;
  # (`TB_CYCLE )
  OP = 5'b01000; // pop
  SR = 3'bxxx;
  LR = 3'bxxx;

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
  INSTRUCTION_DECODER UINSTRUCTION_DECODER(
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
