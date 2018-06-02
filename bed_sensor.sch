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
S 4700 5000 800  1850
U 5B10C25E
F0 "Ardunio" 50
F1 "Ardunio.sch" 50
F2 "DTR" I L 4700 5200 50 
F3 "A0" I L 4700 5350 50 
F4 "A1" I L 4700 5450 50 
F5 "A2" I L 4700 5550 50 
F6 "A3" I L 4700 5650 50 
F7 "SDA" I R 5500 6650 50 
F8 "SCL" I R 5500 6750 50 
F9 "TX0" I L 4700 6650 50 
F10 "RX1" I L 4700 6750 50 
F11 "D2" I R 5500 5250 50 
F12 "D3" I R 5500 5350 50 
F13 "D4" I R 5500 5450 50 
F14 "D5" I R 5500 5550 50 
F15 "D6" I R 5500 5650 50 
F16 "D7" I R 5500 5750 50 
F17 "D9" I R 5500 5950 50 
F18 "D8" I R 5500 5850 50 
F19 "D10" I R 5500 6050 50 
F20 "MOSI" I L 4700 6250 50 
F21 "MISO" I L 4700 6150 50 
F22 "SCK" I L 4700 6550 50 
F23 "A6" I L 4700 5750 50 
F24 "A7" I L 4700 5850 50 
F25 "RESET" I R 5500 5050 50 
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
P 6550 2200
F 0 "#PWR0108" H 6550 1950 50  0001 C CNN
F 1 "GND" H 6555 2027 50  0000 C CNN
F 2 "" H 6550 2200 50  0001 C CNN
F 3 "" H 6550 2200 50  0001 C CNN
	1    6550 2200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5B113702
P 7250 3200
F 0 "#PWR0109" H 7250 2950 50  0001 C CNN
F 1 "GND" V 7255 3072 50  0000 R CNN
F 2 "" H 7250 3200 50  0001 C CNN
F 3 "" H 7250 3200 50  0001 C CNN
	1    7250 3200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5B113B64
P 6750 4050
F 0 "#PWR0110" H 6750 3800 50  0001 C CNN
F 1 "GND" H 6755 3877 50  0000 C CNN
F 2 "" H 6750 4050 50  0001 C CNN
F 3 "" H 6750 4050 50  0001 C CNN
	1    6750 4050
	0    -1   -1   0   
$EndComp
Text GLabel 8750 2800 2    50   Input ~ 0
RS
Text GLabel 5500 5250 2    50   Input ~ 0
RS
Text GLabel 8350 2300 2    50   Input ~ 0
Display_Enable
Text GLabel 5500 5350 2    50   Input ~ 0
Display_Enable
Text GLabel 5500 5450 2    50   Input ~ 0
DB7
Text GLabel 5500 5550 2    50   Input ~ 0
DB6
Text GLabel 5500 5650 2    50   Input ~ 0
DB4
Text GLabel 5500 5750 2    50   Input ~ 0
DB5
$Comp
L Device:R R5
U 1 1 5B1151FC
P 7400 2500
F 0 "R5" V 7193 2500 50  0000 C CNN
F 1 "220" V 7284 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7330 2500 50  0001 C CNN
F 3 "~" H 7400 2500 50  0001 C CNN
	1    7400 2500
	0    1    1    0   
$EndComp
Text GLabel 5500 5850 2    50   Input ~ 0
Vibration
Text GLabel 5500 5950 2    50   Input ~ 0
Buzzer
$Comp
L Device:Buzzer BZ1
U 1 1 5B11588F
P 9600 5500
F 0 "BZ1" V 9652 5313 50  0000 R CNN
F 1 "Buzzer" V 9561 5313 50  0000 R CNN
F 2 "components:PS1240P02BT" V 9575 5600 50  0001 C CNN
F 3 "~" V 9575 5600 50  0001 C CNN
	1    9600 5500
	0    -1   -1   0   
$EndComp
Text GLabel 9500 5600 3    50   Input ~ 0
Buzzer
$Comp
L power:GND #PWR0111
U 1 1 5B1159D5
P 9700 5600
F 0 "#PWR0111" H 9700 5350 50  0001 C CNN
F 1 "GND" H 9705 5427 50  0000 C CNN
F 2 "" H 9700 5600 50  0001 C CNN
F 3 "" H 9700 5600 50  0001 C CNN
	1    9700 5600
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q1
U 1 1 5B115DAD
P 8450 5200
F 0 "Q1" H 8641 5246 50  0000 L CNN
F 1 "2N2219" H 8641 5155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-723" H 8650 5125 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 8450 5200 50  0001 L CNN
	1    8450 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5B115E26
P 8100 5200
F 0 "R4" V 7893 5200 50  0000 C CNN
F 1 "1K" V 7984 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8030 5200 50  0001 C CNN
F 3 "~" H 8100 5200 50  0001 C CNN
	1    8100 5200
	0    1    1    0   
$EndComp
Text GLabel 7950 5200 0    50   Input ~ 0
Vibration
$Comp
L Device:D D2
U 1 1 5B1160C6
P 8400 5550
F 0 "D2" H 8400 5334 50  0000 C CNN
F 1 "D" H 8400 5425 50  0000 C CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 8400 5550 50  0001 C CNN
F 3 "~" H 8400 5550 50  0001 C CNN
	1    8400 5550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5B116296
P 8650 5700
F 0 "#PWR0112" H 8650 5450 50  0001 C CNN
F 1 "GND" H 8655 5527 50  0000 C CNN
F 2 "" H 8650 5700 50  0001 C CNN
F 3 "" H 8650 5700 50  0001 C CNN
	1    8650 5700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5B116350
P 8250 5550
F 0 "#PWR0113" H 8250 5300 50  0001 C CNN
F 1 "GND" V 8255 5422 50  0000 R CNN
F 2 "" H 8250 5550 50  0001 C CNN
F 3 "" H 8250 5550 50  0001 C CNN
	1    8250 5550
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0114
U 1 1 5B1163FB
P 8550 5000
F 0 "#PWR0114" H 8550 4850 50  0001 C CNN
F 1 "+3.3V" H 8565 5173 50  0000 C CNN
F 2 "" H 8550 5000 50  0001 C CNN
F 3 "" H 8550 5000 50  0001 C CNN
	1    8550 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5400 8550 5550
Connection ~ 8550 5550
Wire Wire Line
	8550 5550 8550 5700
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
P 8650 5900
F 0 "J1" V 8523 5980 50  0000 L CNN
F 1 "Conn_01x02" V 8614 5980 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8650 5900 50  0001 C CNN
F 3 "~" H 8650 5900 50  0001 C CNN
	1    8650 5900
	0    1    1    0   
$EndComp
$Comp
L Crystalfontz:CFAH0802D-YYH-JP U5
U 1 1 5B11DCE9
P 6500 1900
F 0 "U5" H 6625 1778 50  0000 C CNN
F 1 "CFAH0802D-YYH-JP" H 7150 250 50  0000 C CNN
F 2 "components:CFAH0802D-YYH-JP" H 6500 1900 50  0001 C CNN
F 3 "" H 6500 1900 50  0001 C CNN
	1    6500 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 5B11DED5
P 6500 3600
F 0 "#PWR0115" H 6500 3450 50  0001 C CNN
F 1 "+5V" H 6515 3773 50  0000 C CNN
F 2 "" H 6500 3600 50  0001 C CNN
F 3 "" H 6500 3600 50  0001 C CNN
	1    6500 3600
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 5B11E96A
P 7550 2500
F 0 "#PWR0116" H 7550 2350 50  0001 C CNN
F 1 "+5V" V 7565 2628 50  0000 L CNN
F 2 "" H 7550 2500 50  0001 C CNN
F 3 "" H 7550 2500 50  0001 C CNN
	1    7550 2500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5B11EDA1
P 7250 2650
F 0 "#PWR0117" H 7250 2400 50  0001 C CNN
F 1 "GND" V 7255 2522 50  0000 R CNN
F 2 "" H 7250 2650 50  0001 C CNN
F 3 "" H 7250 2650 50  0001 C CNN
	1    7250 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6600 3600 6600 3900
$Comp
L power:+5V #PWR0118
U 1 1 5B12026F
P 6450 4050
F 0 "#PWR0118" H 6450 3900 50  0001 C CNN
F 1 "+5V" V 6465 4178 50  0000 L CNN
F 2 "" H 6450 4050 50  0001 C CNN
F 3 "" H 6450 4050 50  0001 C CNN
	1    6450 4050
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:BSS138 Q2
U 1 1 5B1230C8
P 8150 2300
F 0 "Q2" H 8356 2254 50  0000 L CNN
F 1 "BSS138" H 8356 2345 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8350 2225 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 8150 2300 50  0001 L CNN
	1    8150 2300
	-1   0    0    1   
$EndComp
Text GLabel 4550 2600 0    50   Input ~ 0
DB7
Text GLabel 4550 2800 0    50   Input ~ 0
DB6
Text GLabel 4550 3000 0    50   Input ~ 0
DB4
Text GLabel 4550 3200 0    50   Input ~ 0
DB5
$Comp
L Logic_LevelTranslator:TXB0104D U3
U 1 1 5B135A84
P 4950 2900
F 0 "U3" H 4950 2114 50  0000 C CNN
F 1 "TXB0104D" H 4950 2023 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5000 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0104.pdf" H 5060 2995 50  0001 C CNN
	1    4950 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2600 5700 2600
Wire Wire Line
	5700 2600 5700 2850
Wire Wire Line
	5700 2850 6000 2850
Wire Wire Line
	5350 2800 5600 2800
Wire Wire Line
	5600 2800 5600 2950
Wire Wire Line
	5600 2950 6000 2950
Wire Wire Line
	5350 3000 5500 3000
Wire Wire Line
	5500 3000 5500 3050
Wire Wire Line
	5500 3050 6000 3050
Wire Wire Line
	6000 3150 5550 3150
Wire Wire Line
	5550 3150 5550 3200
Wire Wire Line
	5550 3200 5350 3200
$Comp
L power:+3.3V #PWR0119
U 1 1 5B13DCE5
P 4850 2200
F 0 "#PWR0119" H 4850 2050 50  0001 C CNN
F 1 "+3.3V" H 4865 2373 50  0000 C CNN
F 2 "" H 4850 2200 50  0001 C CNN
F 3 "" H 4850 2200 50  0001 C CNN
	1    4850 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0120
U 1 1 5B13DD8C
P 5050 2200
F 0 "#PWR0120" H 5050 2050 50  0001 C CNN
F 1 "+5V" H 5065 2373 50  0000 C CNN
F 2 "" H 5050 2200 50  0001 C CNN
F 3 "" H 5050 2200 50  0001 C CNN
	1    5050 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5B13DE4F
P 4950 3600
F 0 "#PWR0121" H 4950 3350 50  0001 C CNN
F 1 "GND" H 4955 3427 50  0000 C CNN
F 2 "" H 4950 3600 50  0001 C CNN
F 3 "" H 4950 3600 50  0001 C CNN
	1    4950 3600
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BSS138 Q3
U 1 1 5B140897
P 8550 2800
F 0 "Q3" H 8756 2754 50  0000 L CNN
F 1 "BSS138" H 8756 2845 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8750 2725 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 8550 2800 50  0001 L CNN
	1    8550 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	8450 3000 8450 3300
Wire Wire Line
	8450 3300 7250 3300
Wire Wire Line
	8050 2500 8050 3100
$Comp
L power:GND #PWR0122
U 1 1 5B142756
P 8050 2100
F 0 "#PWR0122" H 8050 1850 50  0001 C CNN
F 1 "GND" H 8055 1927 50  0000 C CNN
F 2 "" H 8050 2100 50  0001 C CNN
F 3 "" H 8050 2100 50  0001 C CNN
	1    8050 2100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5B142856
P 8450 2600
F 0 "#PWR0123" H 8450 2350 50  0001 C CNN
F 1 "GND" H 8455 2427 50  0000 C CNN
F 2 "" H 8450 2600 50  0001 C CNN
F 3 "" H 8450 2600 50  0001 C CNN
	1    8450 2600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 5B142958
P 8050 3500
F 0 "R6" H 8120 3546 50  0000 L CNN
F 1 "10k" H 8120 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7980 3500 50  0001 C CNN
F 3 "~" H 8050 3500 50  0001 C CNN
	1    8050 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5B1429B4
P 8450 3500
F 0 "R7" H 8520 3546 50  0000 L CNN
F 1 "10k" H 8520 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8380 3500 50  0001 C CNN
F 3 "~" H 8450 3500 50  0001 C CNN
	1    8450 3500
	1    0    0    -1  
$EndComp
Connection ~ 8450 3300
Wire Wire Line
	7250 3100 8050 3100
Wire Wire Line
	8450 3350 8450 3300
Wire Wire Line
	8050 3350 8050 3100
Connection ~ 8050 3100
$Comp
L power:+5V #PWR0124
U 1 1 5B1457FE
P 8050 3650
F 0 "#PWR0124" H 8050 3500 50  0001 C CNN
F 1 "+5V" H 8065 3823 50  0000 C CNN
F 2 "" H 8050 3650 50  0001 C CNN
F 3 "" H 8050 3650 50  0001 C CNN
	1    8050 3650
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0125
U 1 1 5B14591D
P 8450 3650
F 0 "#PWR0125" H 8450 3500 50  0001 C CNN
F 1 "+5V" H 8465 3823 50  0000 C CNN
F 2 "" H 8450 3650 50  0001 C CNN
F 3 "" H 8450 3650 50  0001 C CNN
	1    8450 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	1950 2200 1950 2500
$Comp
L power:+3.3V #PWR0126
U 1 1 5B14AAED
P 1650 2200
F 0 "#PWR0126" H 1650 2050 50  0001 C CNN
F 1 "+3.3V" V 1665 2328 50  0000 L CNN
F 2 "" H 1650 2200 50  0001 C CNN
F 3 "" H 1650 2200 50  0001 C CNN
	1    1650 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1650 2200 1700 2200
Connection ~ 1950 2200
Wire Wire Line
	2750 2200 2750 2400
Wire Wire Line
	1950 2200 2350 2200
$Comp
L Regulator_Switching:LTC3525-5 U4
U 1 1 5B14C20B
P 2350 2500
F 0 "U4" H 2350 2978 50  0000 C CNN
F 1 "LTC3525-5" H 2350 2887 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 2400 2250 50  0001 L CNN
F 3 "http://cds.linear.com/docs/en/datasheet/3525fc.pdf" H 2350 2500 50  0001 C CNN
	1    2350 2500
	1    0    0    -1  
$EndComp
Connection ~ 2350 2200
$Comp
L Device:L_Core_Ferrite_Small L1
U 1 1 5B14C41D
P 2750 2100
F 0 "L1" H 2818 2146 50  0000 L CNN
F 1 "10uH" H 2818 2055 50  0000 L CNN
F 2 "Inductors_SMD:L_Taiyo-Yuden_NR-40xx" H 2750 2100 50  0001 C CNN
F 3 "~" H 2750 2100 50  0001 C CNN
	1    2750 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2200 2350 2000
$Comp
L Device:C C6
U 1 1 5B14CD18
P 1700 2350
F 0 "C6" H 1815 2396 50  0000 L CNN
F 1 "1uF" H 1815 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1738 2200 50  0001 C CNN
F 3 "~" H 1700 2350 50  0001 C CNN
	1    1700 2350
	1    0    0    -1  
$EndComp
Connection ~ 1700 2200
Wire Wire Line
	1700 2200 1950 2200
$Comp
L power:GND #PWR0127
U 1 1 5B14CE14
P 1700 2500
F 0 "#PWR0127" H 1700 2250 50  0001 C CNN
F 1 "GND" H 1705 2327 50  0000 C CNN
F 2 "" H 1700 2500 50  0001 C CNN
F 3 "" H 1700 2500 50  0001 C CNN
	1    1700 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5B14CEEA
P 2900 2750
F 0 "C7" H 3015 2796 50  0000 L CNN
F 1 "10uF" H 3015 2705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2938 2600 50  0001 C CNN
F 3 "~" H 2900 2750 50  0001 C CNN
	1    2900 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2600 2900 2600
$Comp
L power:GND #PWR0128
U 1 1 5B14D734
P 2350 2800
F 0 "#PWR0128" H 2350 2550 50  0001 C CNN
F 1 "GND" H 2355 2627 50  0000 C CNN
F 2 "" H 2350 2800 50  0001 C CNN
F 3 "" H 2350 2800 50  0001 C CNN
	1    2350 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 5B14D7EB
P 2900 2900
F 0 "#PWR0129" H 2900 2650 50  0001 C CNN
F 1 "GND" H 2905 2727 50  0000 C CNN
F 2 "" H 2900 2900 50  0001 C CNN
F 3 "" H 2900 2900 50  0001 C CNN
	1    2900 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0130
U 1 1 5B14D886
P 2900 2600
F 0 "#PWR0130" H 2900 2450 50  0001 C CNN
F 1 "+5V" V 2915 2728 50  0000 L CNN
F 2 "" H 2900 2600 50  0001 C CNN
F 3 "" H 2900 2600 50  0001 C CNN
	1    2900 2600
	0    1    1    0   
$EndComp
Connection ~ 2900 2600
Wire Wire Line
	2350 2000 2750 2000
$Comp
L Sensor_Motion:MPU-9250 U2
U 1 1 5B14EB31
P 2850 6200
F 0 "U2" H 2850 5214 50  0000 C CNN
F 1 "MPU-9250" H 2850 5123 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_3x3mm_P0.4mm_EP1.75x1.6mm" H 2850 5200 50  0001 C CNN
F 3 "https://store.invensense.com/datasheets/invensense/MPU9250REV1.0.pdf" H 2850 6050 50  0001 C CNN
	1    2850 6200
	1    0    0    -1  
$EndComp
Text GLabel 5500 6650 2    50   Input ~ 0
SDA_MPU
Text GLabel 5500 6750 2    50   Input ~ 0
SCL_MPU
$Comp
L Device:R R1
U 1 1 5B14ECE4
P 1600 5700
F 0 "R1" H 1670 5746 50  0000 L CNN
F 1 "10k" H 1670 5655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1530 5700 50  0001 C CNN
F 3 "~" H 1600 5700 50  0001 C CNN
	1    1600 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5B14EDA1
P 1800 5700
F 0 "R2" H 1870 5746 50  0000 L CNN
F 1 "10k" H 1870 5655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1730 5700 50  0001 C CNN
F 3 "~" H 1800 5700 50  0001 C CNN
	1    1800 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0131
U 1 1 5B1510E9
P 1600 5550
F 0 "#PWR0131" H 1600 5400 50  0001 C CNN
F 1 "+3.3V" H 1615 5723 50  0000 C CNN
F 2 "" H 1600 5550 50  0001 C CNN
F 3 "" H 1600 5550 50  0001 C CNN
	1    1600 5550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0132
U 1 1 5B1511FD
P 1800 5550
F 0 "#PWR0132" H 1800 5400 50  0001 C CNN
F 1 "+3.3V" H 1815 5723 50  0000 C CNN
F 2 "" H 1800 5550 50  0001 C CNN
F 3 "" H 1800 5550 50  0001 C CNN
	1    1800 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 5B151DB8
P 2850 7100
F 0 "#PWR0133" H 2850 6850 50  0001 C CNN
F 1 "GND" H 2855 6927 50  0000 C CNN
F 2 "" H 2850 7100 50  0001 C CNN
F 3 "" H 2850 7100 50  0001 C CNN
	1    2850 7100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0134
U 1 1 5B151EBC
P 2950 5300
F 0 "#PWR0134" H 2950 5150 50  0001 C CNN
F 1 "+3.3V" H 2965 5473 50  0000 C CNN
F 2 "" H 2950 5300 50  0001 C CNN
F 3 "" H 2950 5300 50  0001 C CNN
	1    2950 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0135
U 1 1 5B151F7A
P 2150 6000
F 0 "#PWR0135" H 2150 5750 50  0001 C CNN
F 1 "GND" V 2155 5872 50  0000 R CNN
F 2 "" H 2150 6000 50  0001 C CNN
F 3 "" H 2150 6000 50  0001 C CNN
	1    2150 6000
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 5B15204E
P 3700 6400
F 0 "C5" V 3448 6400 50  0000 C CNN
F 1 ".1uF" V 3539 6400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3738 6250 50  0001 C CNN
F 3 "~" H 3700 6400 50  0001 C CNN
	1    3700 6400
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0136
U 1 1 5B1521FA
P 2650 5050
F 0 "#PWR0136" H 2650 4900 50  0001 C CNN
F 1 "+3.3V" V 2665 5178 50  0000 L CNN
F 2 "" H 2650 5050 50  0001 C CNN
F 3 "" H 2650 5050 50  0001 C CNN
	1    2650 5050
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2
U 1 1 5B15238F
P 2750 4800
F 0 "C2" H 2865 4846 50  0000 L CNN
F 1 "10nF" H 2865 4755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2788 4650 50  0001 C CNN
F 3 "~" H 2750 4800 50  0001 C CNN
	1    2750 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0137
U 1 1 5B15249B
P 2750 4650
F 0 "#PWR0137" H 2750 4400 50  0001 C CNN
F 1 "GND" H 2755 4477 50  0000 C CNN
F 2 "" H 2750 4650 50  0001 C CNN
F 3 "" H 2750 4650 50  0001 C CNN
	1    2750 4650
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 5900 1800 5900
Wire Wire Line
	1800 5900 1800 5850
Wire Wire Line
	2150 6100 1600 6100
Wire Wire Line
	1600 6100 1600 5850
Wire Wire Line
	1250 6100 1600 6100
Connection ~ 1600 6100
Wire Wire Line
	1250 5900 1800 5900
Connection ~ 1800 5900
Text GLabel 1250 5900 0    50   Input ~ 0
SDA_MPU
Text GLabel 1250 6100 0    50   Input ~ 0
SCL_MPU
Wire Wire Line
	2750 4950 2750 5050
Wire Wire Line
	2650 5050 2750 5050
Connection ~ 2750 5050
Wire Wire Line
	2750 5050 2750 5300
$Comp
L power:GND #PWR0138
U 1 1 5B15A8DE
P 3850 6400
F 0 "#PWR0138" H 3850 6150 50  0001 C CNN
F 1 "GND" V 3855 6272 50  0000 R CNN
F 2 "" H 3850 6400 50  0001 C CNN
F 3 "" H 3850 6400 50  0001 C CNN
	1    3850 6400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0139
U 1 1 5B15AA52
P 3550 6600
F 0 "#PWR0139" H 3550 6350 50  0001 C CNN
F 1 "GND" V 3555 6472 50  0000 R CNN
F 2 "" H 3550 6600 50  0001 C CNN
F 3 "" H 3550 6600 50  0001 C CNN
	1    3550 6600
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0140
U 1 1 5B15AB8B
P 3550 6500
F 0 "#PWR0140" H 3550 6350 50  0001 C CNN
F 1 "+3.3V" V 3565 6628 50  0000 L CNN
F 2 "" H 3550 6500 50  0001 C CNN
F 3 "" H 3550 6500 50  0001 C CNN
	1    3550 6500
	0    1    1    0   
$EndComp
NoConn ~ 3550 6200
NoConn ~ 3550 6100
$Comp
L power:+3.3V #PWR0141
U 1 1 5B15D43C
P 2150 6200
F 0 "#PWR0141" H 2150 6050 50  0001 C CNN
F 1 "+3.3V" V 2165 6328 50  0000 L CNN
F 2 "" H 2150 6200 50  0001 C CNN
F 3 "" H 2150 6200 50  0001 C CNN
	1    2150 6200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0142
U 1 1 5B15D559
P 2150 6400
F 0 "#PWR0142" H 2150 6150 50  0001 C CNN
F 1 "GND" V 2155 6272 50  0000 R CNN
F 2 "" H 2150 6400 50  0001 C CNN
F 3 "" H 2150 6400 50  0001 C CNN
	1    2150 6400
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5B164460
P 6600 4050
F 0 "RV1" V 6486 4050 50  0000 C CNN
F 1 "10K" V 6395 4050 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer_ACP_CA9h2.5_Vertical_Px2.5mm_Py5.0mm" H 6600 4050 50  0001 C CNN
F 3 "~" H 6600 4050 50  0001 C CNN
	1    6600 4050
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5B1687D8
P 750 1650
F 0 "J?" H 670 1325 50  0000 C CNN
F 1 "Conn_01x02" H 670 1416 50  0000 C CNN
F 2 "" H 750 1650 50  0001 C CNN
F 3 "~" H 750 1650 50  0001 C CNN
	1    750  1650
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5B16890F
P 950 1550
F 0 "#PWR?" H 950 1400 50  0001 C CNN
F 1 "VCC" V 967 1678 50  0000 L CNN
F 2 "" H 950 1550 50  0001 C CNN
F 3 "" H 950 1550 50  0001 C CNN
	1    950  1550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B1689F6
P 950 1650
F 0 "#PWR?" H 950 1400 50  0001 C CNN
F 1 "GND" V 955 1522 50  0000 R CNN
F 2 "" H 950 1650 50  0001 C CNN
F 3 "" H 950 1650 50  0001 C CNN
	1    950  1650
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
