import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer
from model.full_adder_A8_model import full_adder_A8
from cocotb.triggers import RisingEdge, FallingEdge, ClockCycles
import random

@cocotb.test()
async def adder_basic_test(dut):
    a = 0
    b = 0
    cin = 0
    dut.a <= a
    dut.b <= b
    dut.cin <= cin

    await Timer(2, units='ns')
    s, cout = full_adder_A8(a, b, cin)
    assert dut.s.value == s, f"Adder result is incorrect: {dut.s.value}"
    assert dut.cout.value == cout, f"Adder result is incorrect: {dut.cout.value}"

@cocotb.test()
async def adder_randomised_test(dut):
    for i in range(50):
        a = random.randint(0, 1)
        b = random.randint(0, 1)
        cin = random.randint(0, 1)

        dut.a <= a
        dut.b <= b
        dut.cin <= cin

        await Timer(2, units='ns')
        s, cout = full_adder_A8(a, b, cin)
        assert dut.s.value == s, "Randomised test failed with: {a}, {b}, {cin}"
        assert dut.cout.value == cout



