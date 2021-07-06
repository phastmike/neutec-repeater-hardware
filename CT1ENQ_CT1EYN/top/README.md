# Neutec Repetidor/Repeater


## PCB Assembly and fitting notes

After assembly, Costa's 555 (Motorola) was erratic at best (bad pin connection?). Changed it for a Philips one and problem solved. Repeater was not ungrabbing the PTT line at the end of transmition (id). The PTT sense circuit is very sensible. Adding a 100nf/10nf capacitor at the main J connector (8 pin molex) pin1 (ID_PTT) did improve the result. Also the ISD play auto ptt key up saw the 100uf removed. Probably it's not even needed or if added then a lower value, eventually a ceramic cap would suffice.

