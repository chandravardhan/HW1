import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer
from model.History_FSM_A38_model import History_FSM_A38
from cocotb.triggers import RisingEdge, FallingEdge, ClockCycles
import random

@cocotb.test()
async def History_FSM_A38_dff_simple(dut):

    clock = Clock(dut.clk, 10, units="us")  # Create a 10us period clock on port clk
    cocotb.fork(clock.start())  # Start the clock

    for i in range(10):
        a = random.randint(0, 1)
        r = random.randint(0, 1)
        dut.a <= a
        dut.reset <= r
        await FallingEdge(dut.clk)

        cycle = i=1
        px, py, pstate, pnext, ps, pn, n_c = History_FSM_A38(r, a)
    assert dut.state.value == pstate, f"output was incorrect on the {cycle}th cycle\n"\
                                          f"Inputs: {r}, {a}\n" \
                                          f"SV state is: {dut.state.value}, " \
                                          f"Python state is: {pstate} (init: state, next = {ps} {pn})"
    assert dut.nextstate.value == pnext, f"output was incorrect on the {cycle}th cycle\n" \
                                         f"Inputs: {r}, {a}\n" \
                                         f"SV nextstate is: {dut.nextstate.value}, " \
                                         f"Python nextstate is: {pstate} (init: state, next = {ps} {pn})"

    assert dut.x.value == px, f"output was incorrect on the {cycle}th cycle\n" \
                              f"Inputs: {r}, {a}\n" \
                              f"SV x is: {dut.x.value}" \
                              f"Python nextstate is: {px} (state, next = {pstate} {pnext})"
    assert dut.y.value == py, f"output was incorrect on the {cycle}th cycle\n" \
                              f"Inputs: {r}, {a}\n" \
                              f"SV y is: {dut.y.value}" \
                              f"Python nextstate is: {py} (state, next = {pstate} {pnext})"