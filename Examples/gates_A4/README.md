# Logic Gates

This example covers a behavioral model that implements combinational logic to create logic gates. The designed gates include AND, OR, XOR NAND, and NOR gates. Moreover, the ports in this example use 2-bit busses.


##SystemVerilog:

The module named gates use the “#(parameter ..)” statement to define the parameter w (width). This parameter represents the value for the width of the busses. In this case, the inputs and outputs have 2-bit busses. To define the width of a bus, the “[#:#]” expression is used in the port declaration. Now to design each gate, the respective logic operators were used, and then each output was assigned to an individual output port. For example, output y1 is the output for the AND gate. Since there are five gates, the outputs are five as well, y1 – y5.

![img](/Img/GT1.png)

## Python:
This gate function replicates the behavior of the SV code.

![img](/Img/GT2.png)

## Python Testbench:
![img](/Img/GT3.png)

## Results
![img](/Img/GT4.png)
