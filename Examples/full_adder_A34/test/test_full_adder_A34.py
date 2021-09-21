import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer
from model.full_adder_A34_model import full_adder_A34
from cocotb.triggers import RisingEdge, FallingEdge, ClockCycles
import random

@cocotb.test()
async def adder_randomised_test(dut):
    for i in range(50):
        a = random.randint(0, 1)
        b = random.randint(0, 1)
        c_in = random.randint(0, 1)
        dut.a <= a
        dut.b <= b
        dut.c_in <= c_in


    await Timer(2, units='ns')
    cycle = i+1
    p, g, ps, pc_out,  tp, tg, lv = full_adder_A34(a, b, c_in)
    assert dut.p.value == p, f"output was incorrect on the {cycle}th cycle\n"\
                             f"Executed level: {lv}\n" \
                             f"SV P is: {dut.p.value}, " \
                             f"Python P is: {p}"
    assert dut.g.value == g, f"output was incorrect on the {cycle}th cycle\n" \
                             f"Executed level: {lv}\n" \
                             f"SV g is: {dut.g.value}, " \
                             f"Python P is: {g}"

    #to solve the 'x' issue change the COCOTB_RESOLVE_X to "ZEROS"
    assert dut.s.value == ps, f"output was incorrect on the {cycle}th cycle\n" \
                              f"Executed level: {lv}\n" \
                              f"Prev p, g:  {tp}, {tg}\n" \
                              f"Inputs: {a}, {b}, {c_in}\n" \
                              f"SV P is: {dut.ps.value}, ({dut.ps.value}_{dut.g.value}_{dut.s.value}_{dut.c_out.value}), "

    assert dut.c_out.value == pc_out, f"output was incorrect on the {cycle}th cycle\n" \
                                      f"Executed level: {lv}\n" \
                                      f"Prev p, g:  {tp}, {tg}\n" \
                                      f"Inputs: {a}, {b}, {c_in}\n" \
                                      f"SV P is: {dut.c_out.value}, ({dut.p.value}_{dut.g.value}_{dut.s.value}_{dut.c_out.value})"
