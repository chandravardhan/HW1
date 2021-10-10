//KSA

module and2 (input wire i0, i1, output wire o);
	assign o = i0 & i1;
endmodule

module or2 (input wire i0, i1, output wire o);
	assign o = i0 | i1;
endmodule

module xor2 (input wire i0, i1, output wire o);
	assign o = i0 ^ i1;
endmodule

module xor3 (input wire i0, i1, i2, output wire o);
	wire temp;
	xor2 xor2_0 (i0, i1, temp);
	xor2 xor2_1 (i2, temp, o);
endmodule

module prop_gen(input wire x,y, output wire p,g);
	or2 o(x,y,p);
	and2 a(x,y,g);
endmodule

module carry(input wire p1,p0,g1,g0, output wire p, g);
	wire t;
	and2 a1(p1,p0,p);
	and2 a2(p1,g0,t);
	or2 o2(t,g1,g);
endmodule

module sum(input wire x, y, g, output wire s);
	xor3 x3(x,y,g,s);
endmodule

module KSA_8b (input wire [3:0] a,b, input wire cin, output wire [3:0] S);
	wire p[3:0],g[3:0];
	wire cp[3:0],cg[3:0];
	wire cp1, cg2, cp3, cg4;

	prop_gen p_0(a[0],b[0],p[0],g[0]);
	prop_gen p_1(a[1],b[1],p[1],g[1]);
	prop_gen p_2(a[2],b[2],p[2],g[2]);
	prop_gen p_3(a[3],b[3],p[3],g[3]);
	

	assign cp[0] = 1'b0;
	assign cg[0] = 1'b0;

	carry c0(p[0],1'b0,g[0],cin,cp[1],cg[1]);
	carry c1(p[1],cp[1],g[1],cg[1],cp[2],cg[2]);
	carry c2(cp2,cp[1],cg2,cg[1],cp[3],cg[3]);
	
	sum s0(a[0],b[0],cin,S[0]);
	sum s1(a[1],b[1],cg[1],S[1]);
	sum s2(a[2],b[2],cg[2],S[2]);
	sum s3(a[3],b[3],cg[3],S[3]);
	
endmodule
