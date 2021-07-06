EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "UHF Repeater NEUTEC 1630"
Date "2020-08-28"
Rev "0.4"
Comp "CT1ENQ, CT1EYN (Original CT4QC)"
Comment1 "CT4QC Original"
Comment2 "Adapted from"
Comment3 "Bottom (CTCSS, Carrier Delay Time and Time Out Timer)"
Comment4 ""
$EndDescr
$Comp
L Timer:NE567 U1
U 1 1 5F496A40
P 4350 2800
F 0 "U1" H 4100 3300 50  0000 C CNN
F 1 "NE567" H 4150 3200 50  0000 C CNN
F 2 "" H 4400 2450 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm567.pdf" H 4050 2800 50  0001 C CNN
	1    4350 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5F4A1D5E
P 4350 1800
F 0 "#PWR09" H 4350 1650 50  0001 C CNN
F 1 "+5V" H 4365 1973 50  0000 C CNN
F 2 "" H 4350 1800 50  0001 C CNN
F 3 "" H 4350 1800 50  0001 C CNN
	1    4350 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3150 4950 3000
$Comp
L Device:C C11
U 1 1 5F4A98D4
P 5250 3300
F 0 "C11" H 5365 3346 50  0000 L CNN
F 1 "1u" H 5365 3255 50  0000 L CNN
F 2 "" H 5288 3150 50  0001 C CNN
F 3 "~" H 5250 3300 50  0001 C CNN
	1    5250 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2800 5250 3150
Wire Wire Line
	4350 3200 4350 3450
$Comp
L Device:C C8
U 1 1 5F4C0491
P 3850 3300
F 0 "C8" H 3965 3346 50  0000 L CNN
F 1 "100n" H 3965 3255 50  0000 L CNN
F 2 "" H 3888 3150 50  0001 C CNN
F 3 "~" H 3850 3300 50  0001 C CNN
	1    3850 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F4C1991
P 3450 2800
F 0 "R3" V 3250 2800 50  0000 C CNN
F 1 "100k" V 3350 2850 50  0000 C CNN
F 2 "" V 3380 2800 50  0001 C CNN
F 3 "~" H 3450 2800 50  0001 C CNN
	1    3450 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5F4C21E3
P 3450 3100
F 0 "R4" V 3243 3100 50  0000 C CNN
F 1 "10k" V 3334 3100 50  0000 C CNN
F 2 "" V 3380 3100 50  0001 C CNN
F 3 "~" H 3450 3100 50  0001 C CNN
	1    3450 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5F4C3A1F
P 3150 2950
F 0 "RV1" H 3050 2800 50  0000 R CNN
F 1 "100k (31k)" H 3081 2905 50  0000 R CNN
F 2 "" H 3150 2950 50  0001 C CNN
F 3 "~" H 3150 2950 50  0001 C CNN
	1    3150 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3100 3850 3100
Wire Wire Line
	3850 2800 3600 2800
Wire Wire Line
	3300 2800 3150 2800
Wire Wire Line
	3300 2950 3300 3100
Wire Wire Line
	4350 1800 4350 1900
Wire Wire Line
	4700 1900 4350 1900
Connection ~ 4350 1900
Wire Wire Line
	4350 1900 4350 2400
Connection ~ 3850 3100
Wire Wire Line
	3850 3100 3850 3150
Wire Wire Line
	3850 3000 3850 3100
$Comp
L Device:C C2
U 1 1 5F4E2960
P 2000 2150
F 0 "C2" V 1748 2150 50  0000 C CNN
F 1 "1u" V 1839 2150 50  0000 C CNN
F 2 "" H 2038 2000 50  0001 C CNN
F 3 "~" H 2000 2150 50  0001 C CNN
	1    2000 2150
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5F4E2D55
P 2250 2350
F 0 "C3" H 2365 2396 50  0000 L CNN
F 1 "27pF (270K)" H 2100 1900 50  0000 L CNN
F 2 "" H 2288 2200 50  0001 C CNN
F 3 "~" H 2250 2350 50  0001 C CNN
	1    2250 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5F4E3389
P 1750 2350
F 0 "C1" H 1865 2396 50  0000 L CNN
F 1 "330p (331J)" H 1550 1900 50  0000 L CNN
F 2 "" H 1788 2200 50  0001 C CNN
F 3 "~" H 1750 2350 50  0001 C CNN
	1    1750 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2150 2250 2150
Wire Wire Line
	2250 2200 2250 2150
Wire Wire Line
	1850 2150 1750 2150
Wire Wire Line
	1750 2150 1750 2200
Connection ~ 1750 2150
Text GLabel 1550 2150 0    50   Input ~ 0
RX_Audio
Wire Wire Line
	1550 2150 1750 2150
Wire Wire Line
	3850 2150 3850 2600
$Comp
L Device:C C6
U 1 1 5F4E4334
P 3500 2150
F 0 "C6" V 3248 2150 50  0000 C CNN
F 1 "470n (.47u)" V 3350 2300 50  0000 C CNN
F 2 "" H 3538 2000 50  0001 C CNN
F 3 "~" H 3500 2150 50  0001 C CNN
	1    3500 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 2800 4950 2800
$Comp
L Device:C C9
U 1 1 5F4A9240
P 4700 2050
F 0 "C9" H 4815 2096 50  0000 L CNN
F 1 "330p" H 4815 2005 50  0000 L CNN
F 2 "" H 4738 1900 50  0001 C CNN
F 3 "~" H 4700 2050 50  0001 C CNN
	1    4700 2050
	1    0    0    -1  
$EndComp
Text Notes 2000 3600 0    50   ~ 0
f = 1 / (1.1 * (R3 + RV1 + R4) * C8)\nf = 1 / (1,1 * (100k+31k + 10k) * 100n)\nf = 1 / (1,1 * 141k * 100n)\nf = ~ 64,5Hz (67Hz)
$Comp
L Transistor_BJT:BC548 Q1
U 1 1 5F56C167
P 2550 2150
F 0 "Q1" V 2878 2150 50  0000 C CNN
F 1 "BC548B" V 2787 2150 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2750 2075 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 2550 2150 50  0001 L CNN
	1    2550 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F58DDA5
P 2650 1700
F 0 "R2" H 2720 1746 50  0000 L CNN
F 1 "15k" H 2720 1655 50  0000 L CNN
F 2 "" V 2580 1700 50  0001 C CNN
F 3 "~" H 2650 1700 50  0001 C CNN
	1    2650 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR04
U 1 1 5F592352
P 2650 1450
F 0 "#PWR04" H 2650 1300 50  0001 C CNN
F 1 "+12V" H 2665 1623 50  0000 C CNN
F 2 "" H 2650 1450 50  0001 C CNN
F 3 "" H 2650 1450 50  0001 C CNN
	1    2650 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F5B2DFE
P 2950 2350
F 0 "C4" H 3050 2400 50  0000 L CNN
F 1 "100n" H 2950 2250 50  0000 L CNN
F 2 "" H 2988 2200 50  0001 C CNN
F 3 "~" H 2950 2350 50  0001 C CNN
	1    2950 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5F5B353B
P 3250 2350
F 0 "C5" H 3365 2396 50  0000 L CNN
F 1 "27p" H 3300 2250 50  0000 L CNN
F 2 "" H 3288 2200 50  0001 C CNN
F 3 "~" H 3250 2350 50  0001 C CNN
	1    3250 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1850 2650 1950
$Comp
L Device:R R1
U 1 1 5F4E4995
P 2450 1950
F 0 "R1" V 2650 1950 50  0000 L CNN
F 1 "1.5M" V 2550 1900 50  0000 L CNN
F 2 "" V 2380 1950 50  0001 C CNN
F 3 "~" H 2450 1950 50  0001 C CNN
	1    2450 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3250 2200 3250 2150
$Comp
L Device:C C12
U 1 1 5F5EF679
P 5600 3300
F 0 "C12" H 5715 3346 50  0000 L CNN
F 1 "27p (270K)" H 5715 3255 50  0000 L CNN
F 2 "" H 5638 3150 50  0001 C CNN
F 3 "~" H 5600 3300 50  0001 C CNN
	1    5600 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3150 5600 2600
Connection ~ 5600 2600
$Comp
L Device:R R5
U 1 1 5F4BA79D
P 5250 2600
F 0 "R5" V 5457 2600 50  0000 C CNN
F 1 "1k8" V 5366 2600 50  0000 C CNN
F 2 "" V 5180 2600 50  0001 C CNN
F 3 "~" H 5250 2600 50  0001 C CNN
	1    5250 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 2600 5100 2600
Wire Wire Line
	5400 2600 5600 2600
$Comp
L power:GND #PWR08
U 1 1 5F64402A
P 3850 3450
F 0 "#PWR08" H 3850 3200 50  0001 C CNN
F 1 "GND" H 3855 3277 50  0000 C CNN
F 2 "" H 3850 3450 50  0001 C CNN
F 3 "" H 3850 3450 50  0001 C CNN
	1    3850 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5F647CD0
P 1750 2500
F 0 "#PWR01" H 1750 2250 50  0001 C CNN
F 1 "GND" H 1755 2327 50  0000 C CNN
F 2 "" H 1750 2500 50  0001 C CNN
F 3 "" H 1750 2500 50  0001 C CNN
	1    1750 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5F6484AB
P 2250 2500
F 0 "#PWR02" H 2250 2250 50  0001 C CNN
F 1 "GND" H 2255 2327 50  0000 C CNN
F 2 "" H 2250 2500 50  0001 C CNN
F 3 "" H 2250 2500 50  0001 C CNN
	1    2250 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5F648AC8
P 2650 2500
F 0 "#PWR03" H 2650 2250 50  0001 C CNN
F 1 "GND" H 2655 2327 50  0000 C CNN
F 2 "" H 2650 2500 50  0001 C CNN
F 3 "" H 2650 2500 50  0001 C CNN
	1    2650 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5F649271
P 2950 2500
F 0 "#PWR05" H 2950 2250 50  0001 C CNN
F 1 "GND" H 2955 2327 50  0000 C CNN
F 2 "" H 2950 2500 50  0001 C CNN
F 3 "" H 2950 2500 50  0001 C CNN
	1    2950 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5F649832
P 3250 2500
F 0 "#PWR06" H 3250 2250 50  0001 C CNN
F 1 "GND" H 3255 2327 50  0000 C CNN
F 2 "" H 3250 2500 50  0001 C CNN
F 3 "" H 3250 2500 50  0001 C CNN
	1    3250 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5F652EC0
P 4350 3450
F 0 "#PWR010" H 4350 3200 50  0001 C CNN
F 1 "GND" H 4355 3277 50  0000 C CNN
F 2 "" H 4350 3450 50  0001 C CNN
F 3 "" H 4350 3450 50  0001 C CNN
	1    4350 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5F656534
P 4950 3450
F 0 "#PWR012" H 4950 3200 50  0001 C CNN
F 1 "GND" H 4955 3277 50  0000 C CNN
F 2 "" H 4950 3450 50  0001 C CNN
F 3 "" H 4950 3450 50  0001 C CNN
	1    4950 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5F656B1E
P 5250 3450
F 0 "#PWR013" H 5250 3200 50  0001 C CNN
F 1 "GND" H 5255 3277 50  0000 C CNN
F 2 "" H 5250 3450 50  0001 C CNN
F 3 "" H 5250 3450 50  0001 C CNN
	1    5250 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5F657025
P 5600 3450
F 0 "#PWR014" H 5600 3200 50  0001 C CNN
F 1 "GND" H 5605 3277 50  0000 C CNN
F 2 "" H 5600 3450 50  0001 C CNN
F 3 "" H 5600 3450 50  0001 C CNN
	1    5600 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5F6573EF
P 4700 2200
F 0 "#PWR011" H 4700 1950 50  0001 C CNN
F 1 "GND" H 4705 2027 50  0000 C CNN
F 2 "" H 4700 2200 50  0001 C CNN
F 3 "" H 4700 2200 50  0001 C CNN
	1    4700 2200
	1    0    0    -1  
$EndComp
Connection ~ 2250 2150
Wire Wire Line
	2250 2150 2350 2150
$Comp
L Device:C C7
U 1 1 5F67DECB
P 3700 2350
F 0 "C7" H 3500 2400 50  0000 L CNN
F 1 "330p" H 3500 2250 50  0000 L CNN
F 2 "" H 3738 2200 50  0001 C CNN
F 3 "~" H 3700 2350 50  0001 C CNN
	1    3700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2150 3250 2150
Wire Wire Line
	3650 2150 3700 2150
Wire Wire Line
	3700 2200 3700 2150
Connection ~ 3700 2150
Wire Wire Line
	3700 2150 3850 2150
$Comp
L power:GND #PWR07
U 1 1 5F684D9B
P 3700 2500
F 0 "#PWR07" H 3700 2250 50  0001 C CNN
F 1 "GND" H 3705 2327 50  0000 C CNN
F 2 "" H 3700 2500 50  0001 C CNN
F 3 "" H 3700 2500 50  0001 C CNN
	1    3700 2500
	1    0    0    -1  
$EndComp
Text Notes 1050 2000 0    50   ~ 0
Receiver Audio\nLevel is controlled\nby receiver volume
$Comp
L Transistor_BJT:BC558 Q2
U 1 1 5F6A04A7
P 7400 2600
F 0 "Q2" H 7591 2554 50  0000 L CNN
F 1 "BC558C" H 7591 2645 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7600 2525 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 7400 2600 50  0001 L CNN
	1    7400 2600
	1    0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 5F6A28CF
P 6450 2600
F 0 "R10" V 6243 2600 50  0000 C CNN
F 1 "2k2" V 6334 2600 50  0000 C CNN
F 2 "" V 6380 2600 50  0001 C CNN
F 3 "~" H 6450 2600 50  0001 C CNN
	1    6450 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5F6B284D
P 7100 2350
F 0 "R11" H 7170 2396 50  0000 L CNN
F 1 "100k" H 7170 2305 50  0000 L CNN
F 2 "" V 7030 2350 50  0001 C CNN
F 3 "~" H 7100 2350 50  0001 C CNN
	1    7100 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 5F6B94FB
P 6750 2350
F 0 "C15" H 6865 2396 50  0000 L CNN
F 1 "2.2n" H 6865 2305 50  0000 L CNN
F 2 "" H 6788 2200 50  0001 C CNN
F 3 "~" H 6750 2350 50  0001 C CNN
	1    6750 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2600 6750 2600
Wire Wire Line
	7100 2500 7100 2600
Connection ~ 7100 2600
Wire Wire Line
	7100 2600 7200 2600
Wire Wire Line
	6750 2500 6750 2600
Connection ~ 6750 2600
Wire Wire Line
	6750 2600 7100 2600
$Comp
L power:+12V #PWR022
U 1 1 5F6C3165
P 6750 2200
F 0 "#PWR022" H 6750 2050 50  0001 C CNN
F 1 "+12V" H 6765 2373 50  0000 C CNN
F 2 "" H 6750 2200 50  0001 C CNN
F 3 "" H 6750 2200 50  0001 C CNN
	1    6750 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR024
U 1 1 5F6C3379
P 7100 2200
F 0 "#PWR024" H 7100 2050 50  0001 C CNN
F 1 "+12V" H 7115 2373 50  0000 C CNN
F 2 "" H 7100 2200 50  0001 C CNN
F 3 "" H 7100 2200 50  0001 C CNN
	1    7100 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR026
U 1 1 5F6C3552
P 7500 2200
F 0 "#PWR026" H 7500 2050 50  0001 C CNN
F 1 "+12V" H 7515 2373 50  0000 C CNN
F 2 "" H 7500 2200 50  0001 C CNN
F 3 "" H 7500 2200 50  0001 C CNN
	1    7500 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2200 7500 2400
$Comp
L Device:R R12
U 1 1 5F6C5889
P 7950 2850
F 0 "R12" H 7880 2804 50  0000 R CNN
F 1 "22k" H 7880 2895 50  0000 R CNN
F 2 "" V 7880 2850 50  0001 C CNN
F 3 "~" H 7950 2850 50  0001 C CNN
	1    7950 2850
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C16
U 1 1 5F6C6683
P 7150 3000
F 0 "C16" H 6900 3000 50  0000 L CNN
F 1 "27p" H 6900 2900 50  0000 L CNN
F 2 "" H 7188 2850 50  0001 C CNN
F 3 "~" H 7150 3000 50  0001 C CNN
	1    7150 3000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x07 J1
U 1 1 5F6C962F
P 1650 7100
F 0 "J1" H 1730 7142 50  0000 L CNN
F 1 "Conn_01x07" H 1730 7051 50  0000 L CNN
F 2 "" H 1650 7100 50  0001 C CNN
F 3 "~" H 1650 7100 50  0001 C CNN
	1    1650 7100
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C10
U 1 1 5F6CD1D6
P 4950 3300
F 0 "C10" H 4600 3300 50  0000 L CNN
F 1 "47u/25V" H 4600 3200 50  0000 L CNN
F 2 "" H 4988 3150 50  0001 C CNN
F 3 "~" H 4950 3300 50  0001 C CNN
	1    4950 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C17
U 1 1 5F6D376A
P 7500 3000
F 0 "C17" H 7600 3000 50  0000 L CNN
F 1 "2.2u" H 7600 2900 50  0000 L CNN
F 2 "" H 7538 2850 50  0001 C CNN
F 3 "~" H 7500 3000 50  0001 C CNN
	1    7500 3000
	1    0    0    -1  
$EndComp
Text GLabel 2100 7200 2    50   Input ~ 0
RX_Audio
Text GLabel 2100 7300 2    50   Input ~ 0
PTT
Text GLabel 2100 7400 2    50   Input ~ 0
+12V
Text GLabel 2100 7100 2    50   Input ~ 0
TX_Tone
Wire Wire Line
	1850 7400 2100 7400
Wire Wire Line
	1850 7300 2100 7300
Wire Wire Line
	1850 7200 2100 7200
Wire Wire Line
	1850 7100 2100 7100
Wire Notes Line
	2600 7600 1000 7600
Wire Notes Line
	1000 6650 2600 6650
Text GLabel 2100 6800 2    50   Input ~ 0
GND
Wire Wire Line
	1850 6800 2100 6800
Text Notes 1050 7550 0    50   ~ 0
Radio J201 Connector
Wire Notes Line
	2600 7600 2600 6650
Wire Notes Line
	1000 6650 1000 7600
$Comp
L Device:C C18
U 1 1 5F719925
P 8150 2350
F 0 "C18" H 8265 2396 50  0000 L CNN
F 1 "27p" H 8265 2305 50  0000 L CNN
F 2 "" H 8188 2200 50  0001 C CNN
F 3 "~" H 8150 2350 50  0001 C CNN
	1    8150 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR029
U 1 1 5F71BD33
P 8150 2200
F 0 "#PWR029" H 8150 2050 50  0001 C CNN
F 1 "+12V" H 8165 2373 50  0000 C CNN
F 2 "" H 8150 2200 50  0001 C CNN
F 3 "" H 8150 2200 50  0001 C CNN
	1    8150 2200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC338 Q3
U 1 1 5F721264
P 8450 2850
F 0 "Q3" H 8641 2896 50  0000 L CNN
F 1 "BC548B" H 8641 2805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8650 2775 50  0001 L CIN
F 3 "http://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337" H 8450 2850 50  0001 L CNN
	1    8450 2850
	1    0    0    -1  
$EndComp
Text GLabel 5550 1650 0    50   Input ~ 0
BrownWire_AT89C2051
Wire Wire Line
	5550 1650 5600 1650
Wire Wire Line
	5600 1650 5600 2600
$Comp
L Device:R R13
U 1 1 5F73E88D
P 8550 2350
F 0 "R13" H 8480 2304 50  0000 R CNN
F 1 "10k" H 8480 2395 50  0000 R CNN
F 2 "" V 8480 2350 50  0001 C CNN
F 3 "~" H 8550 2350 50  0001 C CNN
	1    8550 2350
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR027
U 1 1 5F74280C
P 8550 2200
F 0 "#PWR027" H 8550 2050 50  0001 C CNN
F 1 "+12V" H 8565 2373 50  0000 C CNN
F 2 "" H 8550 2200 50  0001 C CNN
F 3 "" H 8550 2200 50  0001 C CNN
	1    8550 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR030
U 1 1 5F742E1A
P 9350 2200
F 0 "#PWR030" H 9350 2050 50  0001 C CNN
F 1 "+12V" H 9365 2373 50  0000 C CNN
F 2 "" H 9350 2200 50  0001 C CNN
F 3 "" H 9350 2200 50  0001 C CNN
	1    9350 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5F74EAA2
P 8900 2600
F 0 "R14" V 9100 2550 50  0000 C CNN
F 1 "1k8" V 9000 2550 50  0000 C CNN
F 2 "" V 8830 2600 50  0001 C CNN
F 3 "~" H 8900 2600 50  0001 C CNN
	1    8900 2600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5F7993BA
P 8550 3050
F 0 "#PWR028" H 8550 2800 50  0001 C CNN
F 1 "GND" H 8555 2877 50  0000 C CNN
F 2 "" H 8550 3050 50  0001 C CNN
F 3 "" H 8550 3050 50  0001 C CNN
	1    8550 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 2500 8550 2600
$Comp
L Transistor_BJT:BC327 Q4
U 1 1 5F71DBB0
P 9250 2600
F 0 "Q4" H 9441 2554 50  0000 L CNN
F 1 "BC327" H 9441 2645 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9450 2525 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/BC327-D.PDF" H 9250 2600 50  0001 L CNN
	1    9250 2600
	1    0    0    1   
$EndComp
$Comp
L Device:D D1
U 1 1 5F7ED9EC
P 8950 3600
F 0 "D1" H 8950 3400 50  0000 L CNN
F 1 "1N4148" H 8850 3500 50  0000 L CNN
F 2 "" H 8950 3600 50  0001 C CNN
F 3 "~" H 8950 3600 50  0001 C CNN
	1    8950 3600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5F7F441A
P 8500 4000
F 0 "#PWR031" H 8500 3750 50  0001 C CNN
F 1 "GND" H 8505 3827 50  0000 C CNN
F 2 "" H 8500 4000 50  0001 C CNN
F 3 "" H 8500 4000 50  0001 C CNN
	1    8500 4000
	1    0    0    -1  
$EndComp
Connection ~ 7500 2850
Wire Wire Line
	7500 2850 7500 2800
$Comp
L power:GND #PWR023
U 1 1 5F828816
P 7150 3150
F 0 "#PWR023" H 7150 2900 50  0001 C CNN
F 1 "GND" H 7155 2977 50  0000 C CNN
F 2 "" H 7150 3150 50  0001 C CNN
F 3 "" H 7150 3150 50  0001 C CNN
	1    7150 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5F828C73
P 7500 3150
F 0 "#PWR025" H 7500 2900 50  0001 C CNN
F 1 "GND" H 7505 2977 50  0000 C CNN
F 2 "" H 7500 3150 50  0001 C CNN
F 3 "" H 7500 3150 50  0001 C CNN
	1    7500 3150
	1    0    0    -1  
$EndComp
$Comp
L Timer:NE555D U2
U 1 1 5F8820AA
P 2550 5550
F 0 "U2" H 2300 6100 50  0000 C CNN
F 1 "NE555D" H 2400 6000 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3400 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne555.pdf" H 3400 5150 50  0001 C CNN
	1    2550 5550
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR016
U 1 1 5F898ADB
P 2550 4850
F 0 "#PWR016" H 2550 4700 50  0001 C CNN
F 1 "+12V" H 2565 5023 50  0000 C CNN
F 2 "" H 2550 4850 50  0001 C CNN
F 3 "" H 2550 4850 50  0001 C CNN
	1    2550 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4850 2550 5150
$Comp
L Device:R R8
U 1 1 5F8A063D
P 3350 4850
F 0 "R8" H 3280 4804 50  0000 R CNN
F 1 "330k" H 3280 4895 50  0000 R CNN
F 2 "" V 3280 4850 50  0001 C CNN
F 3 "~" H 3350 4850 50  0001 C CNN
	1    3350 4850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 5F8A0BF4
P 3350 5150
F 0 "R9" H 3280 5104 50  0000 R CNN
F 1 "1.5M" H 3280 5195 50  0000 R CNN
F 2 "" V 3280 5150 50  0001 C CNN
F 3 "~" H 3350 5150 50  0001 C CNN
	1    3350 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	3050 5550 3350 5550
Wire Wire Line
	3350 5550 3350 5300
Wire Wire Line
	3050 5750 3350 5750
Wire Wire Line
	3350 5750 3350 5550
Connection ~ 3350 5550
$Comp
L power:+12V #PWR018
U 1 1 5F8DF2AB
P 3350 4400
F 0 "#PWR018" H 3350 4250 50  0001 C CNN
F 1 "+12V" H 3365 4573 50  0000 C CNN
F 2 "" H 3350 4400 50  0001 C CNN
F 3 "" H 3350 4400 50  0001 C CNN
	1    3350 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5F89FD1D
P 3350 4550
F 0 "R7" H 3280 4504 50  0000 R CNN
F 1 "1M" H 3280 4595 50  0000 R CNN
F 2 "" V 3280 4550 50  0001 C CNN
F 3 "~" H 3350 4550 50  0001 C CNN
	1    3350 4550
	-1   0    0    1   
$EndComp
Text GLabel 1600 5750 0    50   Input ~ 0
555(R)
Wire Wire Line
	2050 5750 1950 5750
$Comp
L power:GND #PWR017
U 1 1 5F8FB248
P 2550 6050
F 0 "#PWR017" H 2550 5800 50  0001 C CNN
F 1 "GND" H 2555 5877 50  0000 C CNN
F 2 "" H 2550 6050 50  0001 C CNN
F 3 "" H 2550 6050 50  0001 C CNN
	1    2550 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C13
U 1 1 5F8FB98C
P 3350 5900
F 0 "C13" H 3000 5900 50  0000 L CNN
F 1 "47u/25V" H 3000 5800 50  0000 L CNN
F 2 "" H 3388 5750 50  0001 C CNN
F 3 "~" H 3350 5900 50  0001 C CNN
	1    3350 5900
	1    0    0    -1  
$EndComp
Connection ~ 3350 5750
$Comp
L power:GND #PWR019
U 1 1 5F8FC2AD
P 3350 6050
F 0 "#PWR019" H 3350 5800 50  0001 C CNN
F 1 "GND" H 3355 5877 50  0000 C CNN
F 2 "" H 3350 6050 50  0001 C CNN
F 3 "" H 3350 6050 50  0001 C CNN
	1    3350 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 6050 2550 5950
$Comp
L Device:C C14
U 1 1 5F906C0B
P 1700 5000
F 0 "C14" H 1800 5050 50  0000 L CNN
F 1 "330p" H 1800 4950 50  0000 L CNN
F 2 "" H 1738 4850 50  0001 C CNN
F 3 "~" H 1700 5000 50  0001 C CNN
	1    1700 5000
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR020
U 1 1 5F909FED
P 1700 4850
F 0 "#PWR020" H 1700 4700 50  0001 C CNN
F 1 "+12V" H 1715 5023 50  0000 C CNN
F 2 "" H 1700 4850 50  0001 C CNN
F 3 "" H 1700 4850 50  0001 C CNN
	1    1700 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5F90A5DD
P 1700 5150
F 0 "#PWR021" H 1700 4900 50  0001 C CNN
F 1 "GND" H 1705 4977 50  0000 C CNN
F 2 "" H 1700 5150 50  0001 C CNN
F 3 "" H 1700 5150 50  0001 C CNN
	1    1700 5150
	1    0    0    -1  
$EndComp
Text Notes 3750 4300 0    50   ~ 0
t = 1.1 * C13 * (R7+R8+R9)\nt = 1.1 * 47u * 2.83M = 146,311 s
$Comp
L Relay:RSM822 K2
U 1 1 5F610C44
P 8900 4300
F 0 "K2" V 9550 4200 50  0000 C CNN
F 1 "RSM822" V 9650 4300 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Finder_40.52" H 10250 4270 50  0001 C CNN
F 3 "http://www.relpol.pl/en/content/download/14975/202519/file/e_RSM822.pdf" H 8900 4300 50  0001 C CNN
	1    8900 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 3900 8500 3900
$Comp
L power:GND #PWR038
U 1 1 5F65B39A
P 9400 4200
F 0 "#PWR038" H 9400 3950 50  0001 C CNN
F 1 "GND" H 9405 4027 50  0000 C CNN
F 2 "" H 9400 4200 50  0001 C CNN
F 3 "" H 9400 4200 50  0001 C CNN
	1    9400 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8600 4700 8500 4700
Text GLabel 9450 4800 2    50   Input ~ 0
Fan(-)
Text GLabel 8200 4300 0    50   Input ~ 0
555(R)
Wire Wire Line
	8200 4300 8600 4300
$Comp
L Relay:RSM822 K1
U 1 1 5F69080F
P 4900 5500
F 0 "K1" V 4133 5500 50  0000 C CNN
F 1 "RSM822" V 4224 5500 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Finder_40.52" H 6250 5470 50  0001 C CNN
F 3 "http://www.relpol.pl/en/content/download/14975/202519/file/e_RSM822.pdf" H 4900 5500 50  0001 C CNN
	1    4900 5500
	0    1    1    0   
$EndComp
$Comp
L Device:D D2
U 1 1 5F69FAB4
P 4900 4550
F 0 "D2" V 4854 4630 50  0000 L CNN
F 1 "D" V 4945 4630 50  0000 L CNN
F 2 "" H 4900 4550 50  0001 C CNN
F 3 "~" H 4900 4550 50  0001 C CNN
	1    4900 4550
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 4550 5250 5100
$Comp
L power:GND #PWR036
U 1 1 5F6B9EB8
P 4550 5150
F 0 "#PWR036" H 4550 4900 50  0001 C CNN
F 1 "GND" H 4555 4977 50  0000 C CNN
F 2 "" H 4550 5150 50  0001 C CNN
F 3 "" H 4550 5150 50  0001 C CNN
	1    4550 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4550 4550 4550
Wire Wire Line
	5250 4550 5250 4100
Connection ~ 5250 4550
$Comp
L power:GND #PWR037
U 1 1 5F6DC865
P 4600 5900
F 0 "#PWR037" H 4600 5650 50  0001 C CNN
F 1 "GND" H 4605 5727 50  0000 C CNN
F 2 "" H 4600 5900 50  0001 C CNN
F 3 "" H 4600 5900 50  0001 C CNN
	1    4600 5900
	1    0    0    -1  
$EndComp
Text GLabel 5400 6000 2    50   Input ~ 0
PTT
Wire Wire Line
	5200 6000 5400 6000
Text GLabel 4400 5500 0    50   Input ~ 0
EXTERNAL(-)
Text GLabel 5400 5600 2    50   Input ~ 0
EXTERNAL(+)
Wire Wire Line
	5200 5600 5400 5600
Wire Wire Line
	4600 5500 4400 5500
Wire Wire Line
	3050 4100 5250 4100
Wire Wire Line
	5050 4550 5250 4550
Wire Wire Line
	5200 5100 5250 5100
Wire Wire Line
	4550 4550 4550 5100
Wire Wire Line
	4600 5100 4550 5100
Connection ~ 4550 5100
Wire Wire Line
	4550 5100 4550 5150
Wire Wire Line
	9350 3900 9200 3900
Wire Wire Line
	5600 2600 6300 2600
Text Notes 5650 2850 0    50   ~ 0
Tone Detector\n
Text Notes 5650 2700 0    50   ~ 0
Output
Wire Notes Line
	1000 1000 6200 1000
Wire Notes Line
	6200 1000 6200 3700
Wire Notes Line
	6200 3700 1000 3700
Wire Notes Line
	1000 3700 1000 1000
Wire Wire Line
	9350 3900 9350 3600
Wire Wire Line
	9350 3600 9100 3600
Wire Wire Line
	8800 3600 8500 3600
Wire Wire Line
	8500 4000 8500 3900
Connection ~ 8500 3900
$Comp
L power:GND #PWR?
U 1 1 5FBF3A2B
P 8500 4850
F 0 "#PWR?" H 8500 4600 50  0001 C CNN
F 1 "GND" H 8505 4677 50  0000 C CNN
F 2 "" H 8500 4850 50  0001 C CNN
F 3 "" H 8500 4850 50  0001 C CNN
	1    8500 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4700 8500 4850
Wire Wire Line
	9450 4800 9200 4800
Text Notes 3900 3450 0    50   ~ 0
(104K)\n
$Comp
L power:+12V #PWR?
U 1 1 60020533
P 9400 4400
F 0 "#PWR?" H 9400 4250 50  0001 C CNN
F 1 "+12V" H 9415 4573 50  0000 C CNN
F 2 "" H 9400 4400 50  0001 C CNN
F 3 "" H 9400 4400 50  0001 C CNN
	1    9400 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	9400 4200 9200 4200
Wire Wire Line
	9400 4400 9200 4400
Wire Wire Line
	2050 5350 1950 5350
Wire Wire Line
	1950 5350 1950 5750
Connection ~ 1950 5750
Wire Wire Line
	1950 5750 1600 5750
Wire Wire Line
	7150 2850 7500 2850
Wire Wire Line
	8150 2500 8150 2850
Wire Wire Line
	8100 2850 8150 2850
Connection ~ 8150 2850
Wire Wire Line
	8150 2850 8250 2850
Wire Wire Line
	7800 2850 7500 2850
Wire Wire Line
	9350 2200 9350 2400
Connection ~ 8550 2600
Wire Wire Line
	8550 2600 8550 2650
Wire Wire Line
	8550 2600 8750 2600
Wire Wire Line
	8500 3600 8500 3900
Connection ~ 9350 3600
Wire Wire Line
	9350 2800 9350 3600
Wire Wire Line
	3050 4100 3050 5350
Wire Notes Line
	6300 1000 6300 3700
Wire Notes Line
	6300 3700 7850 3700
Wire Notes Line
	7850 3700 7850 5150
Wire Notes Line
	7850 5150 9850 5150
Wire Notes Line
	9850 5150 9850 1000
Wire Notes Line
	9850 1000 6300 1000
Wire Notes Line
	1000 3850 6200 3850
Wire Notes Line
	6200 3850 6200 6300
Wire Notes Line
	6200 6300 1000 6300
Wire Notes Line
	1000 6300 1000 3850
Wire Wire Line
	2600 1950 2650 1950
Connection ~ 2650 1950
Wire Wire Line
	2250 2150 2250 1950
Wire Wire Line
	2250 1950 2300 1950
Wire Wire Line
	2650 1450 2650 1550
Wire Wire Line
	2650 2350 2650 2500
Wire Wire Line
	2950 1950 2950 2150
Wire Wire Line
	2950 2200 2950 2150
Connection ~ 2950 2150
Wire Wire Line
	2650 1950 2950 1950
Wire Wire Line
	2950 2150 3250 2150
Connection ~ 3250 2150
$EndSCHEMATC