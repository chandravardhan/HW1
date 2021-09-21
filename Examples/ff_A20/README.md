Register
In Verilog, the term register merely means a variable that can hold a value. Unlike a net, a register does not need a driver. Verilog registers do not need a clock as hardware registers do. Values of registers can be changed anytime in a simulation by assigning a new value to the register."  A D (or Delay) Flip Flop is a digital electronic circuit used to delay the change of state of its output signal (Q) until the next rising edge of a clock timing input signal occurs.
This example covers the design of a D Flip-Flop. In this design, the positive edge of a clock is used to trigger 
the D Flip-Flop. 

## SystemVerilog:

This module declares an individual input port for the **clock** aside from the rest of the ports. In D flip flop, the single input "D" is referred to as the "Data" input. When the data input is set to 1, the flip flop would be set, and when it is set to 0, the flip flop would change and become reset. ... When the clock input is set to true, the D input condition is only copied to the output Q.

![img](/Img/FF1.png)


## Python code
![img](/Img/FF2.png)

## Testbench
![img](/Img/FF3.png)

## Results
![img](/Img/FF4.png)
