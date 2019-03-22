EESchema Schematic File Version 4
LIBS:bed-sensor-cache
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
L Regulator_Linear:AP2112K-3.3 U?
U 1 1 5C947ED8
P 2050 1600
AR Path="/5C947ED8" Ref="U?"  Part="1" 
AR Path="/5C947A0A/5C947ED8" Ref="U?"  Part="1" 
F 0 "U?" H 2050 1942 50  0000 C CNN
F 1 "AP2112K-3.3" H 2050 1851 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2050 1925 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP2112.pdf" H 2050 1700 50  0001 C CNN
	1    2050 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C947EDF
P 2050 1900
AR Path="/5C947EDF" Ref="#PWR?"  Part="1" 
AR Path="/5C947A0A/5C947EDF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2050 1650 50  0001 C CNN
F 1 "GND" H 2055 1727 50  0000 C CNN
F 2 "" H 2050 1900 50  0001 C CNN
F 3 "" H 2050 1900 50  0001 C CNN
	1    2050 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5C947EE5
P 2500 1400
AR Path="/5C947EE5" Ref="#PWR?"  Part="1" 
AR Path="/5C947A0A/5C947EE5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2500 1250 50  0001 C CNN
F 1 "+3.3V" H 2515 1573 50  0000 C CNN
F 2 "" H 2500 1400 50  0001 C CNN
F 3 "" H 2500 1400 50  0001 C CNN
	1    2500 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1500 2450 1500
Wire Wire Line
	2500 1500 2500 1400
$Comp
L power:GND #PWR?
U 1 1 5C947EED
P 2450 1800
AR Path="/5C947EED" Ref="#PWR?"  Part="1" 
AR Path="/5C947A0A/5C947EED" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2450 1550 50  0001 C CNN
F 1 "GND" H 2455 1627 50  0000 C CNN
F 2 "" H 2450 1800 50  0001 C CNN
F 3 "" H 2450 1800 50  0001 C CNN
	1    2450 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C947EF3
P 1500 1750
AR Path="/5C947EF3" Ref="R?"  Part="1" 
AR Path="/5C947A0A/5C947EF3" Ref="R?"  Part="1" 
F 0 "R?" H 1430 1704 50  0000 R CNN
F 1 "100k" H 1430 1795 50  0000 R CNN
F 2 "" V 1430 1750 50  0001 C CNN
F 3 "~" H 1500 1750 50  0001 C CNN
	1    1500 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 1600 1750 1900
Wire Wire Line
	1750 1900 1500 1900
Wire Wire Line
	1500 1600 1500 1500
Wire Wire Line
	1500 1500 1750 1500
$Comp
L Device:CP C?
U 1 1 5C947EFE
P 2450 1650
AR Path="/5C947EFE" Ref="C?"  Part="1" 
AR Path="/5C947A0A/5C947EFE" Ref="C?"  Part="1" 
F 0 "C?" H 2568 1696 50  0000 L CNN
F 1 "CP" H 2568 1605 50  0000 L CNN
F 2 "" H 2488 1500 50  0001 C CNN
F 3 "~" H 2450 1650 50  0001 C CNN
	1    2450 1650
	1    0    0    -1  
$EndComp
Connection ~ 2450 1500
Wire Wire Line
	2450 1500 2500 1500
$Comp
L Device:CP_Small C?
U 1 1 5C947F07
P 1300 1750
AR Path="/5C947F07" Ref="C?"  Part="1" 
AR Path="/5C947A0A/5C947F07" Ref="C?"  Part="1" 
F 0 "C?" H 1100 1750 50  0000 L CNN
F 1 "CP_Small" H 1100 1650 50  0000 L CNN
F 2 "" H 1300 1750 50  0001 C CNN
F 3 "~" H 1300 1750 50  0001 C CNN
	1    1300 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1650 1300 1500
Wire Wire Line
	1250 1500 1300 1500
Connection ~ 1500 1500
$Comp
L power:GND #PWR?
U 1 1 5C947F11
P 1300 1850
AR Path="/5C947F11" Ref="#PWR?"  Part="1" 
AR Path="/5C947A0A/5C947F11" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1300 1600 50  0001 C CNN
F 1 "GND" H 1305 1677 50  0000 C CNN
F 2 "" H 1300 1850 50  0001 C CNN
F 3 "" H 1300 1850 50  0001 C CNN
	1    1300 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 5C947F17
P 1100 1500
AR Path="/5C947F17" Ref="D?"  Part="1" 
AR Path="/5C947A0A/5C947F17" Ref="D?"  Part="1" 
F 0 "D?" H 1100 1284 50  0000 C CNN
F 1 "D_Schottky" H 1100 1375 50  0000 C CNN
F 2 "" H 1100 1500 50  0001 C CNN
F 3 "~" H 1100 1500 50  0001 C CNN
	1    1100 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_PMOS_DGS Q?
U 1 1 5C947F1E
P 1200 1200
AR Path="/5C947F1E" Ref="Q?"  Part="1" 
AR Path="/5C947A0A/5C947F1E" Ref="Q?"  Part="1" 
F 0 "Q?" H 1406 1246 50  0000 L CNN
F 1 "Q_PMOS_DGS" H 1406 1155 50  0000 L CNN
F 2 "" H 1400 1300 50  0001 C CNN
F 3 "~" H 1200 1200 50  0001 C CNN
	1    1200 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 5C947F25
P 1300 1000
AR Path="/5C947F25" Ref="#PWR?"  Part="1" 
AR Path="/5C947A0A/5C947F25" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1300 850 50  0001 C CNN
F 1 "+BATT" H 1315 1173 50  0000 C CNN
F 2 "" H 1300 1000 50  0001 C CNN
F 3 "" H 1300 1000 50  0001 C CNN
	1    1300 1000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5C947F2B
P 700 1000
AR Path="/5C947F2B" Ref="#PWR?"  Part="1" 
AR Path="/5C947A0A/5C947F2B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 700 850 50  0001 C CNN
F 1 "VCC" H 717 1173 50  0000 C CNN
F 2 "" H 700 1000 50  0001 C CNN
F 3 "" H 700 1000 50  0001 C CNN
	1    700  1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C947F31
P 700 1750
AR Path="/5C947F31" Ref="R?"  Part="1" 
AR Path="/5C947A0A/5C947F31" Ref="R?"  Part="1" 
F 0 "R?" H 770 1796 50  0000 L CNN
F 1 "100K" H 770 1705 50  0000 L CNN
F 2 "" V 630 1750 50  0001 C CNN
F 3 "~" H 700 1750 50  0001 C CNN
	1    700  1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  1500 950  1500
Wire Wire Line
	700  1600 700  1500
Connection ~ 700  1500
$Comp
L power:GND #PWR?
U 1 1 5C947F3B
P 700 1900
AR Path="/5C947F3B" Ref="#PWR?"  Part="1" 
AR Path="/5C947A0A/5C947F3B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 700 1650 50  0001 C CNN
F 1 "GND" H 705 1727 50  0000 C CNN
F 2 "" H 700 1900 50  0001 C CNN
F 3 "" H 700 1900 50  0001 C CNN
	1    700  1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  1000 700  1200
Wire Wire Line
	1300 1400 1300 1500
Connection ~ 1300 1500
Wire Wire Line
	1300 1500 1500 1500
Wire Wire Line
	700  1200 1000 1200
Connection ~ 700  1200
Wire Wire Line
	700  1200 700  1500
Text Notes 2200 750  0    50   ~ 0
Power\n
$EndSCHEMATC
