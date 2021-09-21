import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer
from model.gates_A4_model import gates_A4
from cocotb.triggers import RisingEdge, FallingEdge, ClockCycles
import random

@cocotb.test()
async def adder_basic_test(dut):
    a = 1
    b = 1
    dut.a <= a
    dut.b <= b

    await Timer(2, units='ns')

    y1, y2, y3, y4, y5 = gates_A4(a, b) #Python outputs
    assert dut.y1.value == y1, f"AND gates_A4 result is incorrect: {dut.y1.value}, " \
                                    f"AND python output is {y1}"
    assert dut.y2.value == y2, f"OR gates_A4 result is incorrect: {dut.y2.value}, " \
                                    f"python outputs is: {gates_A4(a, b)}, " \
                                    f"0R python output is {y2}"
    assert dut.y3.value == y3, f"XOR gates_A4 result is incorrect: {dut.y3.value}, " \
                                    f"XOR python output is {y3}"
    assert dut.y4.value == y4, f"NAND gate result is incorrect: {dut.y4.value}, " \
                                    f"NAND python output is {y4}"
    assert dut.y5.value == y5, f"NOR gates_A4 result is incorrect: {dut.y5.value}, " \
                                    f"NOR python output is {y5}"

@cocotb.test()
async def adder_randomised_test(dut):
    for i in range(50):
        a = random.randint(0, 2)
        b = random.randint(0, 2)
        dut.a <= a
        dut.b <= b

        await Timer(2, units='ns')
        y1, y2, y3, y4, y5 = gates_A4(a, b) #Python outputs
    assert dut.y1.value == y1, "Randomised test failed with: {a}, {b}"
    assert dut.y2.value == y2
    assert dut.y3.value == y3
    assert dut.y4.value == y4
    assert dut.y5.value == y5