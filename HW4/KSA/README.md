
# Kogge–Stone adder
Kogge Stone Adder: Kogge-stone adder is a parallel prefix form of Carry Look-ahead Adder. Kogge-Stone adder can be represented as a parallel prefix graph consisting of carry operator nodes. The time required to generate carry signals in this prefix adder is o (log n). It is the fastest adder with focus on design time and is the common choice for high performance adders in industry. The better performance of Kogge-Stone adder is because of its minimum logic depth and bounded fan-out. It is the common design for high-performance adders in industry. It has a lower fan-out at each stage, which increases performance

![img](/HW4/Pix/K5.png)

## The architecture of Kogge-Stone Adder 
This consists of three processing circuits namely-  
1) pre-processing,  
2) carry and  
3) post-processing blocks 

![img](/HW4/Pix/K4.png)

The architecture of Kogge-Stone Adder and Carry Look Ahead Adder is somewhat similar.

i. Pre-Processing Block: This is the initial stage of the Parallel Prefix Adder, it’s used to generate the Propagated signal and generated signal and this signal
are computed for the given inputs by using following the equations.  
Pi = Ai XOR Bi            
 
Gi = Ai AND Bi            

ii. Carry Generation Block: Carry generated stage is  most important block in this adder design. It consists of two components such as Block Cell and Gray Cell.
Block Cell is used to produce the Generated signal and Propagated signal, needed to the calculation of the next stage. Gray Cell is used to produce only Generated
signal and this signal utilized or needed in the calculation of the Sum in next stage. Black Cell: The black cell operator receives 2 set of generate and propagate signals (Gi, Pi) and (Gj, Pj) compute one set of generate and propagate signals (G, P).  
G = Gi OR (Pi AND Pj)  

P = Pi AND Pj              
Gray Cell: The Gray operator receives two set of generate and propagate signals (Gi, Pi) and (Gj, Pj) compute one set of generate signals (G).

G = Gi OR (Pi AND Pj)

iii. Post Processing Block: This is the final stage of the adder; Sum and Carry are the final outcome of the adder.  

Si = Pi XOR Ci-1

## System Verilog code

![img](/HW4/Pix/K1.png)
![img](/HW4/Pix/K1a.png)


## Testbench

![img](/HW4/Pix/K2.png)


## Gtkwave
![img](/HW4/Pix/K3.png)
