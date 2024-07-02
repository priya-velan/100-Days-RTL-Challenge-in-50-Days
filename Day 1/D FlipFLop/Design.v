`timescale 1ps/1ps
module dff(qbar,q,d,clock);
input d,clock;
output qbar;
output reg q; // To assign valus to qbar, q values must be stored
always@(posedge clock) begin
q<=d;
end
assign qbar= ~q;
endmodule
