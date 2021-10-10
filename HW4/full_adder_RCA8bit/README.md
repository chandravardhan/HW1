# Ripple Carry Adder

A ripple carry adder is a logic circuit in which the carry-out of each full adder is the carry in of the succeeding next most significant full adder. It is called a ripple carry adder because each carry bit gets rippled into the next  stage. In a ripple carry adder the sum and carry out bits of any half adder stage is not valid until the carry in of that stage occurs.Propagation delays inside the logic circuitry is the reason behind this. Propagation delay is time elapsed between the application of an input and occurance of the corresponding output. Consider a NOT gate, When the input is “0” the output will be “1” and vice versa. The time taken for the NOT gate’s output to become “0” after the application of logic “1” to the NOT gate’s input is the propagation delay here. Similarly the carry propagation delay is the time elapsed between the application of the carry in signal and the occurance of the carry out (Cout) signal.  
Multiple full adder circuits can be cascaded in parallel to add an N-bit number. For an N- bit parallel adder, there must be N number of full adder circuits. The figure below shows an example of 4-bits Ripple Carry Adder (RCA).

![img](/HW4/Pix/R5.png)

## System Verilog code

![img](/HW4/Pix/R1.png)

## Testbench

![img](/HW4/Pix/R2.png)

## Gtkwave

![img](/HW4/Pix/R3.png)

