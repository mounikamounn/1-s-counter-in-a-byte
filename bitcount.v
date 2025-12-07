module bitcount(b,r);
input [7:0]b;
output [3:0]r;
wire [5:0]c;
wire [3:0]s;

fulladder f1(b[7], b[6],b[5], s[0], c[0]);
fulladder f2(b[4], b[3],b[2], s[1], c[1]);
fulladder f3(c[0], c[1],c[3], s[2], c[2]);
fulladder f4(s[0], s[1],b[1], s[3], c[3]);
fulladder f5(1'b0, c[2],c[4], r[2], r[3]);
fulladder f6(1'b0, s[2],c[5], r[1], c[4]);
fulladder f7(1'b0, s[3],b[0], r[0], c[5]);

endmodule
