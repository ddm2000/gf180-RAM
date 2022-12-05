module ram_byte(
	output[7:0] data_out,
	input[7:0] data_in,
	input rd_wr,
	input clk
);
	genvar i;
	generate
		for(i=0;i<8;i=i+1)
		begin: ram1
			ram_cell rc(
				.rd(data_out[i]),
				.wr(data_in[i]),
				.rd_wr(rd_wr),
				.clk(clk)
			);
		end
	endgenerate
endmodule