module test();
reg j,k,clock;
wire q,qbar;

  jkff tb(.j(j), .k(k), .clock(clock), .q(q), .qbar(qbar));

initial
  $monitor("simtime = %t, clock = %b, j = %b, j = %b, q = %b, qb = %b", $time, clock, j,k, q, qbar);

initial begin
clock=0;
forever #2 clock=~clock;
end

initial begin
j=0;
k=0;
#5
j=1;
k=0;
#5
j=0;
k=1;
#5
j=1;
k=1;
#5
$finish();
end
endmodule
