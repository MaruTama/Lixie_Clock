EESchema Schematic File Version 2
LIBS:LixieClock-rescue
LIBS:switches
LIBS:LixieClock
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:LixieClock-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Arduino_Nano A1
U 1 1 5B4B6603
P 6850 2750
F 0 "A1" H 6850 2750 60  0000 C CNN
F 1 "Arduino_Nano" H 6850 2900 60  0000 C CNN
F 2 "LixieClock:arduino_nano" H 6850 2750 60  0001 C CNN
F 3 "" H 6850 2750 60  0000 C CNN
	1    6850 2750
	1    0    0    -1  
$EndComp
$Comp
L DS1307 U5
U 1 1 5B4B710E
P 8750 5550
F 0 "U5" H 8750 5450 50  0000 C CNN
F 1 "DS1307" H 8750 5650 50  0000 C CNN
F 2 "LixieClock:DS1307_Socket_LongPads" H 8750 5550 50  0001 C CNN
F 3 "DOCUMENTATION" H 8750 5550 50  0001 C CNN
	1    8750 5550
	1    0    0    -1  
$EndComp
$Comp
L 74HC154 U4
U 1 1 5B4C1905
P 6000 5850
F 0 "U4" H 6000 5750 50  0000 C CNN
F 1 "74HC154" H 6000 5950 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-24W_7.5x15.4mm_Pitch1.27mm" H 6000 5850 50  0001 C CNN
F 3 "DOCUMENTATION" H 6000 5850 50  0001 C CNN
	1    6000 5850
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5B4C1AC2
P 4450 1700
F 0 "R6" V 4530 1700 50  0000 C CNN
F 1 "R" V 4450 1700 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4380 1700 50  0001 C CNN
F 3 "" H 4450 1700 50  0000 C CNN
	1    4450 1700
	-1   0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5B4C1B05
P 4050 1700
F 0 "R5" V 4130 1700 50  0000 C CNN
F 1 "R" V 4050 1700 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3980 1700 50  0001 C CNN
F 3 "" H 4050 1700 50  0000 C CNN
	1    4050 1700
	-1   0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5B4C1B42
P 3000 1700
F 0 "R4" V 3080 1700 50  0000 C CNN
F 1 "R" V 3000 1700 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2930 1700 50  0001 C CNN
F 3 "" H 3000 1700 50  0000 C CNN
	1    3000 1700
	-1   0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5B4C1B82
P 1550 1650
F 0 "R2" V 1630 1650 50  0000 C CNN
F 1 "R" V 1550 1650 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1480 1650 50  0001 C CNN
F 3 "" H 1550 1650 50  0000 C CNN
	1    1550 1650
	-1   0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5B4C1BC2
P 2600 1700
F 0 "R3" V 2680 1700 50  0000 C CNN
F 1 "R" V 2600 1700 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2530 1700 50  0001 C CNN
F 3 "" H 2600 1700 50  0000 C CNN
	1    2600 1700
	-1   0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5B4C1C11
P 1150 1650
F 0 "R1" V 1230 1650 50  0000 C CNN
F 1 "R" V 1150 1650 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1080 1650 50  0001 C CNN
F 3 "" H 1150 1650 50  0000 C CNN
	1    1150 1650
	-1   0    0    -1  
$EndComp
$Comp
L Q_PNP_ECB Q3
U 1 1 5B4C1CB7
P 2700 2500
F 0 "Q3" H 3000 2550 50  0000 R CNN
F 1 "Q_PNP_ECB" H 3300 2450 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 2900 2600 50  0001 C CNN
F 3 "" H 2700 2500 50  0000 C CNN
	1    2700 2500
	-1   0    0    -1  
$EndComp
$Comp
L Q_PNP_ECB Q6
U 1 1 5B4C1DB1
P 4550 2200
F 0 "Q6" H 4850 2250 50  0000 R CNN
F 1 "Q_PNP_ECB" H 5150 2150 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 4750 2300 50  0001 C CNN
F 3 "" H 4550 2200 50  0000 C CNN
	1    4550 2200
	-1   0    0    -1  
$EndComp
$Comp
L Q_PNP_ECB Q5
U 1 1 5B4C1DF0
P 4150 2500
F 0 "Q5" H 4450 2550 50  0000 R CNN
F 1 "Q_PNP_ECB" H 4750 2450 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 4350 2600 50  0001 C CNN
F 3 "" H 4150 2500 50  0000 C CNN
	1    4150 2500
	-1   0    0    -1  
$EndComp
$Comp
L Q_PNP_ECB Q4
U 1 1 5B4C1E41
P 3100 2200
F 0 "Q4" H 3400 2250 50  0000 R CNN
F 1 "Q_PNP_ECB" H 3700 2150 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 3300 2300 50  0001 C CNN
F 3 "" H 3100 2200 50  0000 C CNN
	1    3100 2200
	-1   0    0    -1  
$EndComp
$Comp
L Q_PNP_ECB Q2
U 1 1 5B4C1F11
P 1650 2200
F 0 "Q2" H 1950 2250 50  0000 R CNN
F 1 "Q_PNP_ECB" H 2250 2150 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 1850 2300 50  0001 C CNN
F 3 "" H 1650 2200 50  0000 C CNN
	1    1650 2200
	-1   0    0    -1  
$EndComp
$Comp
L Q_PNP_ECB Q1
U 1 1 5B4C1BCF
P 1250 2500
F 0 "Q1" H 1550 2550 50  0000 R CNN
F 1 "Q_PNP_ECB" H 1850 2450 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 1450 2600 50  0001 C CNN
F 3 "" H 1250 2500 50  0000 C CNN
	1    1250 2500
	-1   0    0    -1  
$EndComp
NoConn ~ 5350 6300
$Comp
L GND #PWR2
U 1 1 5B4C857F
P 5300 6600
F 0 "#PWR2" H 5300 6350 50  0001 C CNN
F 1 "GND" H 5300 6450 50  0000 C CNN
F 2 "" H 5300 6600 50  0001 C CNN
F 3 "" H 5300 6600 50  0001 C CNN
	1    5300 6600
	1    0    0    -1  
$EndComp
NoConn ~ 6650 6000
NoConn ~ 6650 6100
NoConn ~ 6650 6200
NoConn ~ 6650 6300
NoConn ~ 6650 6400
$Comp
L GND #PWR4
U 1 1 5B4C8969
P 6800 6600
F 0 "#PWR4" H 6800 6350 50  0001 C CNN
F 1 "GND" H 6800 6450 50  0000 C CNN
F 2 "" H 6800 6600 50  0001 C CNN
F 3 "" H 6800 6600 50  0001 C CNN
	1    6800 6600
	1    0    0    -1  
$EndComp
Text GLabel 4800 2200 2    60   Input ~ 0
DGT0
Text GLabel 4800 2500 2    60   Input ~ 0
DGT1
Text GLabel 3350 2200 2    60   Input ~ 0
DGT2
Text GLabel 3350 2500 2    60   Input ~ 0
DGT3
Text GLabel 1900 2200 2    60   Input ~ 0
DGT4
Text GLabel 1900 2500 2    60   Input ~ 0
DGT5
$Comp
L GND #PWR3
U 1 1 5B4C96F8
P 6100 3950
F 0 "#PWR3" H 6100 3700 50  0001 C CNN
F 1 "GND" H 6100 3800 50  0000 C CNN
F 2 "" H 6100 3950 50  0001 C CNN
F 3 "" H 6100 3950 50  0001 C CNN
	1    6100 3950
	1    0    0    -1  
$EndComp
NoConn ~ 6200 2900
NoConn ~ 6200 2450
NoConn ~ 6200 2300
NoConn ~ 6200 2200
NoConn ~ 7550 1700
NoConn ~ 7550 1800
Text GLabel 9900 5650 2    60   BiDi ~ 0
SDA
Text GLabel 9900 5500 2    60   Input ~ 0
SCL
NoConn ~ 8100 5250
NoConn ~ 8100 5350
NoConn ~ 9400 5450
NoConn ~ 8100 5450
NoConn ~ 8100 5550
NoConn ~ 8100 5650
NoConn ~ 8100 5750
NoConn ~ 8100 5850
$Comp
L GND #PWR6
U 1 1 5B4CA4A3
P 9600 6100
F 0 "#PWR6" H 9600 5850 50  0001 C CNN
F 1 "GND" H 9600 5950 50  0000 C CNN
F 2 "" H 9600 6100 50  0001 C CNN
F 3 "" H 9600 6100 50  0001 C CNN
	1    9600 6100
	1    0    0    -1  
$EndComp
Text GLabel 8150 3900 2    60   BiDi ~ 0
SDA
Text GLabel 8150 4050 2    60   Output ~ 0
SCL
NoConn ~ 7550 3700
NoConn ~ 7550 3800
Text GLabel 7250 5250 2    60   Input ~ 0
A0
Text GLabel 7250 5400 2    60   Input ~ 0
A1
Text GLabel 7250 5550 2    60   Input ~ 0
A2
Text GLabel 7250 5700 2    60   Input ~ 0
A3
Text GLabel 7650 1450 1    60   Output ~ 0
A0
Text GLabel 7800 1450 1    60   Output ~ 0
A1
Text GLabel 7950 1450 1    60   Output ~ 0
A2
Text GLabel 8100 1450 1    60   Output ~ 0
A3
Text GLabel 8850 2150 2    60   Output ~ 0
DGT0
Text GLabel 8850 2300 2    60   Output ~ 0
DGT1
Text GLabel 8850 2450 2    60   Output ~ 0
DGT2
Text GLabel 8850 2600 2    60   Output ~ 0
DGT3
Text GLabel 8850 2750 2    60   Output ~ 0
DGT4
Text GLabel 8850 2900 2    60   Output ~ 0
DGT5
NoConn ~ 7550 2300
$Comp
L Rotary_Encoder SW1
U 1 1 5B4CC589
P 9000 3400
F 0 "SW1" H 9000 3660 50  0000 C CNN
F 1 "Rotary_Encoder" H 9000 3140 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Alps_RK09K_Horizontal" H 8900 3560 50  0001 C CNN
F 3 "" H 9000 3660 50  0001 C CNN
	1    9000 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR5
U 1 1 5B4CC7FB
P 8650 3850
F 0 "#PWR5" H 8650 3600 50  0001 C CNN
F 1 "GND" H 8650 3700 50  0000 C CNN
F 2 "" H 8650 3850 50  0001 C CNN
F 3 "" H 8650 3850 50  0001 C CNN
	1    8650 3850
	1    0    0    -1  
$EndComp
NoConn ~ 7550 3000
NoConn ~ 7550 3100
$Comp
L R R7
U 1 1 5B4D0199
P 10350 2900
F 0 "R7" V 10430 2900 50  0000 C CNN
F 1 "R" V 10350 2900 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10280 2900 50  0001 C CNN
F 3 "" H 10350 2900 50  0001 C CNN
	1    10350 2900
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW2
U 1 1 5B4D022A
P 10350 3450
F 0 "SW2" H 10400 3550 50  0000 L CNN
F 1 "SW_Push" H 10350 3390 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h7.3mm" H 10350 3650 50  0001 C CNN
F 3 "" H 10350 3650 50  0001 C CNN
	1    10350 3450
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR7
U 1 1 5B4D033A
P 10350 3800
F 0 "#PWR7" H 10350 3550 50  0001 C CNN
F 1 "GND" H 10350 3650 50  0000 C CNN
F 2 "" H 10350 3800 50  0001 C CNN
F 3 "" H 10350 3800 50  0001 C CNN
	1    10350 3800
	1    0    0    -1  
$EndComp
Text GLabel 9950 3150 0    60   Output ~ 0
SW
Text GLabel 8350 3200 2    60   Input ~ 0
SW
Wire Wire Line
	4450 1850 4450 2000
Wire Wire Line
	4050 1850 4050 2300
Wire Wire Line
	3000 1850 3000 2000
Wire Wire Line
	2600 2300 2600 1850
Wire Wire Line
	1550 2000 1550 1800
Wire Wire Line
	1150 2300 1150 1800
Wire Wire Line
	1150 2700 1150 3550
Wire Wire Line
	1550 2400 1550 3450
Wire Wire Line
	2600 2700 2600 3300
Wire Wire Line
	3000 2400 3000 3200
Wire Wire Line
	4050 2700 4050 3650
Wire Wire Line
	4450 2400 4450 2750
Wire Wire Line
	4450 2750 4150 2750
Wire Wire Line
	4150 2750 4150 3650
Wire Wire Line
	1150 1050 1150 1500
Wire Wire Line
	1150 1350 1550 1350
Wire Wire Line
	1550 1350 1550 1500
Wire Wire Line
	2600 1050 2600 1550
Wire Wire Line
	2600 1350 3000 1350
Wire Wire Line
	3000 1350 3000 1550
Wire Wire Line
	4050 1050 4050 1550
Wire Wire Line
	4050 1350 4450 1350
Wire Wire Line
	4450 1350 4450 1550
Wire Wire Line
	1450 2500 1900 2500
Wire Wire Line
	1850 2200 1900 2200
Wire Wire Line
	3300 2200 3350 2200
Wire Wire Line
	2900 2500 3350 2500
Wire Wire Line
	4750 2200 4800 2200
Wire Wire Line
	4350 2500 4800 2500
Connection ~ 1150 1350
Connection ~ 2600 1350
Connection ~ 4050 1350
Wire Wire Line
	5350 6400 5300 6400
Wire Wire Line
	5300 6400 5300 6600
Wire Wire Line
	6800 5100 6800 5300
Wire Wire Line
	6800 5300 6650 5300
Wire Wire Line
	6650 5800 6800 5800
Wire Wire Line
	6800 5800 6800 6600
Wire Wire Line
	6650 5900 6800 5900
Connection ~ 6800 5900
Wire Wire Line
	6200 3650 6100 3650
Wire Wire Line
	6100 3650 6100 3950
Wire Wire Line
	6200 3750 6100 3750
Connection ~ 6100 3750
Wire Wire Line
	6200 2100 6000 2100
Wire Wire Line
	6000 2100 6000 1600
Wire Wire Line
	9900 5650 9400 5650
Wire Wire Line
	9400 5550 9800 5550
Wire Wire Line
	9800 5550 9800 5500
Wire Wire Line
	9800 5500 9900 5500
Wire Wire Line
	9400 5750 9600 5750
Wire Wire Line
	9600 5750 9600 5350
Wire Wire Line
	9400 5850 9600 5850
Wire Wire Line
	9600 5850 9600 6100
Wire Wire Line
	6650 5700 7250 5700
Wire Wire Line
	7250 5550 7150 5550
Wire Wire Line
	7150 5550 7150 5600
Wire Wire Line
	7150 5600 6650 5600
Wire Wire Line
	6650 5500 7050 5500
Wire Wire Line
	7050 5500 7050 5400
Wire Wire Line
	7050 5400 7250 5400
Wire Wire Line
	7250 5250 6950 5250
Wire Wire Line
	6950 5250 6950 5400
Wire Wire Line
	6950 5400 6650 5400
Wire Wire Line
	8700 3400 8650 3400
Wire Wire Line
	8650 3400 8650 3850
Wire Wire Line
	7550 3500 7950 3500
Wire Wire Line
	7950 3500 7950 3900
Wire Wire Line
	7950 3900 8150 3900
Wire Wire Line
	7550 3600 7800 3600
Wire Wire Line
	7800 3600 7800 4050
Wire Wire Line
	7800 4050 8150 4050
Wire Wire Line
	7550 2900 8850 2900
Wire Wire Line
	7550 2800 8750 2800
Wire Wire Line
	8750 2800 8750 2750
Wire Wire Line
	8750 2750 8850 2750
Wire Wire Line
	7550 2700 8650 2700
Wire Wire Line
	8650 2700 8650 2600
Wire Wire Line
	8650 2600 8850 2600
Wire Wire Line
	7550 2600 8550 2600
Wire Wire Line
	8550 2600 8550 2450
Wire Wire Line
	8550 2450 8850 2450
Wire Wire Line
	7550 2500 8450 2500
Wire Wire Line
	8450 2500 8450 2300
Wire Wire Line
	8450 2300 8850 2300
Wire Wire Line
	7550 2400 8350 2400
Wire Wire Line
	8350 2400 8350 2150
Wire Wire Line
	8350 2150 8850 2150
Wire Wire Line
	8100 2200 7550 2200
Wire Wire Line
	8100 1450 8100 2200
Wire Wire Line
	7950 2100 7550 2100
Wire Wire Line
	7950 1450 7950 2100
Wire Wire Line
	7800 2000 7550 2000
Wire Wire Line
	7800 1450 7800 2000
Wire Wire Line
	7650 1900 7550 1900
Wire Wire Line
	7650 1450 7650 1900
Wire Wire Line
	8700 3300 7550 3300
Wire Wire Line
	7550 3400 8550 3400
Wire Wire Line
	8550 3400 8550 3500
Wire Wire Line
	8550 3500 8700 3500
Wire Wire Line
	10350 2600 10350 2750
Wire Wire Line
	10350 3050 10350 3250
Wire Wire Line
	10350 3650 10350 3800
Connection ~ 10350 3150
Wire Wire Line
	9950 3150 10350 3150
Wire Wire Line
	7550 3200 8350 3200
Wire Wire Line
	3950 3650 3950 3200
Wire Wire Line
	3950 3200 3000 3200
Wire Wire Line
	2600 3300 3850 3300
Wire Wire Line
	3850 3300 3850 3650
Wire Wire Line
	3750 3650 3750 3450
Wire Wire Line
	3750 3450 1550 3450
Wire Wire Line
	1150 3550 3650 3550
Wire Wire Line
	3650 3550 3650 3650
Wire Wire Line
	5350 5300 3250 5300
Wire Wire Line
	3250 5300 3250 4950
Wire Wire Line
	3350 4950 3350 5400
Wire Wire Line
	3350 5400 5350 5400
Wire Wire Line
	3450 4950 3450 5500
Wire Wire Line
	3450 5500 5350 5500
Wire Wire Line
	3550 4950 3550 5600
Wire Wire Line
	3550 5600 5350 5600
Wire Wire Line
	3650 4950 3650 5700
Wire Wire Line
	3650 5700 5350 5700
Wire Wire Line
	3750 4950 3750 5800
Wire Wire Line
	3750 5800 5350 5800
Wire Wire Line
	3850 4950 3850 5900
Wire Wire Line
	3850 5900 5350 5900
Wire Wire Line
	3950 4950 3950 6000
Wire Wire Line
	3950 6000 5350 6000
Wire Wire Line
	4050 4950 4050 6100
Wire Wire Line
	4050 6100 5350 6100
Wire Wire Line
	5350 6200 4150 6200
Wire Wire Line
	4150 6200 4150 4950
$Comp
L 6DigitLixie U1
U 1 1 5B4DEE51
P 3700 4300
F 0 "U1" H 3700 4200 50  0000 C CNN
F 1 "6DigitLixie" H 3700 4400 50  0000 C CNN
F 2 "LixieClock:6DigitLixie" H 3700 4300 50  0001 C CNN
F 3 "DOCUMENTATION" H 3700 4300 50  0001 C CNN
	1    3700 4300
	0    1    1    0   
$EndComp
$Comp
L Jack-DC J1
U 1 1 5B4ECA68
P 1300 6750
F 0 "J1" H 1300 6960 50  0000 C CNN
F 1 "Jack-DC" H 1300 6575 50  0000 C CNN
F 2 "Connectors:BARREL_JACK" H 1350 6710 50  0001 C CNN
F 3 "" H 1350 6710 50  0001 C CNN
	1    1300 6750
	1    0    0    -1  
$EndComp
Text GLabel 1850 6650 2    60   Output ~ 0
5V
Wire Wire Line
	1600 6650 1850 6650
Wire Wire Line
	1600 6850 1850 6850
NoConn ~ 1600 6750
Text GLabel 1150 1050 1    60   Input ~ 0
5V
Text GLabel 2600 1050 1    60   Input ~ 0
5V
Text GLabel 4050 1050 1    60   Input ~ 0
5V
Text GLabel 10350 2600 1    60   Input ~ 0
5V
Text GLabel 6000 1600 1    60   Input ~ 0
5V
Text GLabel 6800 5100 1    60   Input ~ 0
5V
Text GLabel 9600 5350 1    60   Input ~ 0
5V
$Comp
L GND #PWR1
U 1 1 5B4EE1FD
P 1850 6850
F 0 "#PWR1" H 1850 6600 50  0001 C CNN
F 1 "GND" H 1850 6700 50  0000 C CNN
F 2 "" H 1850 6850 50  0001 C CNN
F 3 "" H 1850 6850 50  0001 C CNN
	1    1850 6850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
