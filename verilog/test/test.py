import cocotb
from cocotb.triggers import RisingEdge, FallingEdge, Timer, ClockCycles

@cocotb.test()
async def test(dut):
    dut._log.info("start")

    try:
        dut.VPWR.value = 1
        dut.VGND.value = 0
    except AttributeError:
        pass

    for selector in range(4):
        for value in range(16):
            unary_value = (1 << value) - 1
            dut.ui_in.value = selector << 2
            dut.uio_in.value = 0
            dut.from_adc.value = unary_value
            await Timer(20, units='ns')
            assert dut.uio_oe.value == 0xff
            uo_out_lo = dut.uo_out.value & 0x0f
            uo_out_hi = (dut.uo_out.value & 0xf0) >> 4
            uio_out_lo = dut.uio_out.value & 0x0f
            uio_out_hi = (dut.uio_out.value & 0xf0) >> 4
            assert uo_out_lo == value
            assert bool(uo_out_hi & 0x01) == bool(unary_value & 0x0002)
            assert bool(uo_out_hi & 0x02) == bool(unary_value & 0x0020)
            assert bool(uo_out_hi & 0x04) == bool(unary_value & 0x0200)
            assert bool(uo_out_hi & 0x08) == bool(unary_value & 0x2000)
            assert uio_out_lo == (
                    unary_value ^ (unary_value >> 4) ^
                    (unary_value >> 8) ^ (unary_value >> 12)
                    ) & 0xf
            assert uio_out_hi == (unary_value >> (4 * selector)) & 0x0f

    dut.ui_in.value = 2
    dut.uio_in.value = 0
    dut.from_adc.value = 0x7e57
    await Timer(20, units='ns')
    assert dut.uo_out.value == 0x57
    assert dut.uio_out.value == 0x7e
    assert dut.uio_oe.value == 0xff

    dut.ui_in.value = 0xfb
    dut.uio_in.value = 0x0f
    dut.from_adc.value = 0x7e57
    await Timer(20, units='ns')
    assert dut.uo_out.value == 0x6b
    assert dut.uio_out.value == 0x75
    assert dut.uio_oe.value == 0x00

