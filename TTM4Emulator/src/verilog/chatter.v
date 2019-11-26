module chatter(
    input  wire clk, // 1kHz
    input  wire key,
    output wire pushed
  );

  reg [3:0] chatt1 = 4'h0;
  wire      chatt2;
  reg [3:0] chatt3 = 4'h0;
  reg       swena;

  always @(posedge clk) begin
    chatt1 <= {chatt1[2:0], key};
  end

  assign chatt2 = chatt1[3] | chatt1[2] | chatt1[1] | chatt1[0];

  always @(posedge clk) begin
    chatt3 <= {chatt3[2:0], chatt2};
  end

  always @(posedge clk) begin
    if (chatt3 == 4'b1110) begin
      swena <= 1'b1;
    end
    else begin
      swena <= 1'b0;
    end
  end

  assign pushed = swena;

endmodule // chatter
