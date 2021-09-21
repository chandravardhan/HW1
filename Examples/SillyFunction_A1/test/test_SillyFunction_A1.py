simport cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer
from model.SillyFunction_A1_model import SillyFunction_A1
from cocotb.triggers import RisingEdge, FallingEdge, ClockCycles
import random

@cocotb.test()
async def a1_basic_test(dut):
    a = 1
    b = 1
    c = 0
    dut.a <= a
    dut.b <= b
    dut.c <= c
    await Timer(2, units='ns')

    assert dut.y.value == SillyFunction_A1(a, b, c), f"SillyFunction_A1 result is incorrect: {dut.y.value}"

@cocotb.test()
async def silly_randomised_test(dut):
    for i in range(50):
        a = random.randint(0, 1)
        b = random.randint(0, 1)
        c = random.randint(0, 1)
        dut.a <= a
        dut.b <= b
        dut.c <= c

        await Timer(2, units='ns')

    assert dut.y.value == SillyFunction_A1(a, b, c), "Randomised test " \
                                                     "failed with: {a}, {b} {c}"
