module ram_cell(
	output reg rd,
	input wr,
	input rd_wr,
	input clk
);
	/* wire t1,t2;
	not n1(rd_wr_bar,rd_wr);
	bufif1 b1(t1,wr,rd_wr);
	bufif1 b2(rd,t2,rd_wr);
	not n2(t2,t1);
	not n3(t1,t2); */
	reg mem;
	always @(posedge clk)
		if(rd_wr)
			mem<=wr;
		else
			rd<=mem;
endmodule