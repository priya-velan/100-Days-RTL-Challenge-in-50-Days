module jkff(j, k, clock, q, qbar);
  input j, k, clock;
  output reg q;
  output qbar;

  always @(posedge clock) begin
    if (j == 1'b0 && k == 1'b1) 
      q <= 1'b0;
    else if (j == 1'b1 && k == 1'b0)
      q <= 1'b1;
    else if (j == 1'b0 && k == 1'b0)
      q <= q;
    else
      q <= ~q;
  end

  assign qbar = ~q;
endmodule
