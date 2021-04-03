# Vibration activated trigger / LED

We use a Piezoelectric element with an operational amplifier (low power amplifier, LM386) to detect small movements. Sensitivity is controlled with potentiometer RV1.

A monostable 555-timer gets triggered, and can be continuously reset, to maintain stable output signal.

The output signal is in this case, driving a LED, but could be used to activate external devices, for example, the purpose of which this was made, an off-the-shelf GPS tracker.

Power supply should probably be 5v regulated... So consider using LM7805 or alternatives. I think a USB power supply connected to a 12v unregulated lead battery should be ok, 5-5.4 volts.

![PCB as rendered](./renders/full_circuit.png)

Schematic as PDF available [here](./renders/full_circuit.pdf)

Circuit consists of three components, which I try to explain here.

Latest revision 1.0.0 (first complete prototype).

## Mounting and physical information
Top plane is VCC (+5v), bottom plane is GND.

Mounting is supposed to be with 2x 3mm screw, 1x 2mm screw, 1x 1mm screw (just to test hole sizes).

Full PCB dimensions should be 43.18mm x 40.64mm.

The piezoelectric element needs to be well secured to the vibrating thing, be it your boat engine, your plane or your car. It can very well be a piezoelectric speaker.

## Component: Trigger
The high voltage generated when a piezoelectric crystal is exposed to mechanical load, is compared using LM386 low power amplifier (Voltage Comparator configuration), to an adjustable reference voltage up to VCC (+5v).

I think I ended up with using the LM386 because it had more gain than a standard operational amplifier, but I cannot remember fully. The breadboard edition was tested a year ago.

![Trigger](./renders/comp1.png)

## Component: Monostable 555
The trigger signal from last component is used to reset a monostable 555 timer. It should toggle output high and take roughly 30 seconds due to size of R6 and C2 before output is low. It is resettable, by activating Q2, which drains C2 when triggered. This means the output signal will be stable, and can be kept high under prolonged vibrations.

![Monostable 555](./renders/comp2.png)

## Component: Load
The load is a placeholder for your important equipment. In this example, Q3 turns on LED D1 when input signal is high. Feel free to replace this component with whatever you want to turn on. This is supposed to turn on power to an off-the-shelf GPS tracker.

![Load](./renders/comp3.png)

## BOM
See [xlsx](./BOM.xlsx) for an attempt at BOM.

## Reason
I wanted to track small boats without electric system, using battery power. The vibration from the outboard engine would activate the off-the-shelf GPS tracker, and keep it running while the boat is moving, but turn off when it is standing still. There is a bit of power consumption when disabled, but much less than keeping the GPS running all the time.

## Future work
- Make this all with SMD components.
- Do a better job on the routing.
- Find/make a nice casing.
- Find better connectors.
- Choose more suitable components (trimpot, low power components, 3.3v etc).
- Maybe do some calculations on power consumption.
- Consider making the software for tracking, as well.