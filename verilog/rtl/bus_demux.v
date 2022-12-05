module bus_demux(
	output[7:0] out15,
	output[7:0] out14,
	output[7:0] out13,
	output[7:0] out12,
	output[7:0] out11,
	output[7:0] out10,
	output[7:0] out9,
	output[7:0] out8,
	output[7:0] out7,
	output[7:0] out6,
	output[7:0] out5,
	output[7:0] out4,
	output[7:0] out3,
	output[7:0] out2,
	output[7:0] out1,
	output[7:0] out0,
	input[3:0] sel,
	input[7:0] in,
	input en
);
	wire[7:0] t;
	genvar i;
	generate
		for(i=0;i<8;i=i+1)
		begin: tribuf_d
			bufif1(t[i],in[i],en);
		end
	endgenerate
	demux d0(
		.out({out15[0],out14[0],out13[0],out12[0],out11[0],out10[0],out9[0],out8[0],out7[0],out6[0],out5[0],out4[0],out3[0],out2[0],out1[0],out0[0]}),
		.in(t[0]),
		.sel(sel)
	);
	demux d1(
		.out({out15[1],out14[1],out13[1],out12[1],out11[1],out10[1],out9[1],out8[1],out7[1],out6[1],out5[1],out4[1],out3[1],out2[1],out1[1],out0[1]}),
		.in(t[1]),
		.sel(sel)
	);
	demux d2(
		.out({out15[2],out14[2],out13[2],out12[2],out11[2],out10[2],out9[2],out8[2],out7[2],out6[2],out5[2],out4[2],out3[2],out2[2],out1[2],out0[2]}),
		.in(t[2]),
		.sel(sel)
	);
	demux d3(
		.out({out15[3],out14[3],out13[3],out12[3],out11[3],out10[3],out9[3],out8[3],out7[3],out6[3],out5[3],out4[3],out3[3],out2[3],out1[3],out0[3]}),
		.in(t[3]),
		.sel(sel)
	);
	demux d4(
		.out({out15[4],out14[4],out13[4],out12[4],out11[4],out10[4],out9[4],out8[4],out7[4],out6[4],out5[4],out4[4],out3[4],out2[4],out1[4],out0[4]}),
		.in(t[4]),
		.sel(sel)
	);
	demux d5(
		.out({out15[5],out14[5],out13[5],out12[5],out11[5],out10[5],out9[5],out8[5],out7[5],out6[5],out5[5],out4[5],out3[5],out2[5],out1[5],out0[5]}),
		.in(t[5]),
		.sel(sel)
	);
	demux d6(
		.out({out15[6],out14[6],out13[6],out12[6],out11[6],out10[6],out9[6],out8[6],out7[6],out6[6],out5[6],out4[6],out3[6],out2[6],out1[6],out0[6]}),
		.in(t[6]),
		.sel(sel)
	);
	demux d7(
		.out({out15[7],out14[7],out13[7],out12[7],out11[7],out10[7],out9[7],out8[7],out7[7],out6[7],out5[7],out4[7],out3[7],out2[7],out1[7],out0[7]}),
		.in(t[7]),
		.sel(sel)
	);
endmodule