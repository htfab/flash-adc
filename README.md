![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg)

# 4-bit flash ADC with binary encoder

A resistor ladder between power and ground is used to generate 15 reference
voltages at regular intervals. The input signal is compared with each of them
in turn to get a unary ADC output. To avoid loading the input too much, some
voltage followers are added before the comparators. Finally, a digital encoder
circuit with error correction converts the unary output to binary using a tree
of majority gates and multiplexers. The digital circuit also implements some
debugging logic.

[Read the full documentation](docs/info.md)

![chip layout](docs/flash-adc-layout.png)

