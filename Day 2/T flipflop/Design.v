module tff(qbar,q,t,clock,rst) ;
input t,clock,rst ;
output reg q ;
output qbar ;
always @(posedge clock) begin
  if(!rst)
    q<=0;
  else if(t == 1'b1)
q<=~q;
else 
q<=q;
end
assign qbar=~q;
endmodule
