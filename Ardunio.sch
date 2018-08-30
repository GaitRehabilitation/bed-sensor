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
L power:+3V3 #PWR0143
U 1 1 5AA50249
P 6650 3200
F 0 "#PWR0143" H 6650 3050 50  0001 C CNN
F 1 "+3V3" H 6650 3340 50  0000 C CNN
F 2 "" H 6650 3200 50  0001 C CNN
F 3 "" H 6650 3200 50  0001 C CNN
	1    6650 3200
	1    0    0    -1  
$EndComp
Text HLabel 7000 3500 2    60   Input ~ 0
DTR
$Comp
L power:GND #PWR0144
U 1 1 5AA503C6
P 6650 3700
F 0 "#PWR0144" H 6650 3450 50  0001 C CNN
F 1 "GND" H 6650 3550 50  0000 C CNN
F 2 "" H 6650 3700 50  0001 C CNN
F 3 "" H 6650 3700 50  0001 C CNN
	1    6650 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0145
U 1 1 5AA50483
P 3750 1800
F 0 "#PWR0145" H 3750 1650 50  0001 C CNN
F 1 "+3.3V" H 3750 1940 50  0000 C CNN
F 2 "" H 3750 1800 50  0001 C CNN
F 3 "" H 3750 1800 50  0001 C CNN
	1    3750 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0146
U 1 1 5AA5055F
P 3500 3000
F 0 "#PWR0146" H 3500 2750 50  0001 C CNN
F 1 "GND" H 3500 2850 50  0000 C CNN
F 2 "" H 3500 3000 50  0001 C CNN
F 3 "" H 3500 3000 50  0001 C CNN
	1    3500 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0147
U 1 1 5AA5081E
P 6200 3200
F 0 "#PWR0147" H 6200 2950 50  0001 C CNN
F 1 "GND" H 6200 3050 50  0000 C CNN
F 2 "" H 6200 3200 50  0001 C CNN
F 3 "" H 6200 3200 50  0001 C CNN
	1    6200 3200
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
L power:GND #PWR0148
U 1 1 5AA5120B
P 8200 2850
F 0 "#PWR0148" H 8200 2600 50  0001 C CNN
F 1 "GND" V 8200 2650 50  0000 C CNN
F 2 "" H 8200 2850 50  0001 C CNN
F 3 "" H 8200 2850 50  0001 C CNN
	1    8200 2850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0149
U 1 1 5AA5122F
P 8200 2950
F 0 "#PWR0149" H 8200 2700 50  0001 C CNN
F 1 "GND" V 8200 2750 50  0000 C CNN
F 2 "" H 8200 2950 50  0001 C CNN
F 3 "" H 8200 2950 50  0001 C CNN
	1    8200 2950
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0150
U 1 1 5AA528F2
P 8200 3050
F 0 "#PWR0150" H 8200 2900 50  0001 C CNN
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
L power:GND #PWR0151
U 1 1 5AA5380E
P 6150 1650
F 0 "#PWR0151" H 6150 1400 50  0001 C CNN
F 1 "GND" H 6150 1500 50  0000 C CNN
F 2 "" H 6150 1650 50  0001 C CNN
F 3 "" H 6150 1650 50  0001 C CNN
	1    6150 1650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0152
U 1 1 5AA53893
P 3750 4450
F 0 "#PWR0152" H 3750 4200 50  0001 C CNN
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
L power:VCC #PWR0153
U 1 1 5AA53ACF
P 8550 1800
F 0 "#PWR0153" H 8550 1650 50  0001 C CNN
F 1 "VCC" V 8550 2000 50  0000 C CNN
F 2 "" H 8550 1800 50  0001 C CNN
F 3 "" H 8550 1800 50  0001 C CNN
	1    8550 1800
	0    1    1    0   
$EndComp
Text HLabel 8550 1900 2    60   Input ~ 0
MOSI
$Comp
L power:GND #PWR0154
U 1 1 5AA53B0C
P 8550 2000
F 0 "#PWR0154" H 8550 1750 50  0001 C CNN
F 1 "GND" V 8550 1800 50  0000 C CNN
F 2 "" H 8550 2000 50  0001 C CNN
F 3 "" H 8550 2000 50  0001 C CNN
	1    8550 2000
	0    -1   -1   0   
$EndComp
Connection ~ 6150 2550
$Comp
L power:GND #PWR0155
U 1 1 5AA59C69
P 3100 3750
F 0 "#PWR0155" H 3100 3500 50  0001 C CNN
F 1 "GND" H 3100 3600 50  0000 C CNN
F 2 "" H 3100 3750 50  0001 C CNN
F 3 "" H 3100 3750 50  0001 C CNN
	1    3100 3750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0156
U 1 1 5AA59D07
P 3100 3450
F 0 "#PWR0156" H 3100 3300 50  0001 C CNN
F 1 "+3.3V" H 3100 3590 50  0000 C CNN
F 2 "" H 3100 3450 50  0001 C CNN
F 3 "" H 3100 3450 50  0001 C CNN
	1    3100 3450
	1    0    0    -1  
$EndComp
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
Wire Wire Line
	5800 3500 6650 3500
$Comp
L Device:C C9
U 1 1 5B120C1B
P 3500 2850
F 0 "C9" H 3615 2896 50  0000 L CNN
F 1 ".1uf" H 3615 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3538 2700 50  0001 C CNN
F 3 "~" H 3500 2850 50  0001 C CNN
	1    3500 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5B120CF2
P 3100 3600
F 0 "C8" H 3215 3646 50  0000 L CNN
F 1 ".1uf" H 3215 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3138 3450 50  0001 C CNN
F 3 "~" H 3100 3600 50  0001 C CNN
	1    3100 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5B120EB8
P 6150 2100
F 0 "R8" H 6220 2146 50  0000 L CNN
F 1 "330" H 6220 2055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6080 2100 50  0001 C CNN
F 3 "~" H 6150 2100 50  0001 C CNN
	1    6150 2100
	1    0    0    -1  
$EndComp
$Comp
L LED:LD271 D3
U 1 1 5B12106B
P 6150 1850
F 0 "D3" V 6054 2003 50  0000 L CNN
F 1 "LD271" V 6145 2003 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad0.67x1.00mm_HandSolder" H 6150 2025 50  0001 C CNN
F 3 "http://www.alliedelec.com/m/d/40788c34903a719969df15f1fbea1056.pdf" H 6100 1850 50  0001 C CNN
	1    6150 1850
	0    1    1    0   
$EndComp
$Comp
L Device:Crystal_GND2 Y1
U 1 1 5B1211F2
P 6200 3000
F 0 "Y1" H 6200 3268 50  0000 C CNN
F 1 "Crystal_GND2" H 6200 3177 50  0000 C CNN
F 2 "components:OSC_CSTCE8M00G55-R0" H 6200 3000 50  0001 C CNN
F 3 "~" H 6200 3000 50  0001 C CNN
	1    6200 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5B1212E7
P 6850 3500
F 0 "C10" V 6598 3500 50  0000 C CNN
F 1 ".1uf" V 6689 3500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6888 3350 50  0001 C CNN
F 3 "~" H 6850 3500 50  0001 C CNN
	1    6850 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5B1213F8
P 6650 3350
F 0 "R9" H 6720 3396 50  0000 L CNN
F 1 "10k" H 6720 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6580 3350 50  0001 C CNN
F 3 "~" H 6650 3350 50  0001 C CNN
	1    6650 3350
	1    0    0    -1  
$EndComp
Connection ~ 6650 3500
Wire Wire Line
	6650 3500 6700 3500
$Comp
L Device:Jumper_NO_Small JP1
U 1 1 5B12181A
P 6650 3600
F 0 "JP1" V 6604 3648 50  0000 L CNN
F 1 "Jumper_NO_Small" V 6695 3648 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 6650 3600 50  0001 C CNN
F 3 "~" H 6650 3600 50  0001 C CNN
	1    6650 3600
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J3
U 1 1 5B121CDB
P 8250 1900
F 0 "J3" H 8300 2217 50  0000 C CNN
F 1 "ISP" H 8300 2126 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 8250 1900 50  0001 C CNN
F 3 "~" H 8250 1900 50  0001 C CNN
	1    8250 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 5B121F07
P 8000 3150
F 0 "J2" H 7920 2625 50  0000 C CNN
F 1 "Conn_01x06" H 7920 2716 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 8000 3150 50  0001 C CNN
F 3 "~" H 8000 3150 50  0001 C CNN
	1    8000 3150
	-1   0    0    1   
$EndComp
$Comp
L MCU_Atmel_ATMEGA:ATMEGA328-AU U3
U 1 1 5B216C7D
P 4750 3150
F 0 "U3" H 4800 4517 50  0000 C CNN
F 1 "ATMEGA328-AU" H 4800 4426 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 4750 3150 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-8271-8-bit-avr-microcontroller-atmega48a-48pa-88a-88pa-168a-168pa-328-328p_datasheet.pdf" H 4750 3150 50  0001 C CNN
	1    4750 3150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
