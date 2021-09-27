# Adder
An adder is a digital circuit that adds two numbers together. Many computers and other types of processors use adders in their arithmetic logic units, or ALU. Many signal processing processors use a faster adder, the Kogge Stone adder, to perform the fastest arithmetic function. The adder's operation speed is limited by propagation from input to output.

## Kogge–Stone adder
The Kogge–Stone adder takes up more space than the Brent–Kung adder to implement, but it has less fan-out at each step, resulting in better performance for conventional CMOS process nodes. However, wiring congestion is a regular problem with Kogge–Stone adders.
The Kogge–Stone adder takes up more space than the Brent–Kung adder to implement, but it has a reduced fan-out at each stage, which improves performance for normal CMOS process nodes. Wiring congestion, on the other hand, is a common issue with Kogge–Stone adders.

## Ripple Carry Adder
This is an adder's "base" scheme. And I believe that using pipelining is the greatest way to speed things up. This is a collection of full adders, with each full adder's input Carry in equal to the previous adder's Carry out. As a result, the carry line links entire adders together in a chain. Multiple complete adders can be used to make a logical circuit that adds N-bit values. Each full adder takes in a Cin, which is the previous adder's Cout. Because each carry bit "ripples" to the next complete adder, this type of adder is known as a ripple-carry adder (RCA). It's worth noting that the first (and only the first) complete adder can be replaced with a half adder (assuming Cin = 0).

![img](/HW4/Pix/RCA1.png)
## Pipeline Carry Ripple Adder
A pipeline adder is one of the fast adders that works on the pipelining idea. Unlike combinational adders like Ripple, this is a sequential adder. Carry Adder, Carry Adder, Carry Adder, Carry Adder, Carr Carry, Skip Adder Take a look forward. A storage element and a clock are required by adder and other similar programs.

