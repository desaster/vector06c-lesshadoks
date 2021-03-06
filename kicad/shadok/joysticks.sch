EESchema Schematic File Version 4
LIBS:shadok-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 9
Title "Joystick ports"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L device:R_Pack04 RN705
U 1 1 5B9F41BC
P 5800 3900
F 0 "RN705" V 5350 3850 50  0000 C CNN
F 1 "10K" V 5450 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_Array_Concave_4x0603" V 6075 3900 50  0001 C CNN
F 3 "" H 5800 3900 50  0001 C CNN
	1    5800 3900
	0    1    1    0   
$EndComp
$Comp
L device:R_Pack04 RN706
U 1 1 5B9F41C3
P 5800 4300
F 0 "RN706" V 6050 4250 50  0000 C CNN
F 1 "10K" V 6150 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_Array_Concave_4x0603" V 6075 4300 50  0001 C CNN
F 3 "" H 5800 4300 50  0001 C CNN
	1    5800 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 3700 6050 3700
Wire Wire Line
	5600 3700 5600 3800
Connection ~ 5600 3800
Wire Wire Line
	5600 3800 5600 3900
Connection ~ 5600 3900
Wire Wire Line
	5600 3900 5600 4000
Connection ~ 5600 4000
Wire Wire Line
	5600 4000 5600 4050
Connection ~ 5600 4100
Wire Wire Line
	5600 4100 5600 4200
Connection ~ 5600 4200
Wire Wire Line
	5600 4200 5600 4300
Connection ~ 5600 4300
Wire Wire Line
	5600 4300 5600 4400
Wire Wire Line
	5600 4050 5450 4050
Connection ~ 5600 4050
Wire Wire Line
	5600 4050 5600 4100
$Comp
L power:+3V3 #PWR0704
U 1 1 5B9F41DC
P 5450 4050
F 0 "#PWR0704" H 5450 3900 50  0001 C CNN
F 1 "+3V3" V 5465 4178 50  0000 L CNN
F 2 "" H 5450 4050 50  0001 C CNN
F 3 "" H 5450 4050 50  0001 C CNN
	1    5450 4050
	0    -1   -1   0   
$EndComp
$Comp
L conn:DB9_Male J702
U 1 1 5B9F41EE
P 7800 2000
F 0 "J702" H 7979 2003 50  0000 L CNN
F 1 "DB9_Male_MountingHoles" H 7979 1912 50  0000 L CNN
F 2 "Connectors_DSub:DSUB-9_Male_Vertical_Pitch2.77x2.84mm" H 7800 2000 50  0001 C CNN
F 3 "" H 7800 2000 50  0001 C CNN
	1    7800 2000
	1    0    0    -1  
$EndComp
$Comp
L conn:DB9_Male J701
U 1 1 5B9F41F5
P 5100 2000
F 0 "J701" H 5279 2003 50  0000 L CNN
F 1 "DB9_Male_MountingHoles" H 5279 1912 50  0000 L CNN
F 2 "Connectors_DSub:DSUB-9_Male_Vertical_Pitch2.77x2.84mm" H 5100 2000 50  0001 C CNN
F 3 "" H 5100 2000 50  0001 C CNN
	1    5100 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2400 6750 2400
Text Label 7150 2400 0    47   ~ 0
~P1UP
Wire Wire Line
	7500 2200 6650 2200
Text Label 7150 2200 0    47   ~ 0
~P1DN
Text Label 7150 2000 0    47   ~ 0
~P1LT
Wire Wire Line
	7500 2000 6550 2000
Wire Wire Line
	7500 1800 6450 1800
Text Label 7150 1800 0    47   ~ 0
~P1RT
Wire Wire Line
	7500 2300 6350 2300
Text Label 7150 2300 0    47   ~ 0
~P1B1
Wire Wire Line
	7500 1700 6250 1700
Text Label 7150 1700 0    47   ~ 0
~P1B2
$Comp
L power:GND #PWR0707
U 1 1 5B9F4208
P 7500 1900
F 0 "#PWR0707" H 7500 1650 50  0001 C CNN
F 1 "GND" H 7650 1800 50  0001 C CNN
F 2 "" H 7500 1900 50  0001 C CNN
F 3 "" H 7500 1900 50  0001 C CNN
	1    7500 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 2400 3950 2400
Wire Wire Line
	4800 2000 3750 2000
Wire Wire Line
	4800 1800 3650 1800
Text Label 4450 2400 0    47   ~ 0
~P2UP
Text Label 4450 2300 0    47   ~ 0
~P2B1
Text Label 4450 2200 0    47   ~ 0
~P2DN
Text Label 4450 2000 0    47   ~ 0
~P2LT
Text Label 4450 1800 0    47   ~ 0
~P2RT
Text Label 4450 1700 0    47   ~ 0
~P2B2
$Comp
L device:R_Pack04 RN701
U 1 1 5B9F4223
P 2850 4800
F 0 "RN701" V 2433 4800 50  0000 C CNN
F 1 "10K" V 2524 4800 50  0000 C CNN
F 2 "Resistors_SMD:R_Array_Concave_4x0603" V 3125 4800 50  0001 C CNN
F 3 "" H 2850 4800 50  0001 C CNN
	1    2850 4800
	0    1    1    0   
$EndComp
$Comp
L device:R_Pack04 RN702
U 1 1 5B9F422A
P 2850 5200
F 0 "RN702" V 3100 5200 50  0000 C CNN
F 1 "10K" V 3200 5200 50  0000 C CNN
F 2 "Resistors_SMD:R_Array_Concave_4x0603" V 3125 5200 50  0001 C CNN
F 3 "" H 2850 5200 50  0001 C CNN
	1    2850 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 5200 3850 5200
Wire Wire Line
	3050 5000 3650 5000
Wire Wire Line
	6800 4900 3550 4900
Wire Wire Line
	3050 4800 3450 4800
Wire Wire Line
	6800 4700 3350 4700
Wire Wire Line
	6800 4600 3250 4600
Wire Wire Line
	6000 3800 6150 3800
Wire Wire Line
	6000 3900 6250 3900
Wire Wire Line
	6000 4000 6350 4000
Wire Wire Line
	6000 4100 6450 4100
Wire Wire Line
	6000 4200 6550 4200
Wire Wire Line
	6000 4300 6650 4300
Connection ~ 6650 4300
Wire Wire Line
	6650 4300 6800 4300
Connection ~ 6550 4200
Wire Wire Line
	6550 4200 6800 4200
Connection ~ 6450 4100
Wire Wire Line
	6450 4100 6800 4100
Connection ~ 6350 4000
Wire Wire Line
	6350 4000 6800 4000
Connection ~ 6250 3900
Wire Wire Line
	6250 3900 6800 3900
Wire Wire Line
	7500 1600 6150 1600
Connection ~ 6150 3800
Wire Wire Line
	6150 3800 6800 3800
Text Label 7150 1600 0    47   ~ 0
~P1B3
Wire Wire Line
	7500 2100 6050 2100
Connection ~ 6050 3700
Wire Wire Line
	6050 3700 6800 3700
Text Label 7150 2100 0    47   ~ 0
~P1B4
Text Label 4450 1600 0    47   ~ 0
~P2B3
Text Label 4450 2100 0    47   ~ 0
~P2B4
Connection ~ 3950 5300
Wire Wire Line
	3950 5300 3050 5300
Connection ~ 3850 5200
Connection ~ 3750 5100
Wire Wire Line
	3750 5100 3050 5100
Connection ~ 3650 5000
Connection ~ 3550 4900
Wire Wire Line
	3550 4900 3050 4900
Wire Wire Line
	3550 2300 4800 2300
Wire Wire Line
	3450 1700 4800 1700
Connection ~ 3450 4800
Wire Wire Line
	3450 4800 6800 4800
Wire Wire Line
	3350 1600 4800 1600
Connection ~ 3350 4700
Wire Wire Line
	3350 4700 3050 4700
Wire Wire Line
	3250 2100 4800 2100
Connection ~ 3250 4600
Wire Wire Line
	3250 4600 3050 4600
$Comp
L power:+3V3 #PWR0701
U 1 1 5B9F4282
P 2550 4950
F 0 "#PWR0701" H 2550 4800 50  0001 C CNN
F 1 "+3V3" V 2565 5078 50  0000 L CNN
F 2 "" H 2550 4950 50  0001 C CNN
F 3 "" H 2550 4950 50  0001 C CNN
	1    2550 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 4950 2650 4950
Wire Wire Line
	2650 4950 2650 4900
Connection ~ 2650 4700
Wire Wire Line
	2650 4700 2650 4600
Connection ~ 2650 4800
Wire Wire Line
	2650 4800 2650 4700
Connection ~ 2650 4900
Wire Wire Line
	2650 4900 2650 4800
Wire Wire Line
	2650 4950 2650 5000
Connection ~ 2650 4950
Connection ~ 2650 5000
Wire Wire Line
	2650 5000 2650 5100
Connection ~ 2650 5100
Wire Wire Line
	2650 5100 2650 5200
Connection ~ 2650 5200
Wire Wire Line
	2650 5200 2650 5300
$Comp
L power:GND #PWR0702
U 1 1 5B9F4299
P 4800 1900
F 0 "#PWR0702" H 4800 1650 50  0001 C CNN
F 1 "GND" H 4950 1800 50  0001 C CNN
F 2 "" H 4800 1900 50  0001 C CNN
F 3 "" H 4800 1900 50  0001 C CNN
	1    4800 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 2200 4800 2200
Text HLabel 8100 4700 2    47   Input ~ 0
CLK
Text HLabel 8100 4800 2    47   Input ~ 0
SI
Text HLabel 8100 4600 2    47   Input ~ 0
~SS
$Comp
L microchip:MCP23S17 U701
U 1 1 5BAEBCE9
P 7300 4500
F 0 "U701" H 7550 5600 50  0000 C CNN
F 1 "MCP23S17" H 7700 5500 50  0000 C CNN
F 2 "Housings_SSOP:SSOP-28_5.3x10.2mm_Pitch0.65mm" H 7350 3550 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 7550 5500 50  0001 C CNN
	1    7300 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 5300 6800 5300
Wire Wire Line
	3850 5200 6800 5200
Wire Wire Line
	3750 5100 6800 5100
Wire Wire Line
	3650 5000 6800 5000
$Comp
L power:GND #PWR0706
U 1 1 5BB2E0A7
P 7300 5500
F 0 "#PWR0706" H 7300 5250 50  0001 C CNN
F 1 "GND" H 7450 5400 50  0001 C CNN
F 2 "" H 7300 5500 50  0001 C CNN
F 3 "" H 7300 5500 50  0001 C CNN
	1    7300 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0705
U 1 1 5BB2E0C8
P 7300 3500
F 0 "#PWR0705" H 7300 3350 50  0001 C CNN
F 1 "+3V3" H 7315 3673 50  0000 C CNN
F 2 "" H 7300 3500 50  0001 C CNN
F 3 "" H 7300 3500 50  0001 C CNN
	1    7300 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0709
U 1 1 5BB2E49E
P 7800 3700
F 0 "#PWR0709" H 7800 3450 50  0001 C CNN
F 1 "GND" H 7950 3600 50  0001 C CNN
F 2 "" H 7800 3700 50  0001 C CNN
F 3 "" H 7800 3700 50  0001 C CNN
	1    7800 3700
	1    0    0    -1  
$EndComp
NoConn ~ 7800 4100
NoConn ~ 7800 4200
Wire Wire Line
	7800 4700 8100 4700
Wire Wire Line
	7800 4600 8050 4600
Wire Wire Line
	7800 4800 8100 4800
Wire Wire Line
	7800 4900 8100 4900
Text HLabel 8100 4900 2    47   Input ~ 0
SO
Wire Wire Line
	7800 5100 7800 5200
Connection ~ 7800 5200
Wire Wire Line
	7800 5200 7800 5300
$Comp
L power:GND #PWR0710
U 1 1 5BB431A6
P 7800 5500
F 0 "#PWR0710" H 7800 5250 50  0001 C CNN
F 1 "GND" H 7950 5400 50  0001 C CNN
F 2 "" H 7800 5500 50  0001 C CNN
F 3 "" H 7800 5500 50  0001 C CNN
	1    7800 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 5300 7800 5500
Connection ~ 7800 5300
Wire Wire Line
	6000 4400 6750 4400
Connection ~ 6750 4400
Wire Wire Line
	6750 4400 6800 4400
Wire Wire Line
	3250 2100 3250 4600
Wire Wire Line
	3350 1600 3350 4700
Wire Wire Line
	3450 1700 3450 4800
Wire Wire Line
	3550 2300 3550 4900
Wire Wire Line
	3650 1800 3650 5000
Wire Wire Line
	3750 2000 3750 5100
Wire Wire Line
	3850 2200 3850 5200
Wire Wire Line
	3950 2400 3950 5300
Wire Wire Line
	6050 2100 6050 3700
Wire Wire Line
	6150 1600 6150 3800
Wire Wire Line
	6250 1700 6250 3900
Wire Wire Line
	6350 2300 6350 4000
Wire Wire Line
	6450 1800 6450 4100
Wire Wire Line
	6550 2000 6550 4200
Wire Wire Line
	6650 2200 6650 4300
Wire Wire Line
	6750 2400 6750 4400
$Comp
L device:R R701
U 1 1 5A87EA70
P 8050 4350
F 0 "R701" V 8150 4300 50  0000 C CNN
F 1 "10K" V 8050 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7980 4350 50  0001 C CNN
F 3 "" H 8050 4350 50  0001 C CNN
	1    8050 4350
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR016
U 1 1 5A87EA77
P 8050 4200
F 0 "#PWR016" H 8050 4050 50  0001 C CNN
F 1 "+3V3" H 8100 4250 50  0000 L CNN
F 2 "" H 8050 4200 50  0001 C CNN
F 3 "" H 8050 4200 50  0001 C CNN
	1    8050 4200
	1    0    0    -1  
$EndComp
Text Label 8200 4500 0    50   ~ 0
BUTT1
Wire Wire Line
	8050 4500 8050 4600
Connection ~ 8050 4600
Wire Wire Line
	8050 4600 8100 4600
$EndSCHEMATC
