module top(
  // System
  input  wire       RST,
  input  wire       CLK,
  output wire       LED_BO,
  output wire [3:0] LED,
  input  wire [3:0] KEY
  );

  // System

  parameter clk1ms_divide_ratio = 50000;

  wire       m_rst;
  wire       m_clk_1ms;
  wire [3:0] m_key;
  wire [3:0] m_pushed;

  assign m_key = ~KEY;
  assign m_rst = m_key[0] | ~RST;

  clock_divider U_CLOCK_1ms(.rst(m_rst), .clk(CLK), .divide(clk1ms_divide_ratio), .clock_out(m_clk_1ms));
  chatter U_KEY_1(.clk(m_clk_1ms), .key(m_key[0]), .pushed(m_pushed[0]));
  chatter U_KEY_2(.clk(m_clk_1ms), .key(m_key[1]), .pushed(m_pushed[1]));
  chatter U_KEY_3(.clk(m_clk_1ms), .key(m_key[2]), .pushed(m_pushed[2]));
  chatter U_KEY_4(.clk(m_clk_1ms), .key(m_key[3]), .pushed(m_pushed[3]));

  assign LED = 4'b0000;
  assign LED_BO = 1'b0;

  // TTM4
  TTM4 U_TTM4(
    .RST(m_rst),
    .CLK(CLK)
  );

endmodule // top
