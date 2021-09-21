# Full Adder (Using Nonblocking Assignments)

This example is similar to example 8. However, this example demonstrates how using nonblocking assignments leads to an incorrect/problematic model. The nonblocking assignment operator is the same as the less-than-or-equal-to operator ("<="). A nonblocking assignment gets its name because the assignment evaluates the RHS expression of a nonblocking statement at the beginning of a time step and schedules the LHS update to take place at the end of the time step.


## SystemVerilog:

This module substitutes all the ***blocking assignments*** for ***nonblocking assignments***. Note that **nonblocking** assignments can only be implemented inside an ***always*** statement. In this case, the ***always_comb*** (combinational) statement will react to any change in the input ports, **a**, **b**, and **cin**. This **always** statement is the short version for ***always @(a, b, cin)***. Every time an input value changes, this type of **always** statement is used to compute the respective combinational logic (**p**, **g**, **sum**, and **cout**). Moreover, the **nonblocking** assignments are evaluated concurrently. This means that the evaluation/computing of **p**, **g**, **sum**, and **cout** will be at the same time (leaving the new values from **p** and **g** out of the scope for **sum** and **cout**). The issue with using **nonblocking** assignments for combinational logic is the number of times each statement must be evaluated to obtain the correct output. For example, assume the input is 100 (a, b, cin), then after evaluation **p=1**, **p=0**, **sum=0**, and **cout=0**.  The sum is incorrect, but this is because the value of **p** was changed from 0 to 1 during the evaluation. Only during a second evaluation, the **sum** will be computed using the previous value obtained from **p=1**. Moreover, the value of **p** will be updated in **cout** after the second evaluation, and updating the value of **p**, results in **sum=1**, and **cout=0**. This is the reason why using the wrong assignment is a problem. Multiple evaluations result in more time-consuming simulations.


![img](/Img/FA4_32.png)


# Python code

![img](/Img/FA2_32.png)

# Testbench

![img](/Img/FA3_32.png)

# Results

![img](/Img/FA1_32.png)
