EESchema Schematic File Version 4
LIBS:bed_sensor-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 4550 4250 800  1850
U 5B10C25E
F0 "Ardunio" 50
F1 "Ardunio.sch" 50
F2 "DTR" I L 4550 4450 50 
F3 "A0" I L 4550 4600 50 
F4 "A1" I L 4550 4700 50 
F5 "A2" I L 4550 4800 50 
F6 "A3" I L 4550 4900 50 
F7 "SDA" I R 5350 5900 50 
F8 "SCL" I R 5350 6000 50 
F9 "TX0" I L 4550 5900 50 
F10 "RX1" I L 4550 6000 50 
F11 "D2" I R 5350 4500 50 
F12 "D3" I R 5350 4600 50 
F13 "D4" I R 5350 4700 50 
F14 "D5" I R 5350 4800 50 
F15 "D6" I R 5350 4900 50 
F16 "D7" I R 5350 5000 50 
F17 "D9" I R 5350 5200 50 
F18 "D8" I R 5350 5100 50 
F19 "D10" I R 5350 5300 50 
F20 "MOSI" I L 4550 5500 50 
F21 "MISO" I L 4550 5400 50 
F22 "SCK" I L 4550 5800 50 
F23 "A6" I L 4550 5000 50 
F24 "A7" I L 4550 5100 50 
F25 "RESET" I R 5350 4300 50 
$EndSheet
$Comp
L power:VCC #PWR0101
U 1 1 5B112270
P 1550 1150
F 0 "#PWR0101" H 1550 1000 50  0001 C CNN
F 1 "VCC" V 1568 1277 50  0000 L CNN
F 2 "" H 1550 1150 50  0001 C CNN
F 3 "" H 1550 1150 50  0001 C CNN
	1    1550 1150
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1 C1
U 1 1 5B1122FA
P 1950 1300
F 0 "C1" H 2065 1346 50  0000 L CNN
F 1 "10uF" H 2065 1255 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-T_EIA-3528-12_Reflow" H 1950 1300 50  0001 C CNN
F 3 "~" H 1950 1300 50  0001 C CNN
	1    1950 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1250 2250 1250
Wire Wire Line
	2250 1250 2250 1150
Connection ~ 2250 1150
Wire Wire Line
	2250 1150 2350 1150
Wire Wire Line
	1950 1150 2250 1150
$Comp
L power:GND #PWR0102
U 1 1 5B11259F
P 1950 1550
F 0 "#PWR0102" H 1950 1300 50  0001 C CNN
F 1 "GND" H 1955 1377 50  0000 C CNN
F 2 "" H 1950 1550 50  0001 C CNN
F 3 "" H 1950 1550 50  0001 C CNN
	1    1950 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5B11261A
P 2650 1550
F 0 "#PWR0103" H 2650 1300 50  0001 C CNN
F 1 "GND" H 2655 1377 50  0000 C CNN
F 2 "" H 2650 1550 50  0001 C CNN
F 3 "" H 2650 1550 50  0001 C CNN
	1    2650 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C3
U 1 1 5B1126CD
P 3200 1350
F 0 "C3" H 3315 1396 50  0000 L CNN
F 1 "10uF" H 3315 1305 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-B_EIA-3528-21_Reflow" H 3200 1350 50  0001 C CNN
F 3 "~" H 3200 1350 50  0001 C CNN
	1    3200 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5B112765
P 3550 1350
F 0 "C4" H 3665 1396 50  0000 L CNN
F 1 ".1uF" H 3665 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3588 1200 50  0001 C CNN
F 3 "~" H 3550 1350 50  0001 C CNN
	1    3550 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5B11289D
P 3900 1150
F 0 "R3" V 3693 1150 50  0000 C CNN
F 1 "10k" V 3784 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3830 1150 50  0001 C CNN
F 3 "~" H 3900 1150 50  0001 C CNN
	1    3900 1150
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5B112A67
P 4350 1150
F 0 "D1" H 4342 895 50  0000 C CNN
F 1 "LED" H 4342 986 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 4350 1150 50  0001 C CNN
F 3 "~" H 4350 1150 50  0001 C CNN
	1    4350 1150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5B112B1A
P 4600 1250
F 0 "#PWR0104" H 4600 1000 50  0001 C CNN
F 1 "GND" H 4605 1077 50  0000 C CNN
F 2 "" H 4600 1250 50  0001 C CNN
F 3 "" H 4600 1250 50  0001 C CNN
	1    4600 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1250 4600 1150
Wire Wire Line
	4500 1150 4600 1150
Wire Wire Line
	4200 1150 4050 1150
Wire Wire Line
	3750 1150 3550 1150
Wire Wire Line
	3200 1200 3200 1150
Connection ~ 3200 1150
Wire Wire Line
	3200 1150 2950 1150
Wire Wire Line
	3550 1200 3550 1150
Connection ~ 3550 1150
Wire Wire Line
	3550 1150 3200 1150
$Comp
L power:GND #PWR0105
U 1 1 5B112D54
P 3200 1550
F 0 "#PWR0105" H 3200 1300 50  0001 C CNN
F 1 "GND" H 3205 1377 50  0000 C CNN
F 2 "" H 3200 1550 50  0001 C CNN
F 3 "" H 3200 1550 50  0001 C CNN
	1    3200 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5B112DDB
P 3550 1550
F 0 "#PWR0106" H 3550 1300 50  0001 C CNN
F 1 "GND" H 3555 1377 50  0000 C CNN
F 2 "" H 3550 1550 50  0001 C CNN
F 3 "" H 3550 1550 50  0001 C CNN
	1    3550 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1500 3550 1550
Wire Wire Line
	3200 1500 3200 1550
Wire Wire Line
	1950 1450 1950 1550
$Comp
L power:+3.3V #PWR0107
U 1 1 5B11315B
P 3550 1150
F 0 "#PWR0107" H 3550 1000 50  0001 C CNN
F 1 "+3.3V" H 3565 1323 50  0000 C CNN
F 2 "" H 3550 1150 50  0001 C CNN
F 3 "" H 3550 1150 50  0001 C CNN
	1    3550 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5B11367B
P 4800 2000
F 0 "#PWR0108" H 4800 1750 50  0001 C CNN
F 1 "GND" H 4805 1827 50  0000 C CNN
F 2 "" H 4800 2000 50  0001 C CNN
F 3 "" H 4800 2000 50  0001 C CNN
	1    4800 2000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5B113702
P 5500 3000
F 0 "#PWR0109" H 5500 2750 50  0001 C CNN
F 1 "GND" V 5505 2872 50  0000 R CNN
F 2 "" H 5500 3000 50  0001 C CNN
F 3 "" H 5500 3000 50  0001 C CNN
	1    5500 3000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5B113B64
P 5000 3850
F 0 "#PWR0110" H 5000 3600 50  0001 C CNN
F 1 "GND" H 5005 3677 50  0000 C CNN
F 2 "" H 5000 3850 50  0001 C CNN
F 3 "" H 5000 3850 50  0001 C CNN
	1    5000 3850
	0    -1   -1   0   
$EndComp
Text GLabel 5500 3100 2    50   Input ~ 0
RS
Text GLabel 5350 4500 2    50   Input ~ 0
RS
Text GLabel 5500 2900 2    50   Input ~ 0
Display_Enable
Text GLabel 5350 4600 2    50   Input ~ 0
Display_Enable
Text GLabel 5350 4700 2    50   Input ~ 0
DB7
Text GLabel 5350 4800 2    50   Input ~ 0
DB6
Text GLabel 5350 4900 2    50   Input ~ 0
DB4
Text GLabel 5350 5000 2    50   Input ~ 0
DB5
Text GLabel 5350 5100 2    50   Input ~ 0
Vibration
Text GLabel 5350 5200 2    50   Input ~ 0
Buzzer
$Comp
L Device:Buzzer BZ1
U 1 1 5B11588F
P 7900 4750
F 0 "BZ1" V 7952 4563 50  0000 R CNN
F 1 "Buzzer" V 7861 4563 50  0000 R CNN
F 2 "components:PS1240P02BT" V 7875 4850 50  0001 C CNN
F 3 "~" V 7875 4850 50  0001 C CNN
	1    7900 4750
	0    -1   -1   0   
$EndComp
Text GLabel 7800 4850 3    50   Input ~ 0
Buzzer
$Comp
L power:GND #PWR0111
U 1 1 5B1159D5
P 8000 4850
F 0 "#PWR0111" H 8000 4600 50  0001 C CNN
F 1 "GND" H 8005 4677 50  0000 C CNN
F 2 "" H 8000 4850 50  0001 C CNN
F 3 "" H 8000 4850 50  0001 C CNN
	1    8000 4850
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q1
U 1 1 5B115DAD
P 6950 5000
F 0 "Q1" H 7141 5046 50  0000 L CNN
F 1 "2N2219" H 7141 4955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-723" H 7150 4925 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 6950 5000 50  0001 L CNN
	1    6950 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5B115E26
P 6600 5000
F 0 "R4" V 6393 5000 50  0000 C CNN
F 1 "1K" V 6484 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6530 5000 50  0001 C CNN
F 3 "~" H 6600 5000 50  0001 C CNN
	1    6600 5000
	0    1    1    0   
$EndComp
Text GLabel 6450 5000 0    50   Input ~ 0
Vibration
$Comp
L Device:D D2
U 1 1 5B1160C6
P 6900 5350
F 0 "D2" H 6900 5134 50  0000 C CNN
F 1 "D" H 6900 5225 50  0000 C CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 6900 5350 50  0001 C CNN
F 3 "~" H 6900 5350 50  0001 C CNN
	1    6900 5350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5B116296
P 7150 5500
F 0 "#PWR0112" H 7150 5250 50  0001 C CNN
F 1 "GND" H 7155 5327 50  0000 C CNN
F 2 "" H 7150 5500 50  0001 C CNN
F 3 "" H 7150 5500 50  0001 C CNN
	1    7150 5500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5B116350
P 6750 5350
F 0 "#PWR0113" H 6750 5100 50  0001 C CNN
F 1 "GND" V 6755 5222 50  0000 R CNN
F 2 "" H 6750 5350 50  0001 C CNN
F 3 "" H 6750 5350 50  0001 C CNN
	1    6750 5350
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0114
U 1 1 5B1163FB
P 7050 4800
F 0 "#PWR0114" H 7050 4650 50  0001 C CNN
F 1 "+3.3V" H 7065 4973 50  0000 C CNN
F 2 "" H 7050 4800 50  0001 C CNN
F 3 "" H 7050 4800 50  0001 C CNN
	1    7050 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 5200 7050 5350
Connection ~ 7050 5350
Wire Wire Line
	7050 5350 7050 5500
$Comp
L Regulator_Linear:MIC5205-3.3 U1
U 1 1 5B11C18F
P 2650 1250
F 0 "U1" H 2650 1592 50  0000 C CNN
F 1 "MIC5205-3.3" H 2650 1501 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2650 1575 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/mic5205.pdf" H 2650 1250 50  0001 C CNN
	1    2650 1250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 5B11C540
P 1750 1150
F 0 "SW1" H 1750 1385 50  0000 C CNN
F 1 "SW_SPST" H 1750 1294 50  0000 C CNN
F 2 "components:SW_CuK_OS102011MA1QN1_SPDT_Angled" H 1750 1150 50  0001 C CNN
F 3 "" H 1750 1150 50  0001 C CNN
	1    1750 1150
	1    0    0    -1  
$EndComp
Connection ~ 1950 1150
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5B11C658
P 7150 5700
F 0 "J1" V 7023 5780 50  0000 L CNN
F 1 "Conn_01x02" V 7114 5780 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7150 5700 50  0001 C CNN
F 3 "~" H 7150 5700 50  0001 C CNN
	1    7150 5700
	0    1    1    0   
$EndComp
$Comp
L Crystalfontz:CFAH0802D-YYH-JP U5
U 1 1 5B11DCE9
P 4750 1700
F 0 "U5" H 4875 1578 50  0000 C CNN
F 1 "CFAH0802D-YYH-JP" H 5400 50  50  0000 C CNN
F 2 "components:CFAH0802D-YYH-JP" H 4750 1700 50  0001 C CNN
F 3 "" H 4750 1700 50  0001 C CNN
	1    4750 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3400 4850 3700
Text GLabel 4250 2950 0    50   Input ~ 0
DB7
Text GLabel 4250 2850 0    50   Input ~ 0
DB6
Text GLabel 4250 2650 0    50   Input ~ 0
DB4
Text GLabel 4250 2750 0    50   Input ~ 0
DB5
$Comp
L Sensor_Motion:MPU-9250 U2
U 1 1 5B14EB31
P 2850 5050
F 0 "U2" H 2200 4300 50  0000 C CNN
F 1 "MPU-9250" H 3200 5800 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_3x3mm_P0.4mm_EP1.75x1.6mm" H 2850 4050 50  0001 C CNN
F 3 "https://store.invensense.com/datasheets/invensense/MPU9250REV1.0.pdf" H 2850 4900 50  0001 C CNN
	1    2850 5050
	1    0    0    -1  
$EndComp
Text GLabel 5350 5900 2    50   Input ~ 0
SDA_MPU
Text GLabel 5350 6000 2    50   Input ~ 0
SCL_MPU
$Comp
L Device:R R1
U 1 1 5B14ECE4
P 1600 4550
F 0 "R1" H 1670 4596 50  0000 L CNN
F 1 "10k" H 1670 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1530 4550 50  0001 C CNN
F 3 "~" H 1600 4550 50  0001 C CNN
	1    1600 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5B14EDA1
P 1800 4550
F 0 "R2" H 1870 4596 50  0000 L CNN
F 1 "10k" H 1870 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1730 4550 50  0001 C CNN
F 3 "~" H 1800 4550 50  0001 C CNN
	1    1800 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0131
U 1 1 5B1510E9
P 1600 4400
F 0 "#PWR0131" H 1600 4250 50  0001 C CNN
F 1 "+3.3V" H 1615 4573 50  0000 C CNN
F 2 "" H 1600 4400 50  0001 C CNN
F 3 "" H 1600 4400 50  0001 C CNN
	1    1600 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0132
U 1 1 5B1511FD
P 1800 4400
F 0 "#PWR0132" H 1800 4250 50  0001 C CNN
F 1 "+3.3V" H 1815 4573 50  0000 C CNN
F 2 "" H 1800 4400 50  0001 C CNN
F 3 "" H 1800 4400 50  0001 C CNN
	1    1800 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 5B151DB8
P 2850 5950
F 0 "#PWR0133" H 2850 5700 50  0001 C CNN
F 1 "GND" H 2855 5777 50  0000 C CNN
F 2 "" H 2850 5950 50  0001 C CNN
F 3 "" H 2850 5950 50  0001 C CNN
	1    2850 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0134
U 1 1 5B151EBC
P 2950 3950
F 0 "#PWR0134" H 2950 3800 50  0001 C CNN
F 1 "+3.3V" H 2965 4123 50  0000 C CNN
F 2 "" H 2950 3950 50  0001 C CNN
F 3 "" H 2950 3950 50  0001 C CNN
	1    2950 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0135
U 1 1 5B151F7A
P 2150 4850
F 0 "#PWR0135" H 2150 4600 50  0001 C CNN
F 1 "GND" V 2155 4722 50  0000 R CNN
F 2 "" H 2150 4850 50  0001 C CNN
F 3 "" H 2150 4850 50  0001 C CNN
	1    2150 4850
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 5B15204E
P 3700 5250
F 0 "C5" V 3448 5250 50  0000 C CNN
F 1 ".1uF" V 3539 5250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3738 5100 50  0001 C CNN
F 3 "~" H 3700 5250 50  0001 C CNN
	1    3700 5250
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0136
U 1 1 5B1521FA
P 2650 3900
F 0 "#PWR0136" H 2650 3750 50  0001 C CNN
F 1 "+3.3V" V 2665 4028 50  0000 L CNN
F 2 "" H 2650 3900 50  0001 C CNN
F 3 "" H 2650 3900 50  0001 C CNN
	1    2650 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2
U 1 1 5B15238F
P 2750 3650
F 0 "C2" H 2865 3696 50  0000 L CNN
F 1 "10nF" H 2865 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2788 3500 50  0001 C CNN
F 3 "~" H 2750 3650 50  0001 C CNN
	1    2750 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0137
U 1 1 5B15249B
P 2750 3500
F 0 "#PWR0137" H 2750 3250 50  0001 C CNN
F 1 "GND" H 2755 3327 50  0000 C CNN
F 2 "" H 2750 3500 50  0001 C CNN
F 3 "" H 2750 3500 50  0001 C CNN
	1    2750 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 4750 1800 4750
Wire Wire Line
	1800 4750 1800 4700
Wire Wire Line
	2150 4950 1600 4950
Wire Wire Line
	1600 4950 1600 4700
Wire Wire Line
	1250 4950 1600 4950
Connection ~ 1600 4950
Wire Wire Line
	1250 4750 1800 4750
Connection ~ 1800 4750
Text GLabel 1250 4750 0    50   Input ~ 0
SDA_MPU
Text GLabel 1250 4950 0    50   Input ~ 0
SCL_MPU
Wire Wire Line
	2750 3800 2750 3900
Wire Wire Line
	2650 3900 2750 3900
Connection ~ 2750 3900
Wire Wire Line
	2750 3900 2750 4150
$Comp
L power:GND #PWR0138
U 1 1 5B15A8DE
P 3850 5250
F 0 "#PWR0138" H 3850 5000 50  0001 C CNN
F 1 "GND" V 3855 5122 50  0000 R CNN
F 2 "" H 3850 5250 50  0001 C CNN
F 3 "" H 3850 5250 50  0001 C CNN
	1    3850 5250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0139
U 1 1 5B15AA52
P 3550 5450
F 0 "#PWR0139" H 3550 5200 50  0001 C CNN
F 1 "GND" V 3555 5322 50  0000 R CNN
F 2 "" H 3550 5450 50  0001 C CNN
F 3 "" H 3550 5450 50  0001 C CNN
	1    3550 5450
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0140
U 1 1 5B15AB8B
P 3550 5350
F 0 "#PWR0140" H 3550 5200 50  0001 C CNN
F 1 "+3.3V" V 3565 5478 50  0000 L CNN
F 2 "" H 3550 5350 50  0001 C CNN
F 3 "" H 3550 5350 50  0001 C CNN
	1    3550 5350
	0    1    1    0   
$EndComp
NoConn ~ 3550 5050
NoConn ~ 3550 4950
$Comp
L power:+3.3V #PWR0141
U 1 1 5B15D43C
P 2150 5050
F 0 "#PWR0141" H 2150 4900 50  0001 C CNN
F 1 "+3.3V" V 2165 5178 50  0000 L CNN
F 2 "" H 2150 5050 50  0001 C CNN
F 3 "" H 2150 5050 50  0001 C CNN
	1    2150 5050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0142
U 1 1 5B15D559
P 2150 5250
F 0 "#PWR0142" H 2150 5000 50  0001 C CNN
F 1 "GND" V 2155 5122 50  0000 R CNN
F 2 "" H 2150 5250 50  0001 C CNN
F 3 "" H 2150 5250 50  0001 C CNN
	1    2150 5250
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5B164460
P 4850 3850
F 0 "RV1" V 4736 3850 50  0000 C CNN
F 1 "10K" V 4645 3850 50  0000 C CNN
F 2 "components:BI P090L-02F25BR10K" H 4850 3850 50  0001 C CNN
F 3 "~" H 4850 3850 50  0001 C CNN
	1    4850 3850
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5B1687D8
P 3350 2200
F 0 "J4" H 3270 1875 50  0000 C CNN
F 1 "Conn_01x02" H 3270 1966 50  0000 C CNN
F 2 "components:JSTPH2" H 3350 2200 50  0001 C CNN
F 3 "~" H 3350 2200 50  0001 C CNN
	1    3350 2200
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR0157
U 1 1 5B16890F
P 3550 2100
F 0 "#PWR0157" H 3550 1950 50  0001 C CNN
F 1 "VCC" V 3567 2228 50  0000 L CNN
F 2 "" H 3550 2100 50  0001 C CNN
F 3 "" H 3550 2100 50  0001 C CNN
	1    3550 2100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0158
U 1 1 5B1689F6
P 3550 2200
F 0 "#PWR0158" H 3550 1950 50  0001 C CNN
F 1 "GND" V 3555 2072 50  0000 R CNN
F 2 "" H 3550 2200 50  0001 C CNN
F 3 "" H 3550 2200 50  0001 C CNN
	1    3550 2200
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0115
U 1 1 5B20D317
P 4750 3400
F 0 "#PWR0115" H 4750 3250 50  0001 C CNN
F 1 "+3.3V" H 4765 3573 50  0000 C CNN
F 2 "" H 4750 3400 50  0001 C CNN
F 3 "" H 4750 3400 50  0001 C CNN
	1    4750 3400
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0118
U 1 1 5B20D5D0
P 4700 3850
F 0 "#PWR0118" H 4700 3700 50  0001 C CNN
F 1 "+3.3V" V 4715 3978 50  0000 L CNN
F 2 "" H 4700 3850 50  0001 C CNN
F 3 "" H 4700 3850 50  0001 C CNN
	1    4700 3850
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C6
U 1 1 5B20EB30
P 3100 4050
F 0 "C6" V 2848 4050 50  0000 C CNN
F 1 ".1uF" V 2939 4050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3138 3900 50  0001 C CNN
F 3 "~" H 3100 4050 50  0001 C CNN
	1    3100 4050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5B20EC20
P 3250 4050
F 0 "#PWR0119" H 3250 3800 50  0001 C CNN
F 1 "GND" V 3255 3922 50  0000 R CNN
F 2 "" H 3250 4050 50  0001 C CNN
F 3 "" H 3250 4050 50  0001 C CNN
	1    3250 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 4150 2950 4050
Connection ~ 2950 4050
Wire Wire Line
	2950 4050 2950 3950
$Comp
L SD:DM3AT-SF-PEJM5 J5
U 1 1 5B292A17
P 4550 7000
F 0 "J5" H 5279 7046 50  0000 L CNN
F 1 "DM3AT-SF-PEJM5" H 5279 6955 50  0000 L CNN
F 2 "components:HRS_DM3AT-SF-PEJM5" H 4550 7000 50  0001 L BNN
F 3 "None" H 4550 7000 50  0001 L BNN
F 4 "Hirose" H 4550 7000 50  0001 L BNN "Field4"
F 5 "DM3AT-SF-PEJM5" H 4550 7000 50  0001 L BNN "Field5"
F 6 "Warning" H 4550 7000 50  0001 L BNN "Field6"
F 7 "2.58 USD" H 4550 7000 50  0001 L BNN "Field7"
F 8 "DM3 RA SMT microSD memory card push/push" H 4550 7000 50  0001 L BNN "Field8"
	1    4550 7000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0116
U 1 1 5B292D16
P 4350 6500
F 0 "#PWR0116" H 4350 6350 50  0001 C CNN
F 1 "+3.3V" V 4365 6628 50  0000 L CNN
F 2 "" H 4350 6500 50  0001 C CNN
F 3 "" H 4350 6500 50  0001 C CNN
	1    4350 6500
	0    -1   -1   0   
$EndComp
Text GLabel 4350 6900 0    50   Input ~ 0
CS
Text GLabel 5350 5300 2    50   Input ~ 0
CS
Text GLabel 4350 7100 0    50   Input ~ 0
SCK
Text GLabel 4550 5800 0    50   Input ~ 0
SCK
$Comp
L power:GND #PWR0117
U 1 1 5B293C50
P 4350 7200
F 0 "#PWR0117" H 4350 6950 50  0001 C CNN
F 1 "GND" V 4355 7072 50  0000 R CNN
F 2 "" H 4350 7200 50  0001 C CNN
F 3 "" H 4350 7200 50  0001 C CNN
	1    4350 7200
	0    1    1    0   
$EndComp
Text GLabel 4550 5500 0    50   Input ~ 0
MOSI
Text GLabel 4350 7000 0    50   Input ~ 0
MOSI
Text GLabel 4550 5400 0    50   Input ~ 0
MISO
Text GLabel 4350 6600 0    50   Input ~ 0
MISO
$EndSCHEMATC
