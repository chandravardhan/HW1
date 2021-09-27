`timescale 1ns/1ns
module full_adder1(s, cout, a, b, cin);
	
	input a, b;
	input cin;
	output s;
	output cout;
      wire s1, c1, c2;
      xor x1(s1, a, b);
      and a1(c1, a, b);
      xor x2(s, s1, cin);
      and a2(c2, s1, cin);
      xor x3(cout, c1, c2);
	
endmodule
	
	

module full_adder_RCA8bit(s, cout, a, b, cin);
	
	input [7:0] a, b;
	input cin;
	output [7:0] s;
	output cout;	
	wire c1, c2, c3, c4, c5, c6, c7;
	
	full_adder1 fa0(s[0], c1, a[0], b[0], cin);
	full_adder1 fa1(s[1], c2, a[1], b[1], c1);
	full_adder1 fa2(s[2], c3, a[2], b[2], c2);
	full_adder1 fa3(s[3], c4, a[3], b[3], c3);
	full_adder1 fa4(s[4], c5, a[4], b[4], c4);
	full_adder1 fa5(s[5], c6, a[5], b[5], c5);
	full_adder1 fa6(s[6], c7, a[6], b[6], c6);
	full_adder1 fa7(s[7], cout, a[7], b[7], c7);
	
endmodule
