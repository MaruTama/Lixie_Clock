EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:LixieMounter
LIBS:LixieMounter-cache
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
L 2DigitLixie U1
U 1 1 5B4DDBB3
P 3950 3450
F 0 "U1" H 3950 3350 50  0000 C CNN
F 1 "2DigitLixie" H 3950 3550 50  0000 C CNN
F 2 "LixieMounter:LixieUnit" H 3950 3450 50  0001 C CNN
F 3 "DOCUMENTATION" H 3950 3450 50  0001 C CNN
	1    3950 3450
	0    1    1    0   
$EndComp
$Comp
L 2DigitLixie U2
U 1 1 5B4DDC47
P 5650 3450
F 0 "U2" H 5650 3350 50  0000 C CNN
F 1 "2DigitLixie" H 5650 3550 50  0000 C CNN
F 2 "LixieMounter:LixieUnit" H 5650 3450 50  0001 C CNN
F 3 "DOCUMENTATION" H 5650 3450 50  0001 C CNN
	1    5650 3450
	0    1    1    0   
$EndComp
$Comp
L 2DigitLixie U3
U 1 1 5B4DDCA1
P 7350 3450
F 0 "U3" H 7350 3350 50  0000 C CNN
F 1 "2DigitLixie" H 7350 3550 50  0000 C CNN
F 2 "LixieMounter:LixieUnit" H 7350 3450 50  0001 C CNN
F 3 "DOCUMENTATION" H 7350 3450 50  0001 C CNN
	1    7350 3450
	0    1    1    0   
$EndComp
$Comp
L Conn_01x10 J2
U 1 1 5B4DDCFB
P 8150 4750
F 0 "J2" H 8150 5250 50  0000 C CNN
F 1 "Conn_01x10" H 8150 4150 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x10_Pitch2.54mm" H 8150 4750 50  0001 C CNN
F 3 "" H 8150 4750 50  0001 C CNN
	1    8150 4750
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x06 J1
U 1 1 5B4DDDB6
P 3200 2200
F 0 "J1" H 3200 2500 50  0000 C CNN
F 1 "Conn_01x06" H 3200 1800 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06_Pitch2.54mm" H 3200 2200 50  0001 C CNN
F 3 "" H 3200 2200 50  0001 C CNN
	1    3200 2200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3500 4100 3500 4350
Wire Wire Line
	3500 4350 7950 4350
Wire Wire Line
	3600 4100 3600 4450
Wire Wire Line
	3600 4450 7950 4450
Wire Wire Line
	3700 4100 3700 4550
Wire Wire Line
	3700 4550 7950 4550
Wire Wire Line
	3800 4100 3800 4650
Wire Wire Line
	3800 4650 7950 4650
Wire Wire Line
	3900 4100 3900 4750
Wire Wire Line
	3900 4750 7950 4750
Wire Wire Line
	4000 4100 4000 4850
Wire Wire Line
	4000 4850 7950 4850
Wire Wire Line
	4100 4100 4100 4950
Wire Wire Line
	4100 4950 7950 4950
Wire Wire Line
	4200 4100 4200 5050
Wire Wire Line
	4200 5050 7950 5050
Wire Wire Line
	4300 5150 7950 5150
Wire Wire Line
	4300 5150 4300 4100
Wire Wire Line
	4400 4100 4400 5250
Wire Wire Line
	4400 5250 7950 5250
Wire Wire Line
	5200 4100 5200 4350
Connection ~ 5200 4350
Wire Wire Line
	5300 4100 5300 4450
Connection ~ 5300 4450
Wire Wire Line
	5400 4100 5400 4550
Connection ~ 5400 4550
Wire Wire Line
	5500 4100 5500 4650
Connection ~ 5500 4650
Wire Wire Line
	5600 4100 5600 4750
Connection ~ 5600 4750
Wire Wire Line
	5700 4100 5700 4850
Connection ~ 5700 4850
Wire Wire Line
	5800 4100 5800 4950
Connection ~ 5800 4950
Wire Wire Line
	5900 4100 5900 5050
Connection ~ 5900 5050
Wire Wire Line
	6000 4100 6000 5150
Connection ~ 6000 5150
Wire Wire Line
	6100 4100 6100 5250
Connection ~ 6100 5250
Wire Wire Line
	6900 4100 6900 4350
Connection ~ 6900 4350
Wire Wire Line
	7000 4100 7000 4450
Connection ~ 7000 4450
Wire Wire Line
	7100 4100 7100 4550
Connection ~ 7100 4550
Wire Wire Line
	7200 4100 7200 4650
Connection ~ 7200 4650
Wire Wire Line
	7300 4100 7300 4750
Connection ~ 7300 4750
Wire Wire Line
	7400 4100 7400 4850
Connection ~ 7400 4850
Wire Wire Line
	7500 4100 7500 4950
Connection ~ 7500 4950
Wire Wire Line
	7600 4100 7600 5050
Connection ~ 7600 5050
Wire Wire Line
	7700 4100 7700 5150
Connection ~ 7700 5150
Wire Wire Line
	7800 4100 7800 5250
Connection ~ 7800 5250
Wire Wire Line
	3400 2000 4400 2000
Wire Wire Line
	4400 2000 4400 2800
Wire Wire Line
	3400 2100 4300 2100
Wire Wire Line
	4300 2100 4300 2800
Wire Wire Line
	3400 2200 6100 2200
Wire Wire Line
	6100 2200 6100 2800
Wire Wire Line
	3400 2300 6000 2300
Wire Wire Line
	6000 2300 6000 2800
Wire Wire Line
	3400 2400 7800 2400
Wire Wire Line
	7800 2400 7800 2800
Wire Wire Line
	3400 2500 7700 2500
Wire Wire Line
	7700 2500 7700 2800
$EndSCHEMATC
