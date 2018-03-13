EESchema Schematic File Version 4
LIBS:shadok-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 8
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
L conn:Conn_02x05_Odd_Even J401
U 1 1 5B3E0A60
P 6350 2150
F 0 "J401" H 6400 2567 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 6400 2476 50  0000 C CNN
F 2 "Connectors_IDC:IDC-Header_2x05_Pitch2.54mm_Straight" H 6350 2150 50  0001 C CNN
F 3 "~" H 6350 2150 50  0001 C CNN
	1    6350 2150
	1    0    0    -1  
$EndComp
$Comp
L device:R R405
U 1 1 5B3E0B52
P 5100 1750
F 0 "R405" H 5030 1704 50  0000 R CNN
F 1 "10K" H 5030 1795 50  0000 R CNN
F 2 "Resistors_SMD:R_0805" V 5030 1750 50  0001 C CNN
F 3 "" H 5100 1750 50  0001 C CNN
	1    5100 1750
	-1   0    0    1   
$EndComp
$Comp
L device:R R403
U 1 1 5B3E0B70
P 4850 1750
F 0 "R403" H 4780 1704 50  0000 R CNN
F 1 "10K" H 4780 1795 50  0000 R CNN
F 2 "Resistors_SMD:R_0805" V 4780 1750 50  0001 C CNN
F 3 "" H 4850 1750 50  0001 C CNN
	1    4850 1750
	-1   0    0    1   
$EndComp
$Comp
L device:R R407
U 1 1 5B3E0C53
P 5350 2600
F 0 "R407" H 5280 2554 50  0000 R CNN
F 1 "10K" H 5280 2645 50  0000 R CNN
F 2 "Resistors_SMD:R_0805" V 5280 2600 50  0001 C CNN
F 3 "" H 5350 2600 50  0001 C CNN
	1    5350 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 1950 5350 1950
Wire Wire Line
	6150 2150 5100 2150
Wire Wire Line
	6150 2350 4850 2350
Wire Wire Line
	6650 1950 6750 1950
Wire Wire Line
	6750 1950 6750 2350
Wire Wire Line
	6650 2350 6750 2350
Connection ~ 6750 2350
Wire Wire Line
	6750 2350 6750 2450
$Comp
L power:GND #PWR0407
U 1 1 5B3E0D66
P 6750 2450
F 0 "#PWR0407" H 6750 2200 50  0001 C CNN
F 1 "GND" H 6755 2277 50  0000 C CNN
F 2 "" H 6750 2450 50  0001 C CNN
F 3 "" H 6750 2450 50  0001 C CNN
	1    6750 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2450 5350 1950
Connection ~ 5350 1950
Wire Wire Line
	5100 2150 5100 1900
Connection ~ 5100 2150
Wire Wire Line
	4850 1900 4850 2350
Connection ~ 4850 2350
Wire Wire Line
	4850 2350 4700 2350
Wire Wire Line
	6650 2050 7250 2050
$Comp
L power:+2V5 #PWR0408
U 1 1 5B3E1126
P 7250 2050
F 0 "#PWR0408" H 7250 1900 50  0001 C CNN
F 1 "+2V5" V 7265 2178 50  0000 L CNN
F 2 "" H 7250 2050 50  0001 C CNN
F 3 "" H 7250 2050 50  0001 C CNN
	1    7250 2050
	0    1    1    0   
$EndComp
$Comp
L power:+2V5 #PWR0403
U 1 1 5B3E1144
P 5100 1600
F 0 "#PWR0403" H 5100 1450 50  0001 C CNN
F 1 "+2V5" H 5115 1773 50  0000 C CNN
F 2 "" H 5100 1600 50  0001 C CNN
F 3 "" H 5100 1600 50  0001 C CNN
	1    5100 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+2V5 #PWR0402
U 1 1 5B3E1163
P 4850 1600
F 0 "#PWR0402" H 4850 1450 50  0001 C CNN
F 1 "+2V5" H 4865 1773 50  0000 C CNN
F 2 "" H 4850 1600 50  0001 C CNN
F 3 "" H 4850 1600 50  0001 C CNN
	1    4850 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0404
U 1 1 5B3E1176
P 5350 2750
F 0 "#PWR0404" H 5350 2500 50  0001 C CNN
F 1 "GND" H 5355 2577 50  0000 C CNN
F 2 "" H 5350 2750 50  0001 C CNN
F 3 "" H 5350 2750 50  0001 C CNN
	1    5350 2750
	1    0    0    -1  
$EndComp
Text HLabel 4100 1950 0    47   Input ~ 0
TCK
Text HLabel 4100 2050 0    47   Input ~ 0
TDO
Text HLabel 4100 2150 0    47   Input ~ 0
TMS
Text HLabel 4100 2250 0    47   Input ~ 0
TDI
NoConn ~ 6150 2250
NoConn ~ 6650 2250
NoConn ~ 6650 2150
$Comp
L device:R_Pack04 RN401
U 1 1 5B3E18B6
P 4400 2150
F 0 "RN401" V 3983 2150 50  0000 C CNN
F 1 "25" V 4074 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_Array_Concave_4x0603" V 4675 2150 50  0001 C CNN
F 3 "" H 4400 2150 50  0001 C CNN
	1    4400 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 2250 4700 2250
Wire Wire Line
	4700 2250 4700 2350
Wire Wire Line
	4600 2150 5100 2150
Wire Wire Line
	4600 2050 6150 2050
Wire Wire Line
	4600 1950 5350 1950
Wire Wire Line
	4200 2250 4100 2250
Wire Wire Line
	4200 2150 4100 2150
Wire Wire Line
	4200 2050 4100 2050
Wire Wire Line
	4200 1950 4100 1950
Text HLabel 4300 5300 0    47   Input ~ 0
~CONFIG
Text HLabel 4300 5400 0    47   Input ~ 0
CONF_DONE
Text HLabel 4300 5500 0    47   Input ~ 0
~STATUS
$Comp
L power:+3V3 #PWR0401
U 1 1 5B3EE1AC
P 4600 4900
F 0 "#PWR0401" H 4600 4750 50  0001 C CNN
F 1 "+3V3" H 4615 5073 50  0000 C CNN
F 2 "" H 4600 4900 50  0001 C CNN
F 3 "" H 4600 4900 50  0001 C CNN
	1    4600 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5300 4600 5300
Wire Wire Line
	4600 5200 4600 5300
Connection ~ 4600 5300
Wire Wire Line
	4600 5300 5650 5300
Text Notes 4900 4750 0    47   ~ 0
VCCIO of BANK0
Text Notes 4400 5700 0    47   ~ 0
Cyclone IV Handbook Figure 8-29\nProgramming Serial Configuration Devices In-System using the JTAG Interface\n
Text Notes 5300 1450 0    47   ~ 0
VCCA
Text Notes 5900 5400 0    47   ~ 0
These signals also to ESP12F
Wire Wire Line
	5200 5500 5650 5500
Wire Wire Line
	4300 5500 5200 5500
Wire Wire Line
	4900 5400 5650 5400
Wire Wire Line
	4300 5400 4900 5400
Connection ~ 4900 5400
Wire Wire Line
	4900 5200 4900 5400
Connection ~ 5200 5500
Wire Wire Line
	5200 5200 5200 5500
Wire Wire Line
	4900 4900 5200 4900
Wire Wire Line
	4600 4900 4900 4900
Connection ~ 4900 4900
$Comp
L device:R R404
U 1 1 5B3EE14A
P 4900 5050
F 0 "R404" H 4830 5004 50  0000 R CNN
F 1 "10K" H 4830 5095 50  0000 R CNN
F 2 "Resistors_SMD:R_0603" V 4830 5050 50  0001 C CNN
F 3 "" H 4900 5050 50  0001 C CNN
	1    4900 5050
	-1   0    0    1   
$EndComp
$Comp
L device:R R406
U 1 1 5B3EE17C
P 5200 5050
F 0 "R406" H 5130 5004 50  0000 R CNN
F 1 "10K" H 5130 5095 50  0000 R CNN
F 2 "Resistors_SMD:R_0603" V 5130 5050 50  0001 C CNN
F 3 "" H 5200 5050 50  0001 C CNN
	1    5200 5050
	-1   0    0    1   
$EndComp
Connection ~ 4600 4900
$Comp
L device:R R401
U 1 1 5B3EE0E9
P 4600 5050
F 0 "R401" H 4530 5004 50  0000 R CNN
F 1 "10K" H 4530 5095 50  0000 R CNN
F 2 "Resistors_SMD:R_0603" V 4530 5050 50  0001 C CNN
F 3 "" H 4600 5050 50  0001 C CNN
	1    4600 5050
	-1   0    0    1   
$EndComp
$EndSCHEMATC