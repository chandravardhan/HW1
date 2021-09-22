#  D Flip-Flop with Reset
The D-Type Flip-Flop with Reset models are generic clocked data-type Flip-Flop with either asynchronous or synchronous set and reset inputs. The Q and QN outputs can change state only on the specified clock edge unless the asynchronous set or reset is asserted.

# Asynchronous Ressetable Register and Synchronous Ressetable Register

This example covers the design of a synchronous ressetabl register and asynchronous ressetable register, which was cover previously. Synchronous reset requires an active clock, incurs certain clock-cycle related latency and may impact the timing of the data paths. An asynchronous counter, different flip flops are triggered with different clock, not simultaneously.

 In this case, the register is a resettable D 
Flip-Flop. In an asynchronous design, the reset only occurs on the rising edge of the clock.

## SystemVerilog:

This module is almost the same with the module covered in ff_20. The difference is the implementation of the **reset** port. Also, an ***if-else*** statement is implemented as the procedure of the ***always*** statement. The procedure assigns the binary value **00** to the output **q** if **reset** is 1 (True). Otherwise, the output **q** is the same as the input **d**.

![img](/Img/FFR1.png)


# Python code

![img](/Img/FFR2.png)


# Testbench

![img](/Img/FFR3.png)


# Results

![img](/Img/FFR4.png)
