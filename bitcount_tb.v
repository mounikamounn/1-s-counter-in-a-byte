module bitcount_tb();
reg [7:0]b;
wire [3:0]r;
integer i;

bitcount dut(b,r);

initial
	b=8'b0;

initial
begin
	for(i=0;i<=256;i=i+1)
	begin
	b=i;
	#2;
	$display("byte=%b 1bitcount=%d ",b,r);
	end
	#520 $finish;
end
endmodule
	