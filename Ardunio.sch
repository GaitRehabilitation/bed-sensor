EESchema Schematic File Version 4
LIBS:bed_sensor-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L foot_sensor-rescue:ATMEGA328-AU U?
U 1 1 5AA3AF01
P 4750 3150
F 0 "U?" H 4000 4400 50  0000 L BNN
F 1 "ATMEGA328-AU" H 5150 1750 50  0000 L BNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 4750 3150 50  0001 C CIN
F 3 "" H 4750 3150 50  0001 C CNN
	1    4750 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5AA50249
P 6650 3200
F 0 "#PWR?" H 6650 3050 50  0001 C CNN
F 1 "+3V3" H 6650 3340 50  0000 C CNN
F 2 "" H 6650 3200 50  0001 C CNN
F 3 "" H 6650 3200 50  0001 C CNN
	1    6650 3200
	1    0    0    -1  
$EndComp
$Comp
L foot_sensor-rescue:C C?
U 1 1 5AA50278
P 6850 3500
F 0 "C?" H 6875 3600 50  0000 L CNN
F 1 ".1uF" H 6875 3400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6888 3350 50  0001 C CNN
F 3 "" H 6850 3500 50  0001 C CNN
	1    6850 3500
	0    -1   -1   0   
$EndComp
Text HLabel 7000 3500 2    60   Input ~ 0
DTR
$Comp
L power:GND #PWR?
U 1 1 5AA503C6
P 6650 3900
F 0 "#PWR?" H 6650 3650 50  0001 C CNN
F 1 "GND" H 6650 3750 50  0000 C CNN
F 2 "" H 6650 3900 50  0001 C CNN
F 3 "" H 6650 3900 50  0001 C CNN
	1    6650 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5AA50483
P 3750 1800
F 0 "#PWR?" H 3750 1650 50  0001 C CNN
F 1 "+3.3V" H 3750 1940 50  0000 C CNN
F 2 "" H 3750 1800 50  0001 C CNN
F 3 "" H 3750 1800 50  0001 C CNN
	1    3750 1800
	1    0    0    -1  
$EndComp
$Comp
L foot_sensor-rescue:C C?
U 1 1 5AA504C3
P 3500 2850
F 0 "C?" H 3525 2950 50  0000 L CNN
F 1 ".1uF" H 3525 2750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3538 2700 50  0001 C CNN
F 3 "" H 3500 2850 50  0001 C CNN
	1    3500 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5AA5055F
P 3500 3000
F 0 "#PWR?" H 3500 2750 50  0001 C CNN
F 1 "GND" H 3500 2850 50  0000 C CNN
F 2 "" H 3500 3000 50  0001 C CNN
F 3 "" H 3500 3000 50  0001 C CNN
	1    3500 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5AA5081E
P 6200 3200
F 0 "#PWR?" H 6200 2950 50  0001 C CNN
F 1 "GND" H 6200 3050 50  0000 C CNN
F 2 "" H 6200 3200 50  0001 C CNN
F 3 "" H 6200 3200 50  0001 C CNN
	1    6200 3200
	1    0    0    -1  
$EndComp
$Comp
L foot_sensor-rescue:Crystal_GND2 Y?
U 1 1 5AA509A8
P 6200 3000
F 0 "Y?" H 6200 3225 50  0000 C CNN
F 1 "Crystal_GND2" H 6200 3150 50  0000 C CNN
F 2 "crystal_1:OSC_CSTCE8M00G55-R0" H 6200 3000 50  0001 C CNN
F 3 "" H 6200 3000 50  0001 C CNN
	1    6200 3000
	1    0    0    -1  
$EndComp
Text HLabel 5750 2900 2    60   Input ~ 0
A0
Text HLabel 5750 3000 2    60   Input ~ 0
A1
Text HLabel 5750 3100 2    60   Input ~ 0
A2
Text HLabel 5750 3200 2    60   Input ~ 0
A3
Text HLabel 5750 3300 2    60   Input ~ 0
SDA
Text HLabel 5750 3400 2    60   Input ~ 0
SCL
$Comp
L foot_sensor-rescue:Conn_02x03_Odd_Even J?
U 1 1 5AA50E83
P 8250 1900
F 0 "J?" H 8300 2100 50  0000 C CNN
F 1 "ISP" H 8300 1700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 8250 1900 50  0001 C CNN
F 3 "" H 8250 1900 50  0001 C CNN
	1    8250 1900
	1    0    0    -1  
$EndComp
$Comp
L foot_sensor-rescue:Conn_01x06 J?
U 1 1 5AA50EF4
P 8000 3150
F 0 "J?" H 8000 3450 50  0000 C CNN
F 1 "Serial" H 8000 2750 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06_Pitch2.54mm" H 8000 3150 50  0001 C CNN
F 3 "" H 8000 3150 50  0001 C CNN
	1    8000 3150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5AA5120B
P 8200 2850
F 0 "#PWR?" H 8200 2600 50  0001 C CNN
F 1 "GND" V 8200 2650 50  0000 C CNN
F 2 "" H 8200 2850 50  0001 C CNN
F 3 "" H 8200 2850 50  0001 C CNN
	1    8200 2850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5AA5122F
P 8200 2950
F 0 "#PWR?" H 8200 2700 50  0001 C CNN
F 1 "GND" V 8200 2750 50  0000 C CNN
F 2 "" H 8200 2950 50  0001 C CNN
F 3 "" H 8200 2950 50  0001 C CNN
	1    8200 2950
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5AA528F2
P 8200 3050
F 0 "#PWR?" H 8200 2900 50  0001 C CNN
F 1 "VCC" V 8200 3250 50  0000 C CNN
F 2 "" H 8200 3050 50  0001 C CNN
F 3 "" H 8200 3050 50  0001 C CNN
	1    8200 3050
	0    1    1    0   
$EndComp
Text HLabel 8200 3250 2    60   Input ~ 0
TX0
Text HLabel 8200 3150 2    60   Input ~ 0
RX1
Text HLabel 8200 3350 2    60   Input ~ 0
DTR
Text HLabel 5750 3650 2    60   Input ~ 0
RX1
Text HLabel 5750 3750 2    60   Input ~ 0
TX0
Text HLabel 5750 3850 2    60   Input ~ 0
D2
Text HLabel 5750 3950 2    60   Input ~ 0
D3
Text HLabel 5750 4050 2    60   Input ~ 0
D4
Text HLabel 5750 4150 2    60   Input ~ 0
D5
Text HLabel 5750 4250 2    60   Input ~ 0
D6
Text HLabel 5750 4350 2    60   Input ~ 0
D7
Text HLabel 5750 2150 2    60   Input ~ 0
D9
Text HLabel 5750 2050 2    60   Input ~ 0
D8
Text HLabel 5750 2250 2    60   Input ~ 0
D10
Text HLabel 5750 2350 2    60   Input ~ 0
MOSI
Text HLabel 5750 2450 2    60   Input ~ 0
MISO
Text HLabel 6300 2550 2    60   Input ~ 0
SCK
$Comp
L foot_sensor-rescue:R R?
U 1 1 5AA535D6
P 6150 2100
F 0 "R?" V 6230 2100 50  0000 C CNN
F 1 "330" V 6150 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6080 2100 50  0001 C CNN
F 3 "" H 6150 2100 50  0001 C CNN
	1    6150 2100
	1    0    0    -1  
$EndComp
$Comp
L foot_sensor-rescue:LED D?
U 1 1 5AA53637
P 6150 1800
F 0 "D?" H 6150 1900 50  0000 C CNN
F 1 "LED" H 6150 1700 50  0000 C CNN
F 2 "LEDs:LED_0805" H 6150 1800 50  0001 C CNN
F 3 "" H 6150 1800 50  0001 C CNN
	1    6150 1800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5AA5380E
P 6150 1650
F 0 "#PWR?" H 6150 1400 50  0001 C CNN
F 1 "GND" H 6150 1500 50  0000 C CNN
F 2 "" H 6150 1650 50  0001 C CNN
F 3 "" H 6150 1650 50  0001 C CNN
	1    6150 1650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5AA53893
P 3750 4450
F 0 "#PWR?" H 3750 4200 50  0001 C CNN
F 1 "GND" H 3750 4300 50  0000 C CNN
F 2 "" H 3750 4450 50  0001 C CNN
F 3 "" H 3750 4450 50  0001 C CNN
	1    3750 4450
	1    0    0    -1  
$EndComp
Text HLabel 3850 3400 0    60   Input ~ 0
A6
Text HLabel 3850 3500 0    60   Input ~ 0
A7
Text HLabel 8050 1800 0    60   Input ~ 0
MISO
Text HLabel 8050 1900 0    60   Input ~ 0
SCK
Text HLabel 5800 3550 2    60   Input ~ 0
RESET
Wire Wire Line
	6700 3500 6650 3500
Connection ~ 6650 3500
Wire Wire Line
	3750 2350 3850 2350
Wire Wire Line
	3750 1800 3750 2050
Wire Wire Line
	3750 2050 3850 2050
Wire Wire Line
	3850 2150 3750 2150
Connection ~ 3750 2150
Connection ~ 3750 2050
Wire Wire Line
	3500 2700 3500 2650
Wire Wire Line
	3500 2650 3850 2650
Wire Wire Line
	6050 3000 6050 2750
Wire Wire Line
	6050 2750 5750 2750
Wire Wire Line
	6350 3000 6350 2650
Wire Wire Line
	6350 2650 5750 2650
Wire Wire Line
	5750 2550 6150 2550
Wire Wire Line
	6150 2550 6150 2250
Wire Wire Line
	3850 4150 3750 4150
Wire Wire Line
	3750 4150 3750 4250
Wire Wire Line
	3850 4250 3750 4250
Connection ~ 3750 4250
Wire Wire Line
	3850 4350 3750 4350
Connection ~ 3750 4350
Wire Wire Line
	5800 3550 5800 3500
Connection ~ 5800 3500
Text HLabel 8050 2000 0    60   Input ~ 0
RESET
$Comp
L power:VCC #PWR?
U 1 1 5AA53ACF
P 8550 1800
F 0 "#PWR?" H 8550 1650 50  0001 C CNN
F 1 "VCC" V 8550 2000 50  0000 C CNN
F 2 "" H 8550 1800 50  0001 C CNN
F 3 "" H 8550 1800 50  0001 C CNN
	1    8550 1800
	0    1    1    0   
$EndComp
Text HLabel 8550 1900 2    60   Input ~ 0
MOSI
$Comp
L power:GND #PWR?
U 1 1 5AA53B0C
P 8550 2000
F 0 "#PWR?" H 8550 1750 50  0001 C CNN
F 1 "GND" V 8550 1800 50  0000 C CNN
F 2 "" H 8550 2000 50  0001 C CNN
F 3 "" H 8550 2000 50  0001 C CNN
	1    8550 2000
	0    -1   -1   0   
$EndComp
Connection ~ 6150 2550
$Comp
L foot_sensor-rescue:R R?
U 1 1 5AA64955
P 6650 3350
F 0 "R?" V 6730 3350 50  0000 C CNN
F 1 "10K" V 6650 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6580 3350 50  0001 C CNN
F 3 "" H 6650 3350 50  0001 C CNN
	1    6650 3350
	1    0    0    -1  
$EndComp
$Comp
L foot_sensor-rescue:GS2 J?
U 1 1 5AA4B8C4
P 6650 3700
F 0 "J?" H 6750 3850 50  0000 C CNN
F 1 "GS2" H 6750 3551 50  0000 C CNN
F 2 "Connectors:GS2" V 6724 3700 50  0001 C CNN
F 3 "" H 6650 3700 50  0001 C CNN
	1    6650 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5AA59C69
P 3100 3750
F 0 "#PWR?" H 3100 3500 50  0001 C CNN
F 1 "GND" H 3100 3600 50  0000 C CNN
F 2 "" H 3100 3750 50  0001 C CNN
F 3 "" H 3100 3750 50  0001 C CNN
	1    3100 3750
	1    0    0    -1  
$EndComp
$Comp
L foot_sensor-rescue:C C?
U 1 1 5AA59C91
P 3100 3600
F 0 "C?" H 3125 3700 50  0000 L CNN
F 1 ".1uF" H 3125 3500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3138 3450 50  0001 C CNN
F 3 "" H 3100 3600 50  0001 C CNN
	1    3100 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5AA59D07
P 3100 3450
F 0 "#PWR?" H 3100 3300 50  0001 C CNN
F 1 "+3.3V" H 3100 3590 50  0000 C CNN
F 2 "" H 3100 3450 50  0001 C CNN
F 3 "" H 3100 3450 50  0001 C CNN
	1    3100 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3500 5800 3500
Wire Wire Line
	3750 2150 3750 2350
Wire Wire Line
	3750 2050 3750 2150
Wire Wire Line
	3750 4250 3750 4350
Wire Wire Line
	3750 4350 3750 4450
Wire Wire Line
	5800 3500 5750 3500
Wire Wire Line
	6150 2550 6300 2550
$EndSCHEMATC
