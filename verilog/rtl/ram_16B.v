module ram_16B(

`ifdef USE_POWER_PINS
    inout vdd,		// User area 5.0V supply
    inout vss,		// User area ground
`endif

output[7:0] data_out,
input[7:0] data_in,
input[3:0] address,
input rd_wr,
input clk
);

wire[7:0] d[15:0],m[15:0];

wire rd_wr_bar;
not n(rd_wr_bar,rd_wr);

wire[15:0] t;
demux dx1(t,1'b1,address);

genvar i;
generate
	for(i=0;i<16;i=i+1)
	begin: ram16
		ram_byte rb(
			.data_out(m[i]),
			.data_in(d[i]),
			.rd_wr(rd_wr&t[i]),
			.clk(clk)
		);
	end
endgenerate

bus_demux dx(
	.out15(d[15]),
	.out14(d[14]),
	.out13(d[13]),
	.out12(d[12]),
	.out11(d[11]),
	.out10(d[10]),
	.out9(d[9]),
	.out8(d[8]),
	.out7(d[7]),
	.out6(d[6]),
	.out5(d[5]),
	.out4(d[4]),
	.out3(d[3]),
	.out2(d[2]),
	.out1(d[1]),
	.out0(d[0]),
	.in(data_in),
	.sel(address),
	.en(rd_wr)
);

bus_mux mx(
	.out(data_out),
	.in15(m[15]),
	.in14(m[14]),
	.in13(m[13]),
	.in12(m[12]),
	.in11(m[11]),
	.in10(m[10]),
	.in9(m[9]),
	.in8(m[8]),
	.in7(m[7]),
	.in6(m[6]),
	.in5(m[5]),
	.in4(m[4]),
	.in3(m[3]),
	.in2(m[2]),
	.in1(m[1]),
	.in0(m[0]),
	.sel(address),
	.en(rd_wr_bar)
);

endmodule