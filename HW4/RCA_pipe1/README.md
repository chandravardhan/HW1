# Pipeline Ripple Carry Adder
pipeline registers can be inserted into the combinational logic datapaths at stratcgic locations to partition the logic into groups with shorter paths. 
Pipelining reduces the number of levels in the blocks of combinational logic, shortens the datapaths between storage elements. and increases the throughput of the circuit, by allowing the clock to run faster. Pipclining becomes increasingly important in high-speed, wide-word data trans-mission and processing.

![img](/HW4/Pix/P5.png)

## There arc three major benefits derived from a pipeline of dedicated hardware:
(1) dedicated hardware performs the same single task in every clock cycle, without requiring scheduling to coordinate its use among other tasks. The operation begins with the arrival of data at every active edge of the clock , and ends in time to pass the results to the next stage o f the pipeline before the arrival of the neltt clock.  
(2) the logic to perfonn a single, dedicated task can be streamlined and optimized as a unit, to meet constraints on perfonnanee, area, and power, and  
(3) the da tapaths between adjacent stages of the pipeline a re short and direct, reducing the need for shared data buses, control and storage, and having relatively low interconnect capacitance,


## The design of a circuit with pipelincd datapaths must address the following issues:
(1) When should pipelining be considered ?  
(2) Where should the pipeline registers be inserted ? and  
(3) How much latency will be introduced by the pipeline?

## System Verilog code

![img](/HW4/Pix/P1.png)

## Testbench

![img](/HW4/Pix/P2.png)

## Gtkwave
![img](/HW4/Pix/P3.png)
