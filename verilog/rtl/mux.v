module mux(
	output out,
	input[15:0] in,
	input[3:0] sel
);
	wire[15:0] t;
	wire[3:0] selbar;
	genvar i;
	generate
		for(i=0;i<4;i=i+1)
		begin: ng
			not n(selbar[i],sel[i]);
		end
	endgenerate
	and a0(t[0],in[0],selbar[0],selbar[1],selbar[2],selbar[3]);
	and a1(t[1],in[1],sel[0],selbar[1],selbar[2],selbar[3]);
	and a2(t[2],in[2],selbar[0],sel[1],selbar[2],selbar[3]);
	and a3(t[3],in[3],sel[0],sel[1],selbar[2],selbar[3]);
	and a4(t[4],in[4],selbar[0],selbar[1],sel[2],selbar[3]);
	and a5(t[5],in[5],sel[0],selbar[1],sel[2],selbar[3]);
	and a6(t[6],in[6],selbar[0],sel[1],sel[2],selbar[3]);
	and a7(t[7],in[7],sel[0],sel[1],sel[2],selbar[3]);
	and a8(t[8],in[8],selbar[0],selbar[1],selbar[2],sel[3]);
	and a9(t[9],in[9],sel[0],selbar[1],selbar[2],sel[3]);
	and a10(t[10],in[10],selbar[0],sel[1],selbar[2],sel[3]);
	and a11(t[11],in[11],sel[0],sel[1],selbar[2],sel[3]);
	and a12(t[12],in[12],selbar[0],selbar[1],sel[2],sel[3]);
	and a13(t[13],in[13],sel[0],selbar[1],sel[2],sel[3]);
	and a14(t[14],in[14],selbar[0],sel[1],sel[2],sel[3]);
	and a15(t[15],in[15],sel[0],sel[1],sel[2],sel[3]);
	or o0(out,t[0],t[1],t[2],t[3],t[4],t[5],t[6],t[7],t[8],t[9],t[10],t[11],t[12],t[13],t[14],t[15]);
endmodule