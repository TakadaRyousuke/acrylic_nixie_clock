EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 3
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
L RF_Module:ESP32-PICO-D4 U2
U 1 1 5F79213C
P 5450 3850
F 0 "U2" H 5450 2161 50  0000 C CNN
F 1 "ESP32-PICO-D4" H 5450 2070 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-48-1EP_7x7mm_P0.5mm_EP5.3x5.3mm" H 5450 2150 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-pico-d4_datasheet_en.pdf" H 5700 2850 50  0001 C CNN
	1    5450 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5F79421D
P 5900 5600
F 0 "#PWR013" H 5900 5350 50  0001 C CNN
F 1 "GND" H 5905 5427 50  0000 C CNN
F 2 "" H 5900 5600 50  0001 C CNN
F 3 "" H 5900 5600 50  0001 C CNN
	1    5900 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5450 5450 5500
Wire Wire Line
	5450 5500 5900 5500
Wire Wire Line
	5900 5500 5900 5600
$Comp
L Device:C C4
U 1 1 5F79526F
P 6850 2150
F 0 "C4" H 6965 2196 50  0000 L CNN
F 1 "10uF" H 6965 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6888 2000 50  0001 C CNN
F 3 "~" H 6850 2150 50  0001 C CNN
	1    6850 2150
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C3
U 1 1 5F79697B
P 6850 1400
F 0 "C3" H 6965 1446 50  0000 L CNN
F 1 "0.1uF" H 6965 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6888 1250 50  0001 C CNN
F 3 "~" H 6850 1400 50  0001 C CNN
	1    6850 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5350 2250 5350 1400
Wire Wire Line
	7000 2150 7050 2150
Wire Wire Line
	7050 2150 7050 1400
Wire Wire Line
	7050 1400 7000 1400
Connection ~ 7050 2150
Wire Wire Line
	5250 1100 5250 1400
Connection ~ 5350 1400
Wire Wire Line
	5350 1400 5250 1400
Wire Wire Line
	5250 1400 5250 2250
Wire Wire Line
	7050 5500 5900 5500
Connection ~ 5900 5500
Wire Wire Line
	7050 2150 7050 2300
Wire Wire Line
	6700 2150 6600 2150
Wire Wire Line
	6600 2150 6600 1400
Wire Wire Line
	6600 1400 6700 1400
Wire Wire Line
	6600 1400 5550 1400
Connection ~ 6600 1400
$Comp
L Device:Battery_Cell BT1
U 1 1 5F79D954
P 5850 1900
F 0 "BT1" V 5595 1950 50  0000 C CNN
F 1 "Battery_Cell" V 5686 1950 50  0000 C CNN
F 2 "Battery:BatteryHolder_Keystone_1058_1x2032" V 5850 1960 50  0001 C CNN
F 3 "~" V 5850 1960 50  0001 C CNN
	1    5850 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 1900 5450 1900
Wire Wire Line
	5450 1900 5450 2250
Wire Wire Line
	5950 1900 6550 1900
Wire Wire Line
	6550 1900 6550 2300
Wire Wire Line
	6550 2300 7050 2300
Connection ~ 7050 2300
Wire Wire Line
	5550 2250 5550 1400
Connection ~ 5550 1400
Wire Wire Line
	5550 1400 5350 1400
Text HLabel 6350 2650 2    50   Input ~ 0
IO0
Text HLabel 6350 2850 2    50   Input ~ 0
IO2
Text HLabel 6350 3050 2    50   Input ~ 0
IO4
Text HLabel 6350 3150 2    50   Input ~ 0
IO5
Text HLabel 6350 3250 2    50   Input ~ 0
IO9SD2
Text HLabel 6350 3350 2    50   Input ~ 0
IO10SD3
Text HLabel 6350 3450 2    50   Input ~ 0
IO12
Text HLabel 6350 3550 2    50   Input ~ 0
IO13
Text HLabel 6350 3650 2    50   Input ~ 0
IO14
Text HLabel 6350 3750 2    50   Input ~ 0
IO15
Text HLabel 6350 3850 2    50   Input ~ 0
IO18
Text HLabel 6350 3950 2    50   Input ~ 0
IO19
Text HLabel 6350 4050 2    50   Input ~ 0
IO21
Text HLabel 6350 4150 2    50   Input ~ 0
IO22
Text HLabel 6350 4250 2    50   Input ~ 0
IO23
Text HLabel 6350 4350 2    50   Input ~ 0
IO25
Text HLabel 6350 4450 2    50   Input ~ 0
IO26
Text HLabel 6350 4550 2    50   Input ~ 0
IO27
Text HLabel 6350 4650 2    50   Input ~ 0
IO32
Text HLabel 6350 4750 2    50   Input ~ 0
IO33
Text HLabel 6350 4850 2    50   Input ~ 0
IO34
Text HLabel 6350 4950 2    50   Input ~ 0
IO35
Wire Wire Line
	6250 5150 6350 5150
Wire Wire Line
	6250 4950 6350 4950
Wire Wire Line
	6250 4850 6350 4850
Wire Wire Line
	6250 4750 6350 4750
Wire Wire Line
	6250 4650 6350 4650
Wire Wire Line
	6250 4550 6350 4550
Wire Wire Line
	6250 4450 6350 4450
Wire Wire Line
	6250 4350 6350 4350
Wire Wire Line
	6250 4250 6350 4250
Wire Wire Line
	6250 4150 6350 4150
Wire Wire Line
	6250 4050 6350 4050
Wire Wire Line
	6250 3950 6350 3950
Wire Wire Line
	6250 3850 6350 3850
Wire Wire Line
	6250 3750 6350 3750
Wire Wire Line
	6250 3650 6350 3650
Wire Wire Line
	6250 3550 6350 3550
Wire Wire Line
	6250 3450 6350 3450
Wire Wire Line
	6250 3350 6350 3350
Wire Wire Line
	6250 3250 6350 3250
Wire Wire Line
	6250 3150 6350 3150
Wire Wire Line
	6250 3050 6350 3050
Wire Wire Line
	6250 2950 6350 2950
Wire Wire Line
	6250 2850 6350 2850
Wire Wire Line
	6250 2750 6350 2750
Wire Wire Line
	6250 2650 6350 2650
Wire Wire Line
	4550 2950 4650 2950
Wire Wire Line
	4550 2850 4650 2850
Wire Wire Line
	4550 2750 4650 2750
Wire Wire Line
	4550 2650 4650 2650
Wire Wire Line
	4550 3850 4650 3850
Wire Wire Line
	4550 3950 4650 3950
NoConn ~ 6350 5150
Text HLabel 4550 3850 0    50   Input ~ 0
IO16
Text HLabel 4550 2650 0    50   Input ~ 0
SENSORVP
Text HLabel 4550 2750 0    50   Input ~ 0
SENSORCAPP
Text HLabel 4550 2850 0    50   Input ~ 0
SENSORCAPN
Text HLabel 4550 2950 0    50   Input ~ 0
SENSORVN
Text HLabel 4550 3950 0    50   Input ~ 0
IO17
Wire Wire Line
	4550 4050 4650 4050
Wire Wire Line
	4550 4150 4650 4150
Wire Wire Line
	4550 4250 4650 4250
Wire Wire Line
	4550 4350 4650 4350
$Comp
L Device:R R2
U 1 1 5F82BC43
P 3900 2050
F 0 "R2" H 3970 2096 50  0000 L CNN
F 1 "10k" H 3970 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3830 2050 50  0001 C CNN
F 3 "~" H 3900 2050 50  0001 C CNN
	1    3900 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2450 3900 2450
Wire Wire Line
	3900 2450 3900 2200
Wire Wire Line
	3900 2450 3600 2450
Connection ~ 3900 2450
Text GLabel 3600 2450 0    50   Input ~ 0
DTR
$Comp
L Connector:Conn_01x06_Female J3
U 1 1 5F843E48
P 9150 2200
F 0 "J3" H 9178 2176 50  0000 L CNN
F 1 "Conn_01x06_Female" H 9178 2085 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 9150 2200 50  0001 C CNN
F 3 "~" H 9150 2200 50  0001 C CNN
	1    9150 2200
	1    0    0    1   
$EndComp
Wire Wire Line
	8950 1900 8650 1900
Text GLabel 8650 1900 0    50   Input ~ 0
DTR
Wire Wire Line
	8950 2000 8650 2000
Wire Wire Line
	8950 2100 8650 2100
Wire Wire Line
	8950 2300 8650 2300
Wire Wire Line
	8300 1950 8300 2200
Wire Wire Line
	8300 2200 8950 2200
$Comp
L power:GND #PWR012
U 1 1 5F85E378
P 8350 2550
F 0 "#PWR012" H 8350 2300 50  0001 C CNN
F 1 "GND" H 8355 2377 50  0000 C CNN
F 2 "" H 8350 2550 50  0001 C CNN
F 3 "" H 8350 2550 50  0001 C CNN
	1    8350 2550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8350 2400 8950 2400
Wire Wire Line
	8350 2400 8350 2550
NoConn ~ 8650 2300
Text GLabel 6350 2750 2    50   Input ~ 0
TXD
Text GLabel 6350 2950 2    50   Input ~ 0
RXD
Text GLabel 8650 2000 0    50   Input ~ 0
TXD
Text GLabel 8650 2100 0    50   Input ~ 0
RXD
Wire Wire Line
	3900 1600 3900 1900
Connection ~ 5250 1400
Text HLabel 4550 4150 0    50   Input ~ 0
IO7
Text HLabel 4550 4050 0    50   Input ~ 0
IO6
Text HLabel 4550 4250 0    50   Input ~ 0
IO8
Text HLabel 4550 4350 0    50   Input ~ 0
IO11
Text HLabel 8300 1950 1    50   Input ~ 0
3.3v
Text HLabel 5250 1100 1    50   Input ~ 0
3.3v
Text HLabel 3900 1600 1    50   Input ~ 0
3.3v
Wire Wire Line
	7050 2300 7050 5500
Wire Wire Line
	6250 2450 6350 2450
NoConn ~ 6350 2450
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5F972C39
P 5450 1850
F 0 "#FLG02" H 5450 1925 50  0001 C CNN
F 1 "PWR_FLAG" H 5450 2023 50  0000 C CNN
F 2 "" H 5450 1850 50  0001 C CNN
F 3 "~" H 5450 1850 50  0001 C CNN
	1    5450 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1850 5450 1900
Connection ~ 5450 1900
$EndSCHEMATC
