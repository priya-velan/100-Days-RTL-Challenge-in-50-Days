module test();
  reg clock;

  initial 
  begin
    clock = 0; // only initialize here
    $dumpfile("dump.vcd");
    $dumpvars(1, test);
  end

  always #10 clock = ~clock;  // don’t write inside initial block as its illegal

  initial #500 $finish(); // finish after 500 time units delay (if this statement isn’t used then prg will go on indefinitely)
endmodule
