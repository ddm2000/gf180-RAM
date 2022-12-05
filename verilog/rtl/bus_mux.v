module bus_mux(
	output[7:0] out,
	input[7:0] in15,
	input[7:0] in14,
	input[7:0] in13,
	input[7:0] in12,
	input[7:0] in11,
	input[7:0] in10,
	input[7:0] in9,
	input[7:0] in8,
	input[7:0] in7,
	input[7:0] in6,
	input[7:0] in5,
	input[7:0] in4,
	input[7:0] in3,
	input[7:0] in2,
	input[7:0] in1,
	input[7:0] in0,
	input[3:0] sel,
	input en
);
	wire[7:0] t[15:0];
	genvar i;
	generate
		for(i=0;i<8;i=i+1)
		begin: tribuf_m0
			bufif1(t[0][i],in0[i],en);
		end
		for(i=0;i<8;i=i+1)
		begin: tribuf_m1
			bufif1(t[1][i],in1[i],en);
		end
		for(i=0;i<8;i=i+1)
		begin: tribuf_m2
			bufif1(t[2][i],in2[i],en);
		end
		for(i=0;i<8;i=i+1)
		begin: tribuf_m3
			bufif1(t[3][i],in3[i],en);
		end
		for(i=0;i<8;i=i+1)
		begin: tribuf_m4
			bufif1(t[4][i],in4[i],en);
		end
		for(i=0;i<8;i=i+1)
		begin: tribuf_m5
			bufif1(t[5][i],in5[i],en);
		end
		for(i=0;i<8;i=i+1)
		begin: tribuf_m6
			bufif1(t[6][i],in6[i],en);
		end
		for(i=0;i<8;i=i+1)
		begin: tribuf_m7
			bufif1(t[7][i],in7[i],en);
		end
		for(i=0;i<8;i=i+1)
		begin: tribuf_m8
			bufif1(t[8][i],in8[i],en);
		end
		for(i=0;i<8;i=i+1)
		begin: tribuf_m9
			bufif1(t[9][i],in9[i],en);
		end
		for(i=0;i<8;i=i+1)
		begin: tribuf_m10
			bufif1(t[10][i],in10[i],en);
		end
		for(i=0;i<8;i=i+1)
		begin: tribuf_m11
			bufif1(t[11][i],in11[i],en);
		end
		for(i=0;i<8;i=i+1)
		begin: tribuf_m12
			bufif1(t[12][i],in12[i],en);
		end
		for(i=0;i<8;i=i+1)
		begin: tribuf_m13
			bufif1(t[13][i],in13[i],en);
		end
		for(i=0;i<8;i=i+1)
		begin: tribuf_m14
			bufif1(t[14][i],in14[i],en);
		end
		for(i=0;i<8;i=i+1)
		begin: tribuf_m15
			bufif1(t[15][i],in15[i],en);
		end
	endgenerate
	/* bufif1(t[0],in0,en);
	bufif1(t[1],in1,en);
	bufif1(t[2],in2,en);
	bufif1(t[3],in3,en);
	bufif1(t[4],in4,en);
	bufif1(t[5],in5,en);
	bufif1(t[6],in6,en);
	bufif1(t[7],in7,en);
	bufif1(t[8],in8,en);
	bufif1(t[9],in9,en);
	bufif1(t[10],in10,en);
	bufif1(t[11],in11,en);
	bufif1(t[12],in12,en);
	bufif1(t[13],in13,en);
	bufif1(t[14],in14,en);
	bufif1(t[15],in15,en); */
	mux m0(
		.out(out[0]),
		.in({t[15][0],t[14][0],t[13][0],t[12][0],t[11][0],t[10][0],t[9][0],t[8][0],t[7][0],t[6][0],t[5][0],t[4][0],t[3][0],t[2][0],t[1][0],t[0][0]}),
		.sel(sel)
	);
	mux m1(
		.out(out[1]),
		.in({t[15][1],t[14][1],t[13][1],t[12][1],t[11][1],t[10][1],t[9][1],t[8][1],t[7][1],t[6][1],t[5][1],t[4][1],t[3][1],t[2][1],t[1][1],t[0][1]}),
		.sel(sel)
	);
	mux m2(
		.out(out[2]),
		.in({t[15][2],t[14][2],t[13][2],t[12][2],t[11][2],t[10][2],t[9][2],t[8][2],t[7][2],t[6][2],t[5][2],t[4][2],t[3][2],t[2][2],t[1][2],t[0][2]}),
		.sel(sel)
	);
	mux m3(
		.out(out[3]),
		.in({t[15][3],t[14][3],t[13][3],t[12][3],t[11][3],t[10][3],t[9][3],t[8][3],t[7][3],t[6][3],t[5][3],t[4][3],t[3][3],t[2][3],t[1][3],t[0][3]}),
		.sel(sel)
	);
	mux m4(
		.out(out[4]),
		.in({t[15][4],t[14][4],t[13][4],t[12][4],t[11][4],t[10][4],t[9][4],t[8][4],t[7][4],t[6][4],t[5][4],t[4][4],t[3][4],t[2][4],t[1][4],t[0][4]}),
		.sel(sel)
	);
	mux m5(
		.out(out[5]),
		.in({t[15][5],t[14][5],t[13][5],t[12][5],t[11][5],t[10][5],t[9][5],t[8][5],t[7][5],t[6][5],t[5][5],t[4][5],t[3][5],t[2][5],t[1][5],t[0][5]}),
		.sel(sel)
	);
	mux m6(
		.out(out[6]),
		.in({t[15][6],t[14][6],t[13][6],t[12][6],t[11][6],t[10][6],t[9][6],t[8][6],t[7][6],t[6][6],t[5][6],t[4][6],t[3][6],t[2][6],t[1][6],t[0][6]}),
		.sel(sel)
	);
	mux m7(
		.out(out[7]),
		.in({t[15][7],t[14][7],t[13][7],t[12][7],t[11][7],t[10][7],t[9][7],t[8][7],t[7][7],t[6][7],t[5][7],t[4][7],t[3][7],t[2][7],t[1][7],t[0][7]}),
		.sel(sel)
	);
endmodule