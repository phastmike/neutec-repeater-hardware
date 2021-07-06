# Repeater Modification

The goal of this document is to describe the modification of the original circuit,
from CT4QC, to include the new desired behaviour introduced by CT1ENQ and CT1EYN.

This new behaviour features:

- Ability to disabled repeater identification (ID),
- Ability to select between Voice ID, Morse ID or no ID (as indicated above),
- Inhibit ID if repeater is in use.

Portuguese law requires that the repeaters have a voice id, every 10 minutes, 
a maximum timeout of 3 minutes (180 seconds) and a 5 seconds retrigger time.

There are various steps which can be followed that will achieve the same result, but
one thing is known,a new firmware must be flashed so we that we have more flexibility
and control.

## Limitations

As we will not build any hardware we must inherit some decisions like:

- ID Trigger not as reset but as input on pin 11 (P3.7)
- XTAL could be changed but lets consider the installed 4MHz.
- PCB is generic so we have limited in space (Keep it simple).

## Cenarios

### Cenario 1

Keep it simple, ignore morse code, avoid connecting/messing the 555 and to avoid
id, simple add a jumper for **`ToneDetector_ID_PTT`** when connecting to the bottom
board.

Also add a diode to NE567 output (pin 8) and check repeater use (common to all
scenarios).

This approach is very simple and is almost a crime not to do a little better if we are
messing with the repeater this deep.

### Cenario 2

Done is good, well done is much better. Add two jumpers (2 bit binary) to have a 4
option combination for ID. eg:

- Both, either one or none

**Optionally** add another jumper for long or short morse id:

- Short is just callsign **(`"de CQ0VBRG"`)**
- Long is Callsign + QTH Locator **(`"de CQ0VBRG IN51MT"`)**

Add a diode to NE567 output (pin 8) and check repeater use.

**A small shorcut is to avoid the long/short morse selection and simply reprogram the
controller if a new message is desired.**

## Changes

Changes to be preformed for **cenario 2**:

1. Remove ground (GND) from pin 19 (P1.7)
 - This pin controls morse id w/o QTH Locator (Short/Long).
 - Convert this or other pin to a jumper to allow selection of long vs short morse id
- New output pin for voice id trigger (ISD_PLAY) (pin 17).
- Resolder NE555 VCC jumper wire (is cut).
- Resolder Morse ID Audio wire (is cut).
- Add 2 jumpers for id type (Morse/CW)
- Add the diode to a input pin. Test connection to NE567 vs ToneDetector opencolector.


These changes are shown in the new schematic for this modification.

The new firmware is also supplied as source code and check the documentation of this
project for more details.

## Work done

On June 3, 2021 we (ct1enq and ct1eyn) preformed the change. The reset button was left
untouched and does not have any function associated. May add that in a future firmware.
Also, no long/short morse ID. The morse volume pot. may need to be changed (rusty?).
The algorithm for repeater use vs ID ~~should~~ was be improved.

## Document

This document is dated from May 2021. Written by CT1ENQ (callsign at gmail for email).

