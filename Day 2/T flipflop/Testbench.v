module tb;
  reg clk, rst_n;    // Define clk and rst_n as registers
  reg t;             // Define t as a register
  wire q, q_bar;     // Define q and q_bar as wires
  
  tff dff(.qbar(q_bar), .q(q), .t(t), .clock(clk), .rst(rst_n));
  
  initial
    $monitor("simtime = %t, clock = %b, t = %b, q = %b, qb = %b", $time, clk, t, q, q_bar);

  
  always #2 clk = ~clk;  // Clock generation
  
  initial begin
    clk = 0; rst_n = 0;
    $display("Reset=%b --> q=%b, q_bar=%b", rst_n, q, q_bar);
    #3 rst_n = 1;
    $display("Reset=%b --> q=%b, q_bar=%b", rst_n, q, q_bar);
    
    // Drive sequences
    @(posedge clk);  // Wait for positive edge of clk
t=0 ;
#5
t=1 ;
#5
t=0 ;
#5
t=1 ;
#5
  $finish;         // Finish simulation
  end
endmodule
