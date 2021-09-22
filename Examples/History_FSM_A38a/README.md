# History FSM (Finite State Machine)

Finite State Machines (FSM) are sequential circuit used in many digital systems to control the behavior of systems and dataflow paths. Examples of FSM include control units and sequencers. This lab introduces the concept of two types of FSMs, Mealy and Moore, and the modeling styles to develop such machines. This example covers the design for a ***finite state machine***

![img](/Img/N4.png)

## SystemVerilog:
SystemVerilog, standardized as IEEE 1800, is a hardware description and hardware verification language used to model, design, simulate, test and implement electronic systems. SystemVerilog is based on Verilog and some extensions, and since 2008 Verilog is now part of the same IEEE standard.

![img](/Img/FMS2.png)

## Python:
 A Python-Based Hardware Design Processing Toolkit for Verilog HDL. , an open-source toolkit for RTL design analysis and code generation of Verilog HDL. Pyverilog offers efficient functionality to implement a CAD tool that treats Verilog HDL with small amount of effort. This ***historyFSM*** function shows the behavior of the SV code. This function uses multiple global variables to keep track of previous values. Therefore, this python code is the replica of its verilog code.

![img](/Img/FMS1.png)


## Python Testbench:
A testbench allows us to verify the functionality of a design through simulations. It is a container where the design is placed and driven with different input .
This testbench follows the same procedure explained in the first introduction.

![img](/Img/FMS3.png)


## Results
![img](/Img/FMS4.png)
