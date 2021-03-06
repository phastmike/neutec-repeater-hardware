EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Repeater controller ID Board (NEUTEC 1645HS)"
Date "2021-06-16"
Rev "1.0"
Comp "ARM - Associação de Radioamadores do Minho"
Comment1 "by CT1ENQ, CT1EYN "
Comment2 "CT4QC Original"
Comment3 "Adapted from"
Comment4 "Top (MCU, ISD Voice  ID Interface, Morse Code Tone/Pitch Generator)"
$EndDescr
Text GLabel 2300 3450 0    50   Input ~ 0
ISD_SPK-
$Comp
L Device:R R1
U 1 1 5F63FB00
P 2450 3200
F 0 "R1" H 2520 3246 50  0000 L CNN
F 1 "27" H 2520 3155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 2380 3200 50  0001 C CNN
F 3 "~" H 2450 3200 50  0001 C CNN
	1    2450 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3350 2450 3450
Wire Wire Line
	2450 3450 2300 3450
$Comp
L Device:C C1
U 1 1 5F64D997
P 2600 2550
F 0 "C1" V 2348 2550 50  0000 C CNN
F 1 "4n7" V 2439 2550 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D7.0mm_W2.5mm_P5.00mm" H 2638 2400 50  0001 C CNN
F 3 "~" H 2600 2550 50  0001 C CNN
	1    2600 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5F6533B7
P 2750 2750
F 0 "RV1" H 2680 2796 50  0000 R CNN
F 1 "50k" H 2680 2705 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 2750 2750 50  0001 C CNN
F 3 "~" H 2750 2750 50  0001 C CNN
	1    2750 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2550 2750 2600
$Comp
L power:GND #PWR06
U 1 1 5F6637E0
P 2750 2900
F 0 "#PWR06" H 2750 2650 50  0001 C CNN
F 1 "GND" H 2755 2727 50  0000 C CNN
F 2 "" H 2750 2900 50  0001 C CNN
F 3 "" H 2750 2900 50  0001 C CNN
	1    2750 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2750 3000 2750
$Comp
L Transistor_BJT:BC548 Q2
U 1 1 5F6727A8
P 3650 3450
F 0 "Q2" H 3841 3496 50  0000 L CNN
F 1 "BC548" H 3841 3405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 3850 3375 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 3650 3450 50  0001 L CNN
	1    3650 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F6737D6
P 3000 3450
F 0 "R2" V 2793 3450 50  0000 C CNN
F 1 "1k" V 2884 3450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2930 3450 50  0001 C CNN
F 3 "~" H 3000 3450 50  0001 C CNN
	1    3000 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 3450 2450 3450
Connection ~ 2450 3450
$Comp
L power:GND #PWR08
U 1 1 5F692B7D
P 3250 3750
F 0 "#PWR08" H 3250 3500 50  0001 C CNN
F 1 "GND" H 3255 3577 50  0000 C CNN
F 2 "" H 3250 3750 50  0001 C CNN
F 3 "" H 3250 3750 50  0001 C CNN
	1    3250 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5F69E6E9
P 3750 3750
F 0 "#PWR011" H 3750 3500 50  0001 C CNN
F 1 "GND" H 3755 3577 50  0000 C CNN
F 2 "" H 3750 3750 50  0001 C CNN
F 3 "" H 3750 3750 50  0001 C CNN
	1    3750 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3650 3750 3750
Text GLabel 2300 4100 0    50   Output ~ 0
ISD_PLAY
Text Notes 1750 4150 1    50   ~ 0
ISD1810 Voice Playback/Record
$Comp
L Regulator_Linear:L7805 U1
U 1 1 60456CAC
P 5850 6950
F 0 "U1" H 5850 7192 50  0000 C CNN
F 1 "L7805" H 5850 7101 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 5875 6800 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 5850 6900 50  0001 C CNN
	1    5850 6950
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC548 Q3
U 1 1 60457DF6
P 3800 5300
F 0 "Q3" H 3650 5150 50  0000 L CNN
F 1 "BC548C" H 3500 5050 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 4000 5225 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 3800 5300 50  0001 L CNN
	1    3800 5300
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F6AE661
P 5750 3850
F 0 "C2" V 5850 3700 50  0000 C CNN
F 1 "100n" V 5850 4050 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 5788 3700 50  0001 C CNN
F 3 "~" H 5750 3850 50  0001 C CNN
	1    5750 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 6046EEC7
P 7450 3400
F 0 "R12" H 7600 3350 50  0000 C CNN
F 1 "4K7" H 7600 3450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7380 3400 50  0001 C CNN
F 3 "~" H 7450 3400 50  0001 C CNN
	1    7450 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7750 2650 7400 2650
$Comp
L Device:R R11
U 1 1 6045D4B9
P 7250 2650
F 0 "R11" V 7100 2850 50  0000 C CNN
F 1 "120" V 7200 2850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7180 2650 50  0001 C CNN
F 3 "~" H 7250 2650 50  0001 C CNN
	1    7250 2650
	0    -1   1    0   
$EndComp
Wire Wire Line
	8350 4450 8350 4550
Wire Wire Line
	9750 2950 9750 3300
Wire Wire Line
	9750 2950 9750 2750
Connection ~ 9750 2950
Wire Wire Line
	9500 2950 9750 2950
Wire Wire Line
	9750 2750 9750 2550
Connection ~ 9750 2750
Wire Wire Line
	9500 2750 9750 2750
Connection ~ 9100 2750
Wire Wire Line
	9200 2750 9100 2750
Connection ~ 9100 2950
Wire Wire Line
	9200 2950 9100 2950
Wire Wire Line
	8950 2950 9100 2950
Wire Wire Line
	9100 2750 8950 2750
$Comp
L Device:C C13
U 1 1 60442406
P 9350 2950
F 0 "C13" V 9300 2800 50  0000 C CNN
F 1 "33p" V 9400 2800 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 9388 2800 50  0001 C CNN
F 3 "~" H 9350 2950 50  0001 C CNN
	1    9350 2950
	0    -1   1    0   
$EndComp
$Comp
L Device:C C12
U 1 1 6044182A
P 9350 2750
F 0 "C12" V 9300 2600 50  0000 C CNN
F 1 "33p" V 9400 2600 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 9388 2600 50  0001 C CNN
F 3 "~" H 9350 2750 50  0001 C CNN
	1    9350 2750
	0    -1   1    0   
$EndComp
$Comp
L Device:Crystal_Small Y1
U 1 1 6043F727
P 9100 2850
F 0 "Y1" V 9100 2950 50  0000 L CNN
F 1 "4MHz" V 9300 2800 50  0000 L CNN
F 2 "Crystal:Crystal_HC50_Vertical" H 9100 2850 50  0001 C CNN
F 3 "~" H 9100 2850 50  0001 C CNN
	1    9100 2850
	0    -1   1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 6043DB80
P 9350 2550
F 0 "R13" V 9143 2550 50  0000 C CNN
F 1 "8k2" V 9234 2550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 9280 2550 50  0001 C CNN
F 3 "~" H 9350 2550 50  0001 C CNN
	1    9350 2550
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 6043D65A
P 9750 3300
F 0 "#PWR031" H 9750 3050 50  0001 C CNN
F 1 "GND" H 9755 3127 50  0000 C CNN
F 2 "" H 9750 3300 50  0001 C CNN
F 3 "" H 9750 3300 50  0001 C CNN
	1    9750 3300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 6043CF31
P 8350 4550
F 0 "#PWR029" H 8350 4300 50  0001 C CNN
F 1 "GND" H 8355 4377 50  0000 C CNN
F 2 "" H 8350 4550 50  0001 C CNN
F 3 "" H 8350 4550 50  0001 C CNN
	1    8350 4550
	-1   0    0    -1  
$EndComp
$Comp
L MCU_Microchip_8051:AT89C2051-24PU U3
U 1 1 60434C41
P 8350 3350
F 0 "U3" H 8200 4500 50  0000 C CNN
F 1 "AT89C2051-24PU" H 8000 4400 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_LongPads" H 8350 3350 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0368.pdf" H 8350 3350 50  0001 C CNN
	1    8350 3350
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 604C3135
P 5350 7150
F 0 "C7" H 5550 7150 50  0000 C CNN
F 1 "470n" H 5550 7250 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D7.5mm_W4.4mm_P5.00mm" H 5388 7000 50  0001 C CNN
F 3 "~" H 5350 7150 50  0001 C CNN
	1    5350 7150
	1    0    0    1   
$EndComp
$Comp
L Device:C C9
U 1 1 604C3AB9
P 6350 7150
F 0 "C9" H 6150 7150 50  0000 C CNN
F 1 "100n" H 6200 7250 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 6388 7000 50  0001 C CNN
F 3 "~" H 6350 7150 50  0001 C CNN
	1    6350 7150
	1    0    0    1   
$EndComp
Wire Wire Line
	5350 7000 5350 6950
Wire Wire Line
	5350 6950 5550 6950
Wire Wire Line
	6150 6950 6350 6950
$Comp
L power:GND #PWR019
U 1 1 604C8714
P 5850 7300
F 0 "#PWR019" H 5850 7050 50  0001 C CNN
F 1 "GND" H 5855 7127 50  0000 C CNN
F 2 "" H 5850 7300 50  0001 C CNN
F 3 "" H 5850 7300 50  0001 C CNN
	1    5850 7300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 604C8E6E
P 5350 7300
F 0 "#PWR016" H 5350 7050 50  0001 C CNN
F 1 "GND" H 5355 7127 50  0000 C CNN
F 2 "" H 5350 7300 50  0001 C CNN
F 3 "" H 5350 7300 50  0001 C CNN
	1    5350 7300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6350 6950 6350 7000
$Comp
L power:GND #PWR023
U 1 1 604CFED7
P 6350 7300
F 0 "#PWR023" H 6350 7050 50  0001 C CNN
F 1 "GND" H 6355 7127 50  0000 C CNN
F 2 "" H 6350 7300 50  0001 C CNN
F 3 "" H 6350 7300 50  0001 C CNN
	1    6350 7300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5850 7250 5850 7300
$Comp
L power:VCC #PWR015
U 1 1 604D2C00
P 5350 6900
F 0 "#PWR015" H 5350 6750 50  0001 C CNN
F 1 "VCC" H 5365 7073 50  0000 C CNN
F 2 "" H 5350 6900 50  0001 C CNN
F 3 "" H 5350 6900 50  0001 C CNN
	1    5350 6900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 604D30A4
P 6350 6900
F 0 "#PWR022" H 6350 6750 50  0001 C CNN
F 1 "+5V" H 6365 7073 50  0000 C CNN
F 2 "" H 6350 6900 50  0001 C CNN
F 3 "" H 6350 6900 50  0001 C CNN
	1    6350 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 6900 6350 6950
Connection ~ 6350 6950
Wire Wire Line
	5350 6900 5350 6950
Connection ~ 5350 6950
$Comp
L power:+5V #PWR028
U 1 1 603E6895
P 8350 1750
F 0 "#PWR028" H 8350 1600 50  0001 C CNN
F 1 "+5V" H 8365 1923 50  0000 C CNN
F 2 "" H 8350 1750 50  0001 C CNN
F 3 "" H 8350 1750 50  0001 C CNN
	1    8350 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 2550 9750 2550
$Comp
L Transistor_BJT:BC548 Q1
U 1 1 605DA5CD
P 3150 5050
F 0 "Q1" H 3341 5096 50  0000 L CNN
F 1 "BC548B" H 3341 5005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 3350 4975 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 3150 5050 50  0001 L CNN
	1    3150 5050
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP C11
U 1 1 605E5D56
P 9100 2100
F 0 "C11" H 9218 2146 50  0000 L CNN
F 1 "10u/50V" H 9218 2055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 9138 1950 50  0001 C CNN
F 3 "~" H 9100 2100 50  0001 C CNN
	1    9100 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR030
U 1 1 605F92FF
P 9100 1750
F 0 "#PWR030" H 9100 1600 50  0001 C CNN
F 1 "+5V" H 9115 1923 50  0000 C CNN
F 2 "" H 9100 1750 50  0001 C CNN
F 3 "" H 9100 1750 50  0001 C CNN
	1    9100 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 2300 9100 2550
$Comp
L power:+5V #PWR09
U 1 1 6061BCF9
P 3700 4500
F 0 "#PWR09" H 3700 4350 50  0001 C CNN
F 1 "+5V" H 3715 4673 50  0000 C CNN
F 2 "" H 3700 4500 50  0001 C CNN
F 3 "" H 3700 4500 50  0001 C CNN
	1    3700 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 60626519
P 7650 2250
F 0 "#PWR026" H 7650 2000 50  0001 C CNN
F 1 "GND" H 7655 2077 50  0000 C CNN
F 2 "" H 7650 2250 50  0001 C CNN
F 3 "" H 7650 2250 50  0001 C CNN
	1    7650 2250
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 6061F7FE
P 7650 2100
F 0 "C10" H 7450 2150 50  0000 C CNN
F 1 "100n" H 7450 2000 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7688 1950 50  0001 C CNN
F 3 "~" H 7650 2100 50  0001 C CNN
	1    7650 2100
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 60630592
P 3700 4800
F 0 "R5" H 3550 4850 50  0000 C CNN
F 1 "4k7" H 3550 4750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3630 4800 50  0001 C CNN
F 3 "~" H 3700 4800 50  0001 C CNN
	1    3700 4800
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR024
U 1 1 6063A235
P 6850 1750
F 0 "#PWR024" H 6850 1600 50  0001 C CNN
F 1 "+5V" H 6865 1923 50  0000 C CNN
F 2 "" H 6850 1750 50  0001 C CNN
F 3 "" H 6850 1750 50  0001 C CNN
	1    6850 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 6063A4BA
P 6850 2000
F 0 "R10" H 6700 2050 50  0000 C CNN
F 1 "4k7" H 6700 1950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6780 2000 50  0001 C CNN
F 3 "~" H 6850 2000 50  0001 C CNN
	1    6850 2000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6850 2150 6850 2650
$Comp
L Device:R R4
U 1 1 606FE2A3
P 3500 5050
F 0 "R4" V 3293 5050 50  0000 C CNN
F 1 "3k9" V 3384 5050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3430 5050 50  0001 C CNN
F 3 "~" H 3500 5050 50  0001 C CNN
	1    3500 5050
	0    1    1    0   
$EndComp
Connection ~ 3700 5050
Wire Wire Line
	3700 5050 3700 5100
$Comp
L power:GND #PWR010
U 1 1 60769361
P 3700 5500
F 0 "#PWR010" H 3700 5250 50  0001 C CNN
F 1 "GND" H 3705 5327 50  0000 C CNN
F 2 "" H 3700 5500 50  0001 C CNN
F 3 "" H 3700 5500 50  0001 C CNN
	1    3700 5500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 6076A3B1
P 3050 5500
F 0 "#PWR07" H 3050 5250 50  0001 C CNN
F 1 "GND" H 3055 5327 50  0000 C CNN
F 2 "" H 3050 5500 50  0001 C CNN
F 3 "" H 3050 5500 50  0001 C CNN
	1    3050 5500
	-1   0    0    -1  
$EndComp
NoConn ~ 7750 2550
NoConn ~ 7750 3550
NoConn ~ 7750 3650
NoConn ~ 7750 3750
Wire Wire Line
	3650 5050 3700 5050
Wire Wire Line
	3050 5250 3050 5500
Wire Wire Line
	5650 2250 5050 2250
Wire Wire Line
	5050 2250 5050 2150
$Comp
L power:+5V #PWR014
U 1 1 60908335
P 5050 1750
F 0 "#PWR014" H 5050 1600 50  0001 C CNN
F 1 "+5V" H 5065 1923 50  0000 C CNN
F 2 "" H 5050 1750 50  0001 C CNN
F 3 "" H 5050 1750 50  0001 C CNN
	1    5050 1750
	-1   0    0    -1  
$EndComp
Connection ~ 5400 2450
Wire Wire Line
	5400 2450 5650 2450
Wire Wire Line
	5400 2500 5400 2450
Wire Wire Line
	5600 2650 5550 2650
Connection ~ 5600 2650
Wire Wire Line
	5650 2650 5600 2650
$Comp
L Device:R_POT RV3
U 1 1 607A0458
P 5400 2650
F 0 "RV3" H 5330 2696 50  0000 R CNN
F 1 "22k" H 5330 2605 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 5400 2650 50  0001 C CNN
F 3 "~" H 5400 2650 50  0001 C CNN
	1    5400 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR017
U 1 1 607A72CE
P 5400 1750
F 0 "#PWR017" H 5400 1600 50  0001 C CNN
F 1 "+5V" H 5415 1923 50  0000 C CNN
F 2 "" H 5400 1750 50  0001 C CNN
F 3 "" H 5400 1750 50  0001 C CNN
	1    5400 1750
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 607729F8
P 5400 3150
F 0 "C8" H 5515 3196 50  0000 L CNN
F 1 "100n" H 5515 3105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 5438 3000 50  0001 C CNN
F 3 "~" H 5400 3150 50  0001 C CNN
	1    5400 3150
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 606DCA01
P 5400 3300
F 0 "#PWR018" H 5400 3050 50  0001 C CNN
F 1 "GND" H 5405 3127 50  0000 C CNN
F 2 "" H 5400 3300 50  0001 C CNN
F 3 "" H 5400 3300 50  0001 C CNN
	1    5400 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 606BAEF4
P 6150 3300
F 0 "#PWR021" H 6150 3050 50  0001 C CNN
F 1 "GND" H 6155 3127 50  0000 C CNN
F 2 "" H 6150 3300 50  0001 C CNN
F 3 "" H 6150 3300 50  0001 C CNN
	1    6150 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 606B6EB3
P 6150 1750
F 0 "#PWR020" H 6150 1600 50  0001 C CNN
F 1 "+5V" H 6165 1923 50  0000 C CNN
F 2 "" H 6150 1750 50  0001 C CNN
F 3 "" H 6150 1750 50  0001 C CNN
	1    6150 1750
	-1   0    0    -1  
$EndComp
$Comp
L Timer:NE555P U2
U 1 1 604E4CBE
P 6150 2450
F 0 "U2" H 5950 2900 50  0000 C CNN
F 1 "NE555P" H 5950 2800 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_LongPads" H 6800 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne555.pdf" H 7000 2050 50  0001 C CNN
	1    6150 2450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5050 1750 5050 1850
$Comp
L power:GND #PWR012
U 1 1 60687752
P 4150 2300
F 0 "#PWR012" H 4150 2050 50  0001 C CNN
F 1 "GND" H 4155 2127 50  0000 C CNN
F 2 "" H 4150 2300 50  0001 C CNN
F 3 "" H 4150 2300 50  0001 C CNN
	1    4150 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 60686B18
P 4550 2300
F 0 "#PWR013" H 4550 2050 50  0001 C CNN
F 1 "GND" H 4555 2127 50  0000 C CNN
F 2 "" H 4550 2300 50  0001 C CNN
F 3 "" H 4550 2300 50  0001 C CNN
	1    4550 2300
	1    0    0    -1  
$EndComp
Text GLabel 2300 2000 0    50   Output ~ 0
Audio
Connection ~ 4150 2000
Wire Wire Line
	4150 2000 4100 2000
Wire Wire Line
	4200 2000 4150 2000
Connection ~ 4550 2000
Wire Wire Line
	4500 2000 4550 2000
Wire Wire Line
	4600 2000 4550 2000
$Comp
L Device:C C4
U 1 1 6066B2A1
P 3650 2000
F 0 "C4" V 3398 2000 50  0000 C CNN
F 1 "22n" V 3500 2000 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W4.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 3688 1850 50  0001 C CNN
F 3 "~" H 3650 2000 50  0001 C CNN
	1    3650 2000
	0    -1   1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 6066AD3C
P 4150 2150
F 0 "C5" H 4265 2196 50  0000 L CNN
F 1 "22n" H 4265 2105 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W4.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 4188 2000 50  0001 C CNN
F 3 "~" H 4150 2150 50  0001 C CNN
	1    4150 2150
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 6066A364
P 4550 2150
F 0 "C6" H 4665 2196 50  0000 L CNN
F 1 "22n" H 4665 2105 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W4.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 4588 2000 50  0001 C CNN
F 3 "~" H 4550 2150 50  0001 C CNN
	1    4550 2150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 60669D53
P 3950 2000
F 0 "R6" V 3743 2000 50  0000 C CNN
F 1 "680" V 3834 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3880 2000 50  0001 C CNN
F 3 "~" H 3950 2000 50  0001 C CNN
	1    3950 2000
	0    -1   1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 6066986A
P 4350 2000
F 0 "R7" V 4143 2000 50  0000 C CNN
F 1 "820" V 4234 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4280 2000 50  0001 C CNN
F 3 "~" H 4350 2000 50  0001 C CNN
	1    4350 2000
	0    -1   1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 60669312
P 4750 2000
F 0 "R8" V 4543 2000 50  0000 C CNN
F 1 "820" V 4634 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4680 2000 50  0001 C CNN
F 3 "~" H 4750 2000 50  0001 C CNN
	1    4750 2000
	0    -1   1    0   
$EndComp
Wire Wire Line
	3750 3100 3750 3250
Wire Wire Line
	3750 3100 4300 3100
Wire Wire Line
	6700 2250 6650 2250
Wire Wire Line
	5600 2950 6700 2950
Connection ~ 5600 2950
Wire Wire Line
	6700 2250 6700 2950
Wire Wire Line
	5600 2650 5600 2950
Wire Wire Line
	5600 2950 5400 2950
Wire Wire Line
	5400 2800 5400 2950
Wire Wire Line
	5400 3000 5400 2950
Connection ~ 5400 2950
Wire Wire Line
	6150 2850 6150 3300
Wire Wire Line
	5400 2150 5400 2450
Wire Wire Line
	5400 1750 5400 1850
Connection ~ 9100 2550
Wire Wire Line
	9100 2550 9200 2550
Wire Wire Line
	8950 2550 9100 2550
Wire Wire Line
	7650 1950 7650 1900
Wire Wire Line
	3700 4950 3700 5050
Text GLabel 3450 2750 2    50   Output ~ 0
Audio
Wire Wire Line
	3300 2750 3450 2750
Text Notes 2850 2950 0    50   ~ 0
ID Audio Level
Connection ~ 6850 2650
Wire Wire Line
	6850 2650 6650 2650
Wire Wire Line
	6850 2650 7100 2650
Connection ~ 2450 2950
Wire Wire Line
	2450 2550 2450 2950
Wire Wire Line
	2450 2950 2450 3050
Wire Wire Line
	2300 2950 2450 2950
Text GLabel 2300 2950 0    50   Input ~ 0
ISD_SPK+
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 6069AD78
P 900 7300
F 0 "J1" H 900 7400 50  0000 C CNN
F 1 "Conn_01x02" V 1000 7250 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 900 7300 50  0001 C CNN
F 3 "~" H 900 7300 50  0001 C CNN
	1    900  7300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 606D2C7D
P 1200 7300
F 0 "#PWR02" H 1200 7050 50  0001 C CNN
F 1 "GND" H 1205 7127 50  0000 C CNN
F 2 "" H 1200 7300 50  0001 C CNN
F 3 "" H 1200 7300 50  0001 C CNN
	1    1200 7300
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 606D9D38
P 1200 7200
F 0 "#PWR01" H 1200 7050 50  0001 C CNN
F 1 "VCC" H 1215 7373 50  0000 C CNN
F 2 "" H 1200 7200 50  0001 C CNN
F 3 "" H 1200 7200 50  0001 C CNN
	1    1200 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 7200 1200 7200
Wire Wire Line
	1100 7300 1200 7300
$Comp
L power:+5V #PWR03
U 1 1 60719D9F
P 1900 7200
F 0 "#PWR03" H 1900 7050 50  0001 C CNN
F 1 "+5V" H 1915 7373 50  0000 C CNN
F 2 "" H 1900 7200 50  0001 C CNN
F 3 "" H 1900 7200 50  0001 C CNN
	1    1900 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 607FC1DD
P 3250 3600
F 0 "C3" H 3368 3646 50  0000 L CNN
F 1 "100u/16V" H 3368 3555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 3288 3450 50  0001 C CNN
F 3 "~" H 3250 3600 50  0001 C CNN
	1    3250 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3450 3250 3450
Connection ~ 3250 3450
Wire Wire Line
	3250 3450 3450 3450
Connection ~ 8350 1900
Wire Wire Line
	8350 1900 8350 2250
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 606204D7
P 1600 7300
F 0 "J2" H 1600 7400 50  0000 C CNN
F 1 "Conn_01x02" V 1700 7250 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 1600 7300 50  0001 C CNN
F 3 "~" H 1600 7300 50  0001 C CNN
	1    1600 7300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 606204DD
P 1900 7300
F 0 "#PWR0101" H 1900 7050 50  0001 C CNN
F 1 "GND" H 1905 7127 50  0000 C CNN
F 2 "" H 1900 7300 50  0001 C CNN
F 3 "" H 1900 7300 50  0001 C CNN
	1    1900 7300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1800 7200 1900 7200
Wire Wire Line
	1800 7300 1900 7300
Text GLabel 2700 6550 2    50   Input ~ 0
Audio
$Comp
L power:GND #PWR05
U 1 1 606DFF6E
P 2600 7300
F 0 "#PWR05" H 2600 7050 50  0001 C CNN
F 1 "GND" H 2605 7127 50  0000 C CNN
F 2 "" H 2600 7300 50  0001 C CNN
F 3 "" H 2600 7300 50  0001 C CNN
	1    2600 7300
	-1   0    0    -1  
$EndComp
Text GLabel 2700 6750 2    50   Input ~ 0
PTT
Wire Wire Line
	2500 6750 2700 6750
Wire Wire Line
	2500 6550 2700 6550
Text GLabel 2700 7050 2    50   Input ~ 0
ISD_PLAY
Text GLabel 2700 6950 2    50   Input ~ 0
ISD_SPK-
Text GLabel 2700 6850 2    50   Input ~ 0
ISD_SPK+
Wire Wire Line
	2500 7050 2700 7050
Wire Wire Line
	2500 6950 2700 6950
Wire Wire Line
	2500 6850 2700 6850
$Comp
L Connector_Generic:Conn_01x08 J3
U 1 1 606087A1
P 2300 6950
F 0 "J3" H 2218 6325 50  0000 C CNN
F 1 "Conn_01x08" H 2218 6416 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-08A_1x08_P2.54mm_Vertical" H 2300 6950 50  0001 C CNN
F 3 "~" H 2300 6950 50  0001 C CNN
	1    2300 6950
	-1   0    0    1   
$EndComp
$Comp
L Device:C C14
U 1 1 606BC660
P 7250 2100
F 0 "C14" H 7050 2300 50  0000 L CNN
F 1 "100n" H 7000 2200 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7288 1950 50  0001 C CNN
F 3 "~" H 7250 2100 50  0001 C CNN
	1    7250 2100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 606CC15A
P 7250 2250
F 0 "#PWR04" H 7250 2000 50  0001 C CNN
F 1 "GND" H 7255 2077 50  0000 C CNN
F 2 "" H 7250 2250 50  0001 C CNN
F 3 "" H 7250 2250 50  0001 C CNN
	1    7250 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 606D19D6
P 6650 3150
F 0 "C15" H 6765 3196 50  0000 L CNN
F 1 "10n" H 6765 3105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 6688 3000 50  0001 C CNN
F 3 "~" H 6650 3150 50  0001 C CNN
F 4 "*" H 6750 3250 50  0000 C CIN "Optional"
	1    6650 3150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6650 2450 6650 3000
$Comp
L power:GND #PWR032
U 1 1 606E2281
P 6650 3300
F 0 "#PWR032" H 6650 3050 50  0001 C CNN
F 1 "GND" H 6655 3127 50  0000 C CNN
F 2 "" H 6650 3300 50  0001 C CNN
F 3 "" H 6650 3300 50  0001 C CNN
	1    6650 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1900 8350 1900
Wire Wire Line
	2500 7250 2700 7250
Text GLabel 2700 7250 2    50   Input ~ 0
ID_PTT
Wire Wire Line
	2500 6650 2600 6650
Wire Wire Line
	2600 6650 2600 7150
Wire Wire Line
	2500 7150 2600 7150
Connection ~ 2600 7150
Wire Wire Line
	2600 7150 2600 7300
$Comp
L Device:R_POT RV2
U 1 1 606557F9
P 5050 2000
F 0 "RV2" H 4980 1954 50  0000 R CNN
F 1 "6k8" H 4980 2045 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 5050 2000 50  0001 C CNN
F 3 "~" H 5050 2000 50  0001 C CNN
	1    5050 2000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F667B2C
P 3150 2750
F 0 "R3" V 2943 2750 50  0000 C CNN
F 1 "10k" V 3034 2750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3080 2750 50  0001 C CNN
F 3 "~" H 3150 2750 50  0001 C CNN
	1    3150 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 606DA570
P 5400 2000
F 0 "R9" H 5250 2000 50  0000 L CNN
F 1 "10k" H 5200 1900 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5330 2000 50  0001 C CNN
F 3 "~" H 5400 2000 50  0001 C CNN
	1    5400 2000
	-1   0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D1
U 1 1 606321B9
P 9900 4700
F 0 "D1" H 9900 4917 50  0000 C CNN
F 1 "1N4148" H 9900 4826 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9900 4525 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9900 4700 50  0001 C CNN
	1    9900 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 4700 9550 4700
Text GLabel 10400 4700 2    50   Output ~ 0
PTT_IN
Text GLabel 9550 4700 0    50   Input ~ 0
PTT
Text GLabel 2300 4550 0    50   Output ~ 0
ID_PTT
Wire Wire Line
	3050 4550 3050 4850
Wire Wire Line
	3700 4500 3700 4650
Wire Wire Line
	7450 3700 7450 3550
Text Notes 6900 3800 0    50   ~ 10
_/````\_ 
Wire Wire Line
	4000 5300 4300 5300
Wire Wire Line
	4300 3100 4300 5300
Connection ~ 4300 5300
Wire Wire Line
	6150 1750 6150 2050
Wire Wire Line
	8350 1750 8350 1900
Wire Wire Line
	6850 1750 6850 1850
Wire Wire Line
	9100 1750 9100 1900
$Comp
L power:+5V #PWR0103
U 1 1 6092FA3C
P 7250 1750
F 0 "#PWR0103" H 7250 1600 50  0001 C CNN
F 1 "+5V" H 7265 1923 50  0000 C CNN
F 2 "" H 7250 1750 50  0001 C CNN
F 3 "" H 7250 1750 50  0001 C CNN
	1    7250 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1750 7250 1950
Text Notes 6900 2800 0    50   ~ 10
_/````\_ 
Text Notes 4600 5250 0    50   ~ 10
```\___/```
$Comp
L Switch:SW_Push SW1
U 1 1 609A24A0
P 9700 2100
F 0 "SW1" H 9700 2385 50  0000 C CNN
F 1 "RESET" H 9700 2294 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 9700 2300 50  0001 C CNN
F 3 "~" H 9700 2300 50  0001 C CNN
	1    9700 2100
	0    1    -1   0   
$EndComp
Wire Wire Line
	6150 4850 7450 4850
Wire Wire Line
	7450 4850 7450 4050
Wire Wire Line
	7450 4050 7750 4050
Wire Wire Line
	6150 4250 7350 4250
Wire Wire Line
	7350 4250 7350 3950
Wire Wire Line
	7350 3950 7750 3950
$Comp
L power:GND #PWR0105
U 1 1 609D36E9
P 5900 4350
F 0 "#PWR0105" H 5900 4100 50  0001 C CNN
F 1 "GND" H 5905 4177 50  0000 C CNN
F 2 "" H 5900 4350 50  0001 C CNN
F 3 "" H 5900 4350 50  0001 C CNN
	1    5900 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 609D4589
P 5900 4950
F 0 "#PWR0106" H 5900 4700 50  0001 C CNN
F 1 "GND" H 5905 4777 50  0000 C CNN
F 2 "" H 5900 4950 50  0001 C CNN
F 3 "" H 5900 4950 50  0001 C CNN
	1    5900 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 609D60A2
P 5650 4950
F 0 "#PWR0108" H 5650 4700 50  0001 C CNN
F 1 "GND" H 5655 4777 50  0000 C CNN
F 2 "" H 5650 4950 50  0001 C CNN
F 3 "" H 5650 4950 50  0001 C CNN
	1    5650 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4850 5650 4950
Wire Wire Line
	9700 1900 9100 1900
$Comp
L Device:Jumper_NC_Dual JP2
U 1 1 609952E3
P 5900 4850
F 0 "JP2" H 6200 4800 50  0000 C CNN
F 1 "PLAY L2H or H2L" H 6450 4700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5900 4850 50  0001 C CNN
F 3 "~" H 5900 4850 50  0001 C CNN
	1    5900 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4250 5650 4150
Wire Wire Line
	5650 4150 7300 4150
Wire Wire Line
	7300 4150 7300 3850
Wire Wire Line
	7300 3850 7750 3850
Wire Wire Line
	7450 3150 7450 3250
Wire Wire Line
	7250 3700 7450 3700
Wire Wire Line
	4300 5300 7250 5300
Text GLabel 7600 2950 0    50   Input ~ 0
PTT_IN
Wire Wire Line
	10050 4700 10400 4700
Text Notes 6150 5200 0    50   ~ 0
ISD_PLAY Waveform
$Comp
L power:GND #PWR025
U 1 1 60CDE0C9
P 4900 4200
F 0 "#PWR025" H 4900 3950 50  0001 C CNN
F 1 "GND" H 4905 4027 50  0000 C CNN
F 2 "" H 4900 4200 50  0001 C CNN
F 3 "" H 4900 4200 50  0001 C CNN
	1    4900 4200
	1    0    0    -1  
$EndComp
NoConn ~ 7750 2750
Wire Notes Line
	4750 4450 5150 4450
Wire Wire Line
	2300 4100 4550 4100
Text Notes 600  7650 0    50   ~ 0
Main Voltage input
Text Notes 1400 7650 0    50   ~ 0
ISD Board 5V output
NoConn ~ 7750 3250
Text GLabel 7650 2850 0    50   Input ~ 0
TONE_IN
Wire Wire Line
	7650 2850 7750 2850
Wire Wire Line
	10050 5100 10400 5100
Text GLabel 10400 5100 2    50   Output ~ 0
TONE_IN
Wire Wire Line
	9750 5100 9550 5100
$Comp
L Diode:1N4148 D2
U 1 1 60C836B0
P 9900 5100
F 0 "D2" H 9900 5317 50  0000 C CNN
F 1 "1N4148" H 9900 5226 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9900 4925 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9900 5100 50  0001 C CNN
	1    9900 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2000 3500 2000
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 60C11D69
P 3400 6650
F 0 "J4" H 3318 6425 50  0000 C CNN
F 1 "Tone Detector" H 3318 6516 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 3400 6650 50  0001 C CNN
F 3 "~" H 3400 6650 50  0001 C CNN
	1    3400 6650
	-1   0    0    1   
$EndComp
Wire Wire Line
	9100 2300 9700 2300
Wire Wire Line
	9100 1950 9100 1900
Connection ~ 9100 1900
Wire Wire Line
	9100 2250 9100 2300
Connection ~ 9100 2300
Wire Notes Line
	1350 800  6750 800 
Wire Notes Line
	6750 800  6750 3550
Wire Notes Line
	1850 4000 1850 4300
Wire Notes Line
	1850 4300 1350 4300
Wire Notes Line
	1350 1050 6750 1050
Wire Notes Line
	1350 800  1350 4300
Text Notes 3950 950  0    50   ~ 0
ANALOG GND
Text Notes 5750 1350 0    50   ~ 0
Morse Tone Generator
Text Notes 6150 4650 0    50   ~ 0
Voice or Morse\n\n
Wire Notes Line
	6150 4600 6750 4600
Wire Wire Line
	4550 4100 4550 3850
Wire Wire Line
	4550 3850 4900 3850
Wire Wire Line
	4900 3850 5600 3850
Connection ~ 4900 3850
Wire Wire Line
	4900 3900 4900 3850
$Comp
L Device:R R14
U 1 1 60CD6EB2
P 4900 4050
F 0 "R14" H 4750 4100 50  0000 C CNN
F 1 "10k" H 4750 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 4830 4050 50  0001 C CNN
F 3 "~" H 4900 4050 50  0001 C CNN
	1    4900 4050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7250 3700 7250 5300
Wire Wire Line
	7200 3050 7750 3050
Wire Wire Line
	5900 3850 7200 3850
Wire Wire Line
	7200 3050 7200 3850
Text Notes 7000 3700 0    50   ~ 0
*
Text Notes 5850 5850 0    50   ~ 0
*
Text Notes 5850 6150 0    50   ~ 0
ISD     ISD_PLAY\n\n\n1820\n\n\n1416
Text Notes 5800 6450 0    43   ~ 0
Selectable @JP2\n* default\nChange requires RESET
Wire Notes Line
	5800 5950 6600 5950
Wire Notes Line
	6100 5550 6100 6200
Wire Notes Line
	5800 5550 5800 6200
Wire Notes Line
	5800 5700 6600 5700
Wire Notes Line
	6600 5550 5800 5550
Wire Notes Line
	6600 6200 6600 5550
Wire Notes Line
	5800 6200 6600 6200
Text Notes 6150 6150 0    50   ~ 10
```\___/```
Text Notes 6150 5900 0    50   ~ 10
_/``````\__
Wire Notes Line
	4800 2400 5250 2400
Wire Notes Line
	2850 3000 3450 3000
Text Notes 4800 2350 0    50   ~ 0
Morse Level
Wire Notes Line
	6150 5250 6900 5250
Text GLabel 3650 6650 2    50   Output ~ 0
ToneDetector
Text GLabel 9550 5100 0    50   Input ~ 0
ToneDetector
Wire Wire Line
	7600 2950 7750 2950
Wire Notes Line
	5150 4450 5150 3700
Wire Notes Line
	4750 3700 4750 4450
Wire Notes Line
	5150 3700 4750 3700
Text Notes 4850 3800 0    28   ~ 0
Optional\npull down
Text Notes 7000 6000 0    50   ~ 0
NOTES:\n- P1.0 and P1.1 need external pull ups\n- ISD1810 is active with LOW to HIGH transition \n- ISD1416 is the opposite (High to Low)\n- Optional ISD_PLAY R14 for 1820 L2H transition. Remove otherwise
Text Notes 4700 2700 0    50   ~ 0
Morse Pitch
Wire Notes Line
	4700 2750 5150 2750
$Comp
L Device:Jumper_NC_Dual JP1
U 1 1 6098BBDA
P 5900 4250
F 0 "JP1" H 5600 4200 50  0000 C CNN
F 1 "ID TYPE(None/Either/Both?)" H 5150 4100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5900 4250 50  0001 C CNN
F 3 "~" H 5900 4250 50  0001 C CNN
	1    5900 4250
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 60CC8F43
P 4650 7150
F 0 "D3" V 4689 7032 50  0000 R CNN
F 1 "LED" V 4598 7032 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 4650 7150 50  0001 C CNN
F 3 "~" H 4650 7150 50  0001 C CNN
	1    4650 7150
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 60CC9678
P 4650 6700
F 0 "#PWR0102" H 4650 6550 50  0001 C CNN
F 1 "+5V" H 4665 6873 50  0000 C CNN
F 2 "" H 4650 6700 50  0001 C CNN
F 3 "" H 4650 6700 50  0001 C CNN
	1    4650 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 60CCA7EA
P 4650 6850
F 0 "R15" H 4500 6900 50  0000 C CNN
F 1 "1k" H 4500 6800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4580 6850 50  0001 C CNN
F 3 "~" H 4650 6850 50  0001 C CNN
	1    4650 6850
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 60CCB4B5
P 4650 7300
F 0 "#PWR0104" H 4650 7050 50  0001 C CNN
F 1 "GND" H 4655 7127 50  0000 C CNN
F 2 "" H 4650 7300 50  0001 C CNN
F 3 "" H 4650 7300 50  0001 C CNN
	1    4650 7300
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 60CEF1B8
P 7650 4500
F 0 "D4" V 7689 4382 50  0000 R CNN
F 1 "LED" V 7598 4382 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 7650 4500 50  0001 C CNN
F 3 "~" H 7650 4500 50  0001 C CNN
	1    7650 4500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R16
U 1 1 60CEF5B2
P 7650 4800
F 0 "R16" H 7500 4850 50  0000 C CNN
F 1 "100" H 7500 4750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7580 4800 50  0001 C CNN
F 3 "~" H 7650 4800 50  0001 C CNN
	1    7650 4800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 60CEF5BC
P 7650 4950
F 0 "#PWR0107" H 7650 4700 50  0001 C CNN
F 1 "GND" H 7655 4777 50  0000 C CNN
F 2 "" H 7650 4950 50  0001 C CNN
F 3 "" H 7650 4950 50  0001 C CNN
	1    7650 4950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7750 3450 7650 3450
Wire Wire Line
	7650 3450 7650 4350
Wire Wire Line
	7450 3150 7750 3150
Wire Notes Line
	4450 4000 4450 3550
Wire Notes Line
	1850 4000 4450 4000
Wire Notes Line
	4450 3550 6750 3550
$Comp
L Device:C C16
U 1 1 60D5BECD
P 2450 5100
F 0 "C16" H 2565 5146 50  0000 L CNN
F 1 "100n" H 2565 5055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 2488 4950 50  0001 C CNN
F 3 "~" H 2450 5100 50  0001 C CNN
	1    2450 5100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2450 4950 2450 4550
Wire Wire Line
	2300 4550 2450 4550
Connection ~ 2450 4550
Wire Wire Line
	2450 4550 3050 4550
$Comp
L power:GND #PWR027
U 1 1 60D63989
P 2450 5500
F 0 "#PWR027" H 2450 5250 50  0001 C CNN
F 1 "GND" H 2455 5327 50  0000 C CNN
F 2 "" H 2450 5500 50  0001 C CNN
F 3 "" H 2450 5500 50  0001 C CNN
	1    2450 5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2450 5250 2450 5500
Text Notes 1950 5900 0    50   ~ 0
C16\nadded after V1.0\n(Should had on J1 connections)
Text Notes 1900 3800 0    50   ~ 0
C3 Changed from V1.0\nfrom 100u to 472(4.7n ceramic)
Wire Wire Line
	3650 6650 3600 6650
$Comp
L power:GND #PWR033
U 1 1 60DF0C46
P 3600 7300
F 0 "#PWR033" H 3600 7050 50  0001 C CNN
F 1 "GND" H 3605 7127 50  0000 C CNN
F 2 "" H 3600 7300 50  0001 C CNN
F 3 "" H 3600 7300 50  0001 C CNN
	1    3600 7300
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 60DF0C3F
P 3600 7150
F 0 "C17" H 3715 7196 50  0000 L CNN
F 1 "100n" H 3715 7105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 3638 7000 50  0001 C CNN
F 3 "~" H 3600 7150 50  0001 C CNN
	1    3600 7150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3600 7000 3600 6650
Connection ~ 3600 6650
$EndSCHEMATC
