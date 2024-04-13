## How it works

A resistor ladder between power and ground is used to generate 15 reference
voltages at regular intervals. The input signal is compared with each of them
to get the unary ADC output. To avoid loading the input too much, it goes
through some voltage followers before it gets to the comparators. Finally, a
digital encoder circuit converts the unary output to binary using a tree of
majority gates and multiplexers for error correction. The digital circuit also
implements some debugging logic.

## How to test

For basic operation, set the first two digital inputs to 0 and apply a voltage
between 0 and 1.8V to the analog input pin. The first four output pins should
give a binary readout.

The second set of four output pins samples the unary output at bits 1, 5, 9 and
13 to indicate if the input voltage is over some reference voltages.

Bidirectional pins are configured as outputs where the first four is an XOR of
some unary pins and the second four multiplexes unary pins using input pins 2 &
3 as a selector. Both features allow checking when the input signal crosses
one of the intermediate reference thresholds.

The circuit also provides debug functionality to independently check the ADC
and the encoder.

If the first input pin is set to 1, the circuit is in _encoder debug mode_
where the rest of the input pins as well as the bidirectional pins (which are
now turned into inputs) are used instead of the ADC.  The output pins function
as described above, the bidirectional pins obviously cannot provide output in
this case.

Otherwise, if the second input pin is set to 1, the circuit is in _ADC debug
mode_ where the raw unary output from the ADC is directly sent to the output
and bidirectional pins.

## External hardware

You can use your favourite microcontroller to generate an analog input by
outputting a PWM signal and adding an external capacitor to ground that
together with the microcontroller's built-in resistance makes a simple low-pass
RC filter.
