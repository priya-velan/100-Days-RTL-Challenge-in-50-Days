module test();
reg d,clock;  // don’t declare as inputs [error: variable input ports can’t be driven]
wire q,qbar;

dff tb(.qbar(qbar), .q(q), .d(d),  .clock(clock)); 


initial
  $monitor("simtime = %t, clock = %b, d_in = %b, q = %b, qb = %b", $time, clock, d, q, qbar);


initial 
begin
  clock=0;
     forever #2 clock = ~clock;  
end 

initial
 begin 
 d = 0;
 #5
 d = 1;
 #5
 d = 0;
 #5
 d = 1;
 #5
 
$finish();  
 end 
endmodule
