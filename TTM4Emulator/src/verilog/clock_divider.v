module clock_divider(
  input  wire        rst,
  input  wire        clk,
  input  wire [31:0] divide,
  output wire        clock_out
  );

  reg  [15:0] cnt;
  wire [31:0] divide_half;
  reg         clk_tmp;

  assign divide_half = divide / 2 - 1;

  always @(posedge clk or posedge rst) begin
    if (rst == 1'b1) begin
      cnt <= 16'h0000;
    end
    else begin
      if (cnt == divide_half) begin
        cnt <= 16'h0000;
      end
      else begin
        cnt <= cnt + 1'b1;
      end
    end
  end

  always @(posedge clk or posedge rst) begin
    if (rst == 1'b1) begin
      clk_tmp <= 1'b0;
    end
    else begin
      if (cnt == divide_half) begin
        clk_tmp <= ~clk_tmp;
      end
      else begin
        clk_tmp <= clk_tmp;
      end
    end
  end

  assign clock_out = clk_tmp;

endmodule // clock_divider
