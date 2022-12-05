module demux(
	output[15:0] out,
	input in,
	input[3:0] sel
);
	wire[3:0] selbar;
	genvar i;
	generate
		for(i=0;i<4;i=i+1)
		begin: ng
			not n(selbar[i],sel[i]);
		end
	endgenerate
	and a0(out[0],in,selbar[0],selbar[1],selbar[2],selbar[3]);
	and a1(out[1],in,sel[0],selbar[1],selbar[2],selbar[3]);
	and a2(out[2],in,selbar[0],sel[1],selbar[2],selbar[3]);
	and a3(out[3],in,sel[0],sel[1],selbar[2],selbar[3]);
	and a4(out[4],in,selbar[0],selbar[1],sel[2],selbar[3]);
	and a5(out[5],in,sel[0],selbar[1],sel[2],selbar[3]);
	and a6(out[6],in,selbar[0],sel[1],sel[2],selbar[3]);
	and a7(out[7],in,sel[0],sel[1],sel[2],selbar[3]);
	and a8(out[8],in,selbar[0],selbar[1],selbar[2],sel[3]);
	and a9(out[9],in,sel[0],selbar[1],selbar[2],sel[3]);
	and a10(out[10],in,selbar[0],sel[1],selbar[2],sel[3]);
	and a11(out[11],in,sel[0],sel[1],selbar[2],sel[3]);
	and a12(out[12],in,selbar[0],selbar[1],sel[2],sel[3]);
	and a13(out[13],in,sel[0],selbar[1],sel[2],sel[3]);
	and a14(out[14],in,selbar[0],sel[1],sel[2],sel[3]);
	and a15(out[15],in,sel[0],sel[1],sel[2],sel[3]);
endmodule