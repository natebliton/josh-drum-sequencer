EESchema Schematic File Version 4
LIBS:JDS-v1-cache
EELAYER 26 0
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
L 74xx:74HC595 U1
U 1 1 60F1FAA6
P 2150 6300
F 0 "U1" H 2150 7081 50  0000 C CNN
F 1 "74HC595" H 2150 6990 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 2150 6300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2150 6300 50  0001 C CNN
	1    2150 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 60F25EC4
P 2150 7000
F 0 "#PWR0101" H 2150 6750 50  0001 C CNN
F 1 "GND" H 2155 6827 50  0000 C CNN
F 2 "" H 2150 7000 50  0001 C CNN
F 3 "" H 2150 7000 50  0001 C CNN
	1    2150 7000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 60F2854A
P 2150 5700
F 0 "#PWR0102" H 2150 5550 50  0001 C CNN
F 1 "+3.3V" V 2165 5828 50  0000 L CNN
F 2 "" H 2150 5700 50  0001 C CNN
F 3 "" H 2150 5700 50  0001 C CNN
	1    2150 5700
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0103
U 1 1 60F28B0E
P 1750 6200
F 0 "#PWR0103" H 1750 6050 50  0001 C CNN
F 1 "+3.3V" V 1765 6328 50  0000 L CNN
F 2 "" H 1750 6200 50  0001 C CNN
F 3 "" H 1750 6200 50  0001 C CNN
	1    1750 6200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 6800 2650 6800
$Comp
L power:GND #PWR0104
U 1 1 60F2A276
P 1750 6500
F 0 "#PWR0104" H 1750 6250 50  0001 C CNN
F 1 "GND" H 1755 6327 50  0000 C CNN
F 2 "" H 1750 6500 50  0001 C CNN
F 3 "" H 1750 6500 50  0001 C CNN
	1    1750 6500
	1    0    0    -1  
$EndComp
Text GLabel 2550 5900 2    50   Input ~ 0
pm-out1
Text GLabel 2550 6000 2    50   Input ~ 0
pm-out2
Text GLabel 2550 6100 2    50   Input ~ 0
pm-out3
Text GLabel 2550 6200 2    50   Input ~ 0
pm-out4
Text GLabel 2550 6300 2    50   Input ~ 0
pm-out5
Text GLabel 2550 6400 2    50   Input ~ 0
pm-out6
Text GLabel 2550 6500 2    50   Input ~ 0
pm-out7
$Comp
L power:GND #PWR0105
U 1 1 60F414D0
P 2350 5050
F 0 "#PWR0105" H 2350 4800 50  0001 C CNN
F 1 "GND" H 2355 4877 50  0000 C CNN
F 2 "" H 2350 5050 50  0001 C CNN
F 3 "" H 2350 5050 50  0001 C CNN
	1    2350 5050
	1    0    0    -1  
$EndComp
Text GLabel 1350 3050 0    50   Input ~ 0
toAmpL
Text GLabel 1350 3150 0    50   Input ~ 0
toAmpR
Text GLabel 1750 5900 0    50   Input ~ 0
pm-serial
Text GLabel 1750 6100 0    50   Input ~ 0
pm-clock
Text GLabel 1750 6400 0    50   Input ~ 0
pm-enable
Text GLabel 4450 3000 2    50   Input ~ 0
pm-in8
Text GLabel 4450 2300 2    50   Input ~ 0
pm-in1
Text GLabel 4450 2400 2    50   Input ~ 0
pm-in2
Text GLabel 4450 2500 2    50   Input ~ 0
pm-in3
Text GLabel 4450 2600 2    50   Input ~ 0
pm-in4
Text GLabel 4450 2700 2    50   Input ~ 0
pm-in5
Text GLabel 4450 2800 2    50   Input ~ 0
pm-in6
Text GLabel 4450 2900 2    50   Input ~ 0
pm-in7
Text GLabel 1350 3350 0    50   Input ~ 0
pot1
$Comp
L Diode:1N4148 D1
U 1 1 60F5147C
P 5550 850
F 0 "D1" H 5550 1066 50  0000 C CNN
F 1 "1N4148" H 5550 975 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5550 675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5550 850 50  0001 C CNN
	1    5550 850 
	1    0    0    -1  
$EndComp
Text GLabel 4200 1550 2    50   Input ~ 0
pm-out8
Text GLabel 4200 850  2    50   Input ~ 0
pm-out1
Text GLabel 4200 950  2    50   Input ~ 0
pm-out2
Text GLabel 4200 1050 2    50   Input ~ 0
pm-out3
Text GLabel 4200 1150 2    50   Input ~ 0
pm-out4
Text GLabel 4200 1250 2    50   Input ~ 0
pm-out5
Text GLabel 4200 1350 2    50   Input ~ 0
pm-out6
Text GLabel 4200 1450 2    50   Input ~ 0
pm-out7
$Comp
L Diode:1N4148 D2
U 1 1 60F5768D
P 5550 1200
F 0 "D2" H 5550 1416 50  0000 C CNN
F 1 "1N4148" H 5550 1325 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5550 1025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5550 1200 50  0001 C CNN
	1    5550 1200
	1    0    0    -1  
$EndComp
Text GLabel 5150 1000 0    50   Input ~ 0
pm-in1
Wire Wire Line
	5400 850  5400 1000
Wire Wire Line
	5400 1000 5150 1000
$Comp
L Diode:1N4148 D3
U 1 1 60F5CDB5
P 5550 1550
F 0 "D3" H 5550 1766 50  0000 C CNN
F 1 "1N4148" H 5550 1675 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5550 1375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5550 1550 50  0001 C CNN
	1    5550 1550
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D4
U 1 1 60F5CDC1
P 5550 1900
F 0 "D4" H 5550 2116 50  0000 C CNN
F 1 "1N4148" H 5550 2025 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5550 1725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5550 1900 50  0001 C CNN
	1    5550 1900
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D5
U 1 1 60F6AAFC
P 5550 2250
F 0 "D5" H 5550 2466 50  0000 C CNN
F 1 "1N4148" H 5550 2375 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5550 2075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5550 2250 50  0001 C CNN
	1    5550 2250
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D6
U 1 1 60F6AB08
P 5550 2600
F 0 "D6" H 5550 2816 50  0000 C CNN
F 1 "1N4148" H 5550 2725 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5550 2425 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5550 2600 50  0001 C CNN
	1    5550 2600
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D7
U 1 1 60F6AB18
P 5550 2950
F 0 "D7" H 5550 3166 50  0000 C CNN
F 1 "1N4148" H 5550 3075 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5550 2775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5550 2950 50  0001 C CNN
	1    5550 2950
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D8
U 1 1 60F6AB24
P 5550 3300
F 0 "D8" H 5550 3516 50  0000 C CNN
F 1 "1N4148" H 5550 3425 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5550 3125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5550 3300 50  0001 C CNN
	1    5550 3300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J1
U 1 1 60F48B14
P 4000 1150
F 0 "J1" H 3918 1667 50  0000 C CNN
F 1 "toPegMatrix" H 3918 1576 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 4000 1150 50  0001 C CNN
F 3 "~" H 4000 1150 50  0001 C CNN
	1    4000 1150
	-1   0    0    -1  
$EndComp
Connection ~ 5400 1900
Wire Wire Line
	5400 1000 5400 1200
Connection ~ 5400 1000
Connection ~ 5400 1200
Wire Wire Line
	5400 1200 5400 1550
Connection ~ 5400 1550
Connection ~ 5400 2250
Wire Wire Line
	5400 2250 5400 2600
Connection ~ 5400 2600
Wire Wire Line
	5400 2600 5400 2950
Connection ~ 5400 2950
Wire Wire Line
	5400 2950 5400 3300
$Comp
L Connector_Generic:Conn_01x08 J2
U 1 1 60F5D0B3
P 6200 2100
F 0 "J2" H 6280 2092 50  0000 L CNN
F 1 "fromPegsA" H 6280 2001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 6200 2100 50  0001 C CNN
F 3 "~" H 6200 2100 50  0001 C CNN
	1    6200 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1900 5400 2250
Wire Wire Line
	5400 1550 5400 1900
Wire Wire Line
	5700 2250 5700 2200
Wire Wire Line
	5700 2200 6000 2200
Wire Wire Line
	5700 1900 5700 2100
Wire Wire Line
	5700 2100 6000 2100
Wire Wire Line
	5700 1550 5750 1550
Wire Wire Line
	5750 1550 5750 2000
Wire Wire Line
	5750 2000 6000 2000
Wire Wire Line
	5700 1200 5800 1200
Wire Wire Line
	5800 1200 5800 1900
Wire Wire Line
	5800 1900 6000 1900
Wire Wire Line
	5700 850  5850 850 
Wire Wire Line
	5850 850  5850 1800
Wire Wire Line
	5850 1800 6000 1800
Wire Wire Line
	5700 2600 5750 2600
Wire Wire Line
	5750 2600 5750 2300
Wire Wire Line
	5750 2300 6000 2300
Wire Wire Line
	5700 2950 5800 2950
Wire Wire Line
	5800 2950 5800 2400
Wire Wire Line
	5800 2400 6000 2400
Wire Wire Line
	5700 3300 5850 3300
Wire Wire Line
	5850 3300 5850 2500
Wire Wire Line
	5850 2500 6000 2500
$Comp
L Diode:1N4148 D9
U 1 1 60F91D85
P 7000 850
F 0 "D9" H 7000 1066 50  0000 C CNN
F 1 "1N4148" H 7000 975 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7000 675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7000 850 50  0001 C CNN
	1    7000 850 
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D10
U 1 1 60F91D8B
P 7000 1200
F 0 "D10" H 7000 1416 50  0000 C CNN
F 1 "1N4148" H 7000 1325 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7000 1025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7000 1200 50  0001 C CNN
	1    7000 1200
	1    0    0    -1  
$EndComp
Text GLabel 6600 1000 0    50   Input ~ 0
pm-in2
Wire Wire Line
	6850 850  6850 1000
Wire Wire Line
	6850 1000 6600 1000
$Comp
L Diode:1N4148 D11
U 1 1 60F91D94
P 7000 1550
F 0 "D11" H 7000 1766 50  0000 C CNN
F 1 "1N4148" H 7000 1675 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7000 1375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7000 1550 50  0001 C CNN
	1    7000 1550
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D12
U 1 1 60F91D9A
P 7000 1900
F 0 "D12" H 7000 2116 50  0000 C CNN
F 1 "1N4148" H 7000 2025 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7000 1725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7000 1900 50  0001 C CNN
	1    7000 1900
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D13
U 1 1 60F91DA0
P 7000 2250
F 0 "D13" H 7000 2466 50  0000 C CNN
F 1 "1N4148" H 7000 2375 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7000 2075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7000 2250 50  0001 C CNN
	1    7000 2250
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D14
U 1 1 60F91DA6
P 7000 2600
F 0 "D14" H 7000 2816 50  0000 C CNN
F 1 "1N4148" H 7000 2725 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7000 2425 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7000 2600 50  0001 C CNN
	1    7000 2600
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D15
U 1 1 60F91DAC
P 7000 2950
F 0 "D15" H 7000 3166 50  0000 C CNN
F 1 "1N4148" H 7000 3075 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7000 2775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7000 2950 50  0001 C CNN
	1    7000 2950
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D16
U 1 1 60F91DB2
P 7000 3300
F 0 "D16" H 7000 3516 50  0000 C CNN
F 1 "1N4148" H 7000 3425 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7000 3125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7000 3300 50  0001 C CNN
	1    7000 3300
	1    0    0    -1  
$EndComp
Connection ~ 6850 1900
Wire Wire Line
	6850 1000 6850 1200
Connection ~ 6850 1000
Connection ~ 6850 1200
Wire Wire Line
	6850 1200 6850 1550
Connection ~ 6850 1550
Connection ~ 6850 2250
Wire Wire Line
	6850 2250 6850 2600
Connection ~ 6850 2600
Wire Wire Line
	6850 2600 6850 2950
Connection ~ 6850 2950
Wire Wire Line
	6850 2950 6850 3300
$Comp
L Connector_Generic:Conn_01x08 J3
U 1 1 60F91DC4
P 7650 2100
F 0 "J3" H 7730 2092 50  0000 L CNN
F 1 "fromPegsB" H 7730 2001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 7650 2100 50  0001 C CNN
F 3 "~" H 7650 2100 50  0001 C CNN
	1    7650 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1900 6850 2250
Wire Wire Line
	6850 1550 6850 1900
Wire Wire Line
	7150 2250 7150 2200
Wire Wire Line
	7150 2200 7450 2200
Wire Wire Line
	7150 1900 7150 2100
Wire Wire Line
	7150 2100 7450 2100
Wire Wire Line
	7150 1550 7200 1550
Wire Wire Line
	7200 1550 7200 2000
Wire Wire Line
	7200 2000 7450 2000
Wire Wire Line
	7150 1200 7250 1200
Wire Wire Line
	7250 1200 7250 1900
Wire Wire Line
	7250 1900 7450 1900
Wire Wire Line
	7150 850  7300 850 
Wire Wire Line
	7300 850  7300 1800
Wire Wire Line
	7300 1800 7450 1800
Wire Wire Line
	7150 2600 7200 2600
Wire Wire Line
	7200 2600 7200 2300
Wire Wire Line
	7200 2300 7450 2300
Wire Wire Line
	7150 2950 7250 2950
Wire Wire Line
	7250 2950 7250 2400
Wire Wire Line
	7250 2400 7450 2400
Wire Wire Line
	7150 3300 7300 3300
Wire Wire Line
	7300 3300 7300 2500
Wire Wire Line
	7300 2500 7450 2500
$Comp
L Diode:1N4148 D17
U 1 1 60FA101F
P 8400 850
F 0 "D17" H 8400 1066 50  0000 C CNN
F 1 "1N4148" H 8400 975 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8400 675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8400 850 50  0001 C CNN
	1    8400 850 
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D18
U 1 1 60FA1025
P 8400 1200
F 0 "D18" H 8400 1416 50  0000 C CNN
F 1 "1N4148" H 8400 1325 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8400 1025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8400 1200 50  0001 C CNN
	1    8400 1200
	1    0    0    -1  
$EndComp
Text GLabel 8000 1000 0    50   Input ~ 0
pm-in3
Wire Wire Line
	8250 850  8250 1000
Wire Wire Line
	8250 1000 8000 1000
$Comp
L Diode:1N4148 D19
U 1 1 60FA102E
P 8400 1550
F 0 "D19" H 8400 1766 50  0000 C CNN
F 1 "1N4148" H 8400 1675 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8400 1375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8400 1550 50  0001 C CNN
	1    8400 1550
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D20
U 1 1 60FA1034
P 8400 1900
F 0 "D20" H 8400 2116 50  0000 C CNN
F 1 "1N4148" H 8400 2025 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8400 1725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8400 1900 50  0001 C CNN
	1    8400 1900
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D21
U 1 1 60FA103A
P 8400 2250
F 0 "D21" H 8400 2466 50  0000 C CNN
F 1 "1N4148" H 8400 2375 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8400 2075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8400 2250 50  0001 C CNN
	1    8400 2250
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D22
U 1 1 60FA1040
P 8400 2600
F 0 "D22" H 8400 2816 50  0000 C CNN
F 1 "1N4148" H 8400 2725 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8400 2425 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8400 2600 50  0001 C CNN
	1    8400 2600
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D23
U 1 1 60FA1046
P 8400 2950
F 0 "D23" H 8400 3166 50  0000 C CNN
F 1 "1N4148" H 8400 3075 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8400 2775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8400 2950 50  0001 C CNN
	1    8400 2950
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D24
U 1 1 60FA104C
P 8400 3300
F 0 "D24" H 8400 3516 50  0000 C CNN
F 1 "1N4148" H 8400 3425 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8400 3125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8400 3300 50  0001 C CNN
	1    8400 3300
	1    0    0    -1  
$EndComp
Connection ~ 8250 1900
Wire Wire Line
	8250 1000 8250 1200
Connection ~ 8250 1000
Connection ~ 8250 1200
Wire Wire Line
	8250 1200 8250 1550
Connection ~ 8250 1550
Connection ~ 8250 2250
Wire Wire Line
	8250 2250 8250 2600
Connection ~ 8250 2600
Wire Wire Line
	8250 2600 8250 2950
Connection ~ 8250 2950
Wire Wire Line
	8250 2950 8250 3300
$Comp
L Connector_Generic:Conn_01x08 J4
U 1 1 60FA105E
P 9050 2100
F 0 "J4" H 9130 2092 50  0000 L CNN
F 1 "fromPegsC" H 9130 2001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 9050 2100 50  0001 C CNN
F 3 "~" H 9050 2100 50  0001 C CNN
	1    9050 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1900 8250 2250
Wire Wire Line
	8250 1550 8250 1900
Wire Wire Line
	8550 2250 8550 2200
Wire Wire Line
	8550 2200 8850 2200
Wire Wire Line
	8550 1900 8550 2100
Wire Wire Line
	8550 2100 8850 2100
Wire Wire Line
	8550 1550 8600 1550
Wire Wire Line
	8600 1550 8600 2000
Wire Wire Line
	8600 2000 8850 2000
Wire Wire Line
	8550 1200 8650 1200
Wire Wire Line
	8650 1200 8650 1900
Wire Wire Line
	8650 1900 8850 1900
Wire Wire Line
	8550 850  8700 850 
Wire Wire Line
	8700 850  8700 1800
Wire Wire Line
	8700 1800 8850 1800
Wire Wire Line
	8550 2600 8600 2600
Wire Wire Line
	8600 2600 8600 2300
Wire Wire Line
	8600 2300 8850 2300
Wire Wire Line
	8550 2950 8650 2950
Wire Wire Line
	8650 2950 8650 2400
Wire Wire Line
	8650 2400 8850 2400
Wire Wire Line
	8550 3300 8700 3300
Wire Wire Line
	8700 3300 8700 2500
Wire Wire Line
	8700 2500 8850 2500
$Comp
L Diode:1N4148 D25
U 1 1 60FAF542
P 9800 850
F 0 "D25" H 9800 1066 50  0000 C CNN
F 1 "1N4148" H 9800 975 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9800 675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9800 850 50  0001 C CNN
	1    9800 850 
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D26
U 1 1 60FAF548
P 9800 1200
F 0 "D26" H 9800 1416 50  0000 C CNN
F 1 "1N4148" H 9800 1325 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9800 1025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9800 1200 50  0001 C CNN
	1    9800 1200
	1    0    0    -1  
$EndComp
Text GLabel 9400 1000 0    50   Input ~ 0
pm-in4
Wire Wire Line
	9650 850  9650 1000
Wire Wire Line
	9650 1000 9400 1000
$Comp
L Diode:1N4148 D27
U 1 1 60FAF551
P 9800 1550
F 0 "D27" H 9800 1766 50  0000 C CNN
F 1 "1N4148" H 9800 1675 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9800 1375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9800 1550 50  0001 C CNN
	1    9800 1550
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D28
U 1 1 60FAF557
P 9800 1900
F 0 "D28" H 9800 2116 50  0000 C CNN
F 1 "1N4148" H 9800 2025 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9800 1725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9800 1900 50  0001 C CNN
	1    9800 1900
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D29
U 1 1 60FAF55D
P 9800 2250
F 0 "D29" H 9800 2466 50  0000 C CNN
F 1 "1N4148" H 9800 2375 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9800 2075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9800 2250 50  0001 C CNN
	1    9800 2250
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D30
U 1 1 60FAF563
P 9800 2600
F 0 "D30" H 9800 2816 50  0000 C CNN
F 1 "1N4148" H 9800 2725 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9800 2425 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9800 2600 50  0001 C CNN
	1    9800 2600
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D31
U 1 1 60FAF569
P 9800 2950
F 0 "D31" H 9800 3166 50  0000 C CNN
F 1 "1N4148" H 9800 3075 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9800 2775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9800 2950 50  0001 C CNN
	1    9800 2950
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D32
U 1 1 60FAF56F
P 9800 3300
F 0 "D32" H 9800 3516 50  0000 C CNN
F 1 "1N4148" H 9800 3425 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9800 3125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9800 3300 50  0001 C CNN
	1    9800 3300
	1    0    0    -1  
$EndComp
Connection ~ 9650 1900
Wire Wire Line
	9650 1000 9650 1200
Connection ~ 9650 1000
Connection ~ 9650 1200
Wire Wire Line
	9650 1200 9650 1550
Connection ~ 9650 1550
Connection ~ 9650 2250
Wire Wire Line
	9650 2250 9650 2600
Connection ~ 9650 2600
Wire Wire Line
	9650 2600 9650 2950
Connection ~ 9650 2950
Wire Wire Line
	9650 2950 9650 3300
$Comp
L Connector_Generic:Conn_01x08 J5
U 1 1 60FAF581
P 10450 2100
F 0 "J5" H 10530 2092 50  0000 L CNN
F 1 "fromPegsD" H 10530 2001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 10450 2100 50  0001 C CNN
F 3 "~" H 10450 2100 50  0001 C CNN
	1    10450 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 1900 9650 2250
Wire Wire Line
	9650 1550 9650 1900
Wire Wire Line
	9950 2250 9950 2200
Wire Wire Line
	9950 2200 10250 2200
Wire Wire Line
	9950 1900 9950 2100
Wire Wire Line
	9950 2100 10250 2100
Wire Wire Line
	9950 1550 10000 1550
Wire Wire Line
	10000 1550 10000 2000
Wire Wire Line
	10000 2000 10250 2000
Wire Wire Line
	9950 1200 10050 1200
Wire Wire Line
	10050 1200 10050 1900
Wire Wire Line
	10050 1900 10250 1900
Wire Wire Line
	9950 850  10100 850 
Wire Wire Line
	10100 850  10100 1800
Wire Wire Line
	10100 1800 10250 1800
Wire Wire Line
	9950 2600 10000 2600
Wire Wire Line
	10000 2600 10000 2300
Wire Wire Line
	10000 2300 10250 2300
Wire Wire Line
	9950 2950 10050 2950
Wire Wire Line
	10050 2950 10050 2400
Wire Wire Line
	10050 2400 10250 2400
Wire Wire Line
	9950 3300 10100 3300
Wire Wire Line
	10100 3300 10100 2500
Wire Wire Line
	10100 2500 10250 2500
$Comp
L Diode:1N4148 D33
U 1 1 60FF6534
P 5550 3750
F 0 "D33" H 5550 3966 50  0000 C CNN
F 1 "1N4148" H 5550 3875 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5550 3575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5550 3750 50  0001 C CNN
	1    5550 3750
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D34
U 1 1 60FF653A
P 5550 4100
F 0 "D34" H 5550 4316 50  0000 C CNN
F 1 "1N4148" H 5550 4225 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5550 3925 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5550 4100 50  0001 C CNN
	1    5550 4100
	1    0    0    -1  
$EndComp
Text GLabel 5150 3900 0    50   Input ~ 0
pm-in5
Wire Wire Line
	5400 3750 5400 3900
Wire Wire Line
	5400 3900 5150 3900
$Comp
L Diode:1N4148 D35
U 1 1 60FF6543
P 5550 4450
F 0 "D35" H 5550 4666 50  0000 C CNN
F 1 "1N4148" H 5550 4575 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5550 4275 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5550 4450 50  0001 C CNN
	1    5550 4450
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D36
U 1 1 60FF6549
P 5550 4800
F 0 "D36" H 5550 5016 50  0000 C CNN
F 1 "1N4148" H 5550 4925 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5550 4625 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5550 4800 50  0001 C CNN
	1    5550 4800
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D37
U 1 1 60FF654F
P 5550 5150
F 0 "D37" H 5550 5366 50  0000 C CNN
F 1 "1N4148" H 5550 5275 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5550 4975 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5550 5150 50  0001 C CNN
	1    5550 5150
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D38
U 1 1 60FF6555
P 5550 5500
F 0 "D38" H 5550 5716 50  0000 C CNN
F 1 "1N4148" H 5550 5625 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5550 5325 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5550 5500 50  0001 C CNN
	1    5550 5500
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D39
U 1 1 60FF655B
P 5550 5850
F 0 "D39" H 5550 6066 50  0000 C CNN
F 1 "1N4148" H 5550 5975 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5550 5675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5550 5850 50  0001 C CNN
	1    5550 5850
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D40
U 1 1 60FF6561
P 5550 6200
F 0 "D40" H 5550 6416 50  0000 C CNN
F 1 "1N4148" H 5550 6325 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5550 6025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5550 6200 50  0001 C CNN
	1    5550 6200
	1    0    0    -1  
$EndComp
Connection ~ 5400 4800
Wire Wire Line
	5400 3900 5400 4100
Connection ~ 5400 3900
Connection ~ 5400 4100
Wire Wire Line
	5400 4100 5400 4450
Connection ~ 5400 4450
Connection ~ 5400 5150
Wire Wire Line
	5400 5150 5400 5500
Connection ~ 5400 5500
Wire Wire Line
	5400 5500 5400 5850
Connection ~ 5400 5850
Wire Wire Line
	5400 5850 5400 6200
$Comp
L Connector_Generic:Conn_01x08 J6
U 1 1 60FF6573
P 6200 5000
F 0 "J6" H 6280 4992 50  0000 L CNN
F 1 "fromPegsE" H 6280 4901 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 6200 5000 50  0001 C CNN
F 3 "~" H 6200 5000 50  0001 C CNN
	1    6200 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4800 5400 5150
Wire Wire Line
	5400 4450 5400 4800
Wire Wire Line
	5700 5150 5700 5100
Wire Wire Line
	5700 5100 6000 5100
Wire Wire Line
	5700 4800 5700 5000
Wire Wire Line
	5700 5000 6000 5000
Wire Wire Line
	5700 4450 5750 4450
Wire Wire Line
	5750 4450 5750 4900
Wire Wire Line
	5750 4900 6000 4900
Wire Wire Line
	5700 4100 5800 4100
Wire Wire Line
	5800 4100 5800 4800
Wire Wire Line
	5800 4800 6000 4800
Wire Wire Line
	5700 3750 5850 3750
Wire Wire Line
	5850 3750 5850 4700
Wire Wire Line
	5850 4700 6000 4700
Wire Wire Line
	5700 5500 5750 5500
Wire Wire Line
	5750 5500 5750 5200
Wire Wire Line
	5750 5200 6000 5200
Wire Wire Line
	5700 5850 5800 5850
Wire Wire Line
	5800 5850 5800 5300
Wire Wire Line
	5800 5300 6000 5300
Wire Wire Line
	5700 6200 5850 6200
Wire Wire Line
	5850 6200 5850 5400
Wire Wire Line
	5850 5400 6000 5400
$Comp
L Diode:1N4148 D41
U 1 1 60FF6591
P 7000 3750
F 0 "D41" H 7000 3966 50  0000 C CNN
F 1 "1N4148" H 7000 3875 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7000 3575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7000 3750 50  0001 C CNN
	1    7000 3750
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D42
U 1 1 60FF6597
P 7000 4100
F 0 "D42" H 7000 4316 50  0000 C CNN
F 1 "1N4148" H 7000 4225 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7000 3925 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7000 4100 50  0001 C CNN
	1    7000 4100
	1    0    0    -1  
$EndComp
Text GLabel 6600 3900 0    50   Input ~ 0
pm-in6
Wire Wire Line
	6850 3750 6850 3900
Wire Wire Line
	6850 3900 6600 3900
$Comp
L Diode:1N4148 D43
U 1 1 60FF65A0
P 7000 4450
F 0 "D43" H 7000 4666 50  0000 C CNN
F 1 "1N4148" H 7000 4575 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7000 4275 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7000 4450 50  0001 C CNN
	1    7000 4450
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D44
U 1 1 60FF65A6
P 7000 4800
F 0 "D44" H 7000 5016 50  0000 C CNN
F 1 "1N4148" H 7000 4925 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7000 4625 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7000 4800 50  0001 C CNN
	1    7000 4800
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D45
U 1 1 60FF65AC
P 7000 5150
F 0 "D45" H 7000 5366 50  0000 C CNN
F 1 "1N4148" H 7000 5275 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7000 4975 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7000 5150 50  0001 C CNN
	1    7000 5150
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D46
U 1 1 60FF65B2
P 7000 5500
F 0 "D46" H 7000 5716 50  0000 C CNN
F 1 "1N4148" H 7000 5625 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7000 5325 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7000 5500 50  0001 C CNN
	1    7000 5500
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D47
U 1 1 60FF65B8
P 7000 5850
F 0 "D47" H 7000 6066 50  0000 C CNN
F 1 "1N4148" H 7000 5975 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7000 5675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7000 5850 50  0001 C CNN
	1    7000 5850
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D48
U 1 1 60FF65BE
P 7000 6200
F 0 "D48" H 7000 6416 50  0000 C CNN
F 1 "1N4148" H 7000 6325 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7000 6025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7000 6200 50  0001 C CNN
	1    7000 6200
	1    0    0    -1  
$EndComp
Connection ~ 6850 4800
Wire Wire Line
	6850 3900 6850 4100
Connection ~ 6850 3900
Connection ~ 6850 4100
Wire Wire Line
	6850 4100 6850 4450
Connection ~ 6850 4450
Connection ~ 6850 5150
Wire Wire Line
	6850 5150 6850 5500
Connection ~ 6850 5500
Wire Wire Line
	6850 5500 6850 5850
Connection ~ 6850 5850
Wire Wire Line
	6850 5850 6850 6200
$Comp
L Connector_Generic:Conn_01x08 J7
U 1 1 60FF65D0
P 7650 5000
F 0 "J7" H 7730 4992 50  0000 L CNN
F 1 "fromPegsF" H 7730 4901 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 7650 5000 50  0001 C CNN
F 3 "~" H 7650 5000 50  0001 C CNN
	1    7650 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4800 6850 5150
Wire Wire Line
	6850 4450 6850 4800
Wire Wire Line
	7150 5150 7150 5100
Wire Wire Line
	7150 5100 7450 5100
Wire Wire Line
	7150 4800 7150 5000
Wire Wire Line
	7150 5000 7450 5000
Wire Wire Line
	7150 4450 7200 4450
Wire Wire Line
	7200 4450 7200 4900
Wire Wire Line
	7200 4900 7450 4900
Wire Wire Line
	7150 4100 7250 4100
Wire Wire Line
	7250 4100 7250 4800
Wire Wire Line
	7250 4800 7450 4800
Wire Wire Line
	7150 3750 7300 3750
Wire Wire Line
	7300 3750 7300 4700
Wire Wire Line
	7300 4700 7450 4700
Wire Wire Line
	7150 5500 7200 5500
Wire Wire Line
	7200 5500 7200 5200
Wire Wire Line
	7200 5200 7450 5200
Wire Wire Line
	7150 5850 7250 5850
Wire Wire Line
	7250 5850 7250 5300
Wire Wire Line
	7250 5300 7450 5300
Wire Wire Line
	7150 6200 7300 6200
Wire Wire Line
	7300 6200 7300 5400
Wire Wire Line
	7300 5400 7450 5400
$Comp
L Diode:1N4148 D49
U 1 1 60FF65EE
P 8400 3750
F 0 "D49" H 8400 3966 50  0000 C CNN
F 1 "1N4148" H 8400 3875 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8400 3575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8400 3750 50  0001 C CNN
	1    8400 3750
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D50
U 1 1 60FF65F4
P 8400 4100
F 0 "D50" H 8400 4316 50  0000 C CNN
F 1 "1N4148" H 8400 4225 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8400 3925 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8400 4100 50  0001 C CNN
	1    8400 4100
	1    0    0    -1  
$EndComp
Text GLabel 8000 3900 0    50   Input ~ 0
pm-in7
Wire Wire Line
	8250 3750 8250 3900
Wire Wire Line
	8250 3900 8000 3900
$Comp
L Diode:1N4148 D51
U 1 1 60FF65FD
P 8400 4450
F 0 "D51" H 8400 4666 50  0000 C CNN
F 1 "1N4148" H 8400 4575 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8400 4275 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8400 4450 50  0001 C CNN
	1    8400 4450
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D52
U 1 1 60FF6603
P 8400 4800
F 0 "D52" H 8400 5016 50  0000 C CNN
F 1 "1N4148" H 8400 4925 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8400 4625 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8400 4800 50  0001 C CNN
	1    8400 4800
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D53
U 1 1 60FF6609
P 8400 5150
F 0 "D53" H 8400 5366 50  0000 C CNN
F 1 "1N4148" H 8400 5275 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8400 4975 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8400 5150 50  0001 C CNN
	1    8400 5150
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D54
U 1 1 60FF660F
P 8400 5500
F 0 "D54" H 8400 5716 50  0000 C CNN
F 1 "1N4148" H 8400 5625 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8400 5325 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8400 5500 50  0001 C CNN
	1    8400 5500
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D55
U 1 1 60FF6615
P 8400 5850
F 0 "D55" H 8400 6066 50  0000 C CNN
F 1 "1N4148" H 8400 5975 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8400 5675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8400 5850 50  0001 C CNN
	1    8400 5850
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D56
U 1 1 60FF661B
P 8400 6200
F 0 "D56" H 8400 6416 50  0000 C CNN
F 1 "1N4148" H 8400 6325 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8400 6025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8400 6200 50  0001 C CNN
	1    8400 6200
	1    0    0    -1  
$EndComp
Connection ~ 8250 4800
Wire Wire Line
	8250 3900 8250 4100
Connection ~ 8250 3900
Connection ~ 8250 4100
Wire Wire Line
	8250 4100 8250 4450
Connection ~ 8250 4450
Connection ~ 8250 5150
Wire Wire Line
	8250 5150 8250 5500
Connection ~ 8250 5500
Wire Wire Line
	8250 5500 8250 5850
Connection ~ 8250 5850
Wire Wire Line
	8250 5850 8250 6200
$Comp
L Connector_Generic:Conn_01x08 J8
U 1 1 60FF662D
P 9050 5000
F 0 "J8" H 9130 4992 50  0000 L CNN
F 1 "fromPegsG" H 9130 4901 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 9050 5000 50  0001 C CNN
F 3 "~" H 9050 5000 50  0001 C CNN
	1    9050 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 4800 8250 5150
Wire Wire Line
	8250 4450 8250 4800
Wire Wire Line
	8550 5150 8550 5100
Wire Wire Line
	8550 5100 8850 5100
Wire Wire Line
	8550 4800 8550 5000
Wire Wire Line
	8550 5000 8850 5000
Wire Wire Line
	8550 4450 8600 4450
Wire Wire Line
	8600 4450 8600 4900
Wire Wire Line
	8600 4900 8850 4900
Wire Wire Line
	8550 4100 8650 4100
Wire Wire Line
	8650 4100 8650 4800
Wire Wire Line
	8650 4800 8850 4800
Wire Wire Line
	8550 3750 8700 3750
Wire Wire Line
	8700 3750 8700 4700
Wire Wire Line
	8700 4700 8850 4700
Wire Wire Line
	8550 5500 8600 5500
Wire Wire Line
	8600 5500 8600 5200
Wire Wire Line
	8600 5200 8850 5200
Wire Wire Line
	8550 5850 8650 5850
Wire Wire Line
	8650 5850 8650 5300
Wire Wire Line
	8650 5300 8850 5300
Wire Wire Line
	8550 6200 8700 6200
Wire Wire Line
	8700 6200 8700 5400
Wire Wire Line
	8700 5400 8850 5400
$Comp
L Diode:1N4148 D57
U 1 1 60FF664B
P 9800 3750
F 0 "D57" H 9800 3966 50  0000 C CNN
F 1 "1N4148" H 9800 3875 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9800 3575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9800 3750 50  0001 C CNN
	1    9800 3750
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D58
U 1 1 60FF6651
P 9800 4100
F 0 "D58" H 9800 4316 50  0000 C CNN
F 1 "1N4148" H 9800 4225 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9800 3925 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9800 4100 50  0001 C CNN
	1    9800 4100
	1    0    0    -1  
$EndComp
Text GLabel 9400 3900 0    50   Input ~ 0
pm-in8
Wire Wire Line
	9650 3750 9650 3900
Wire Wire Line
	9650 3900 9400 3900
$Comp
L Diode:1N4148 D59
U 1 1 60FF665A
P 9800 4450
F 0 "D59" H 9800 4666 50  0000 C CNN
F 1 "1N4148" H 9800 4575 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9800 4275 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9800 4450 50  0001 C CNN
	1    9800 4450
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D60
U 1 1 60FF6660
P 9800 4800
F 0 "D60" H 9800 5016 50  0000 C CNN
F 1 "1N4148" H 9800 4925 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9800 4625 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9800 4800 50  0001 C CNN
	1    9800 4800
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D61
U 1 1 60FF6666
P 9800 5150
F 0 "D61" H 9800 5366 50  0000 C CNN
F 1 "1N4148" H 9800 5275 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9800 4975 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9800 5150 50  0001 C CNN
	1    9800 5150
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D62
U 1 1 60FF666C
P 9800 5500
F 0 "D62" H 9800 5716 50  0000 C CNN
F 1 "1N4148" H 9800 5625 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9800 5325 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9800 5500 50  0001 C CNN
	1    9800 5500
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D63
U 1 1 60FF6672
P 9800 5850
F 0 "D63" H 9800 6066 50  0000 C CNN
F 1 "1N4148" H 9800 5975 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9800 5675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9800 5850 50  0001 C CNN
	1    9800 5850
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D64
U 1 1 60FF6678
P 9800 6200
F 0 "D64" H 9800 6416 50  0000 C CNN
F 1 "1N4148" H 9800 6325 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9800 6025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9800 6200 50  0001 C CNN
	1    9800 6200
	1    0    0    -1  
$EndComp
Connection ~ 9650 4800
Wire Wire Line
	9650 3900 9650 4100
Connection ~ 9650 3900
Connection ~ 9650 4100
Wire Wire Line
	9650 4100 9650 4450
Connection ~ 9650 4450
Connection ~ 9650 5150
Wire Wire Line
	9650 5150 9650 5500
Connection ~ 9650 5500
Wire Wire Line
	9650 5500 9650 5850
Connection ~ 9650 5850
Wire Wire Line
	9650 5850 9650 6200
$Comp
L Connector_Generic:Conn_01x08 J9
U 1 1 60FF668A
P 10450 5000
F 0 "J9" H 10530 4992 50  0000 L CNN
F 1 "fromPegsH" H 10530 4901 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 10450 5000 50  0001 C CNN
F 3 "~" H 10450 5000 50  0001 C CNN
	1    10450 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 4800 9650 5150
Wire Wire Line
	9650 4450 9650 4800
Wire Wire Line
	9950 5150 9950 5100
Wire Wire Line
	9950 5100 10250 5100
Wire Wire Line
	9950 4800 9950 5000
Wire Wire Line
	9950 5000 10250 5000
Wire Wire Line
	9950 4450 10000 4450
Wire Wire Line
	10000 4450 10000 4900
Wire Wire Line
	10000 4900 10250 4900
Wire Wire Line
	9950 4100 10050 4100
Wire Wire Line
	10050 4100 10050 4800
Wire Wire Line
	10050 4800 10250 4800
Wire Wire Line
	9950 3750 10100 3750
Wire Wire Line
	10100 3750 10100 4700
Wire Wire Line
	10100 4700 10250 4700
Wire Wire Line
	9950 5500 10000 5500
Wire Wire Line
	10000 5500 10000 5200
Wire Wire Line
	10000 5200 10250 5200
Wire Wire Line
	9950 5850 10050 5850
Wire Wire Line
	10050 5850 10050 5300
Wire Wire Line
	10050 5300 10250 5300
Wire Wire Line
	9950 6200 10100 6200
Wire Wire Line
	10100 6200 10100 5400
Wire Wire Line
	10100 5400 10250 5400
Text GLabel 2550 6600 2    50   Input ~ 0
pm-out8
$Comp
L Connector_Generic:Conn_01x08 J10
U 1 1 6112093B
P 4250 2600
F 0 "J10" H 4168 3117 50  0000 C CNN
F 1 "mInJA" H 4168 3026 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 4250 2600 50  0001 C CNN
F 3 "~" H 4250 2600 50  0001 C CNN
	1    4250 2600
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J11
U 1 1 611312B7
P 3850 3550
F 0 "J11" H 3768 2925 50  0000 C CNN
F 1 "mInJB" H 3768 3016 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 3850 3550 50  0001 C CNN
F 3 "~" H 3850 3550 50  0001 C CNN
	1    3850 3550
	1    0    0    1   
$EndComp
$Comp
L Device_Audio_Electrosmith_Daisy_Seed:Device_Audio_Electrosmith_Daisy_Seed_Rev4 A1
U 1 1 60F2087B
P 2350 3550
F 0 "A1" H 2350 5015 50  0000 C CNN
F 1 "Daisy" H 2350 4924 50  0000 C CNN
F 2 "JDS-v1:Device_Audio_Electrosmith_Daisy_Seed" H 2350 2200 50  0001 C CNN
F 3 "https://github.com/electro-smith/DaisyWiki/wiki" H 2750 2350 50  0001 C CNN
	1    2350 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2950 3350 3150
Wire Wire Line
	3350 2850 3500 2850
Wire Wire Line
	3500 2850 3500 3250
Wire Wire Line
	3350 3250 3450 3250
Wire Wire Line
	3450 3250 3450 3450
Wire Wire Line
	3350 3650 3500 3650
Wire Wire Line
	3500 3650 3500 3850
Wire Wire Line
	3350 3950 3550 3950
Wire Wire Line
	3350 3150 3650 3150
Wire Wire Line
	3500 3250 3650 3250
Wire Wire Line
	3350 3350 3650 3350
Wire Wire Line
	3450 3450 3650 3450
Wire Wire Line
	3500 3850 3650 3850
Wire Wire Line
	3550 3950 3550 3550
Wire Wire Line
	3550 3550 3650 3550
Text GLabel 3350 4350 2    50   Input ~ 0
pm-clock
Wire Wire Line
	3350 3750 3650 3750
Wire Wire Line
	3350 3850 3400 3850
Wire Wire Line
	3400 3850 3400 3700
Wire Wire Line
	3400 3700 3650 3700
Wire Wire Line
	3650 3700 3650 3650
Text GLabel 3350 4650 2    50   Input ~ 0
pm-serial
Text GLabel 3350 4250 2    50   Input ~ 0
pm-enable
$Comp
L Connector_Generic:Conn_01x06 J12
U 1 1 6147F77D
P 4850 6400
F 0 "J12" H 4930 6392 50  0000 L CNN
F 1 "Out" H 4930 6301 50  0000 L CNN
F 2 "NateTemp:StereoJackTRS3" H 4850 6400 50  0001 C CNN
F 3 "~" H 4850 6400 50  0001 C CNN
	1    4850 6400
	1    0    0    -1  
$EndComp
Text GLabel 3500 6700 0    50   Input ~ 0
toAmpL
Text GLabel 3500 6250 0    50   Input ~ 0
toAmpR
$Comp
L power:+5V #PWR0106
U 1 1 60FB4624
P 1350 2350
F 0 "#PWR0106" H 1350 2200 50  0001 C CNN
F 1 "+5V" V 1365 2478 50  0000 L CNN
F 2 "" H 1350 2350 50  0001 C CNN
F 3 "" H 1350 2350 50  0001 C CNN
	1    1350 2350
	0    -1   -1   0   
$EndComp
$Comp
L Regulator_Linear:LM7805_TO220 U2
U 1 1 60FD8860
P 2500 1150
F 0 "U2" H 2500 1392 50  0000 C CNN
F 1 "LM7805_TO220" H 2500 1301 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2500 1375 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM7805.pdf" H 2500 1100 50  0001 C CNN
	1    2500 1150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack_Switch J13
U 1 1 60FD89BF
P 1400 1250
F 0 "J13" H 1455 1567 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 1455 1476 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 1450 1210 50  0001 C CNN
F 3 "~" H 1450 1210 50  0001 C CNN
	1    1400 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1350 2150 1450
Wire Wire Line
	2150 1450 2500 1450
$Comp
L power:GND #PWR0107
U 1 1 60FFD732
P 2500 1450
F 0 "#PWR0107" H 2500 1200 50  0001 C CNN
F 1 "GND" H 2505 1277 50  0000 C CNN
F 2 "" H 2500 1450 50  0001 C CNN
F 3 "" H 2500 1450 50  0001 C CNN
	1    2500 1450
	1    0    0    -1  
$EndComp
Connection ~ 2500 1450
$Comp
L power:+5V #PWR0109
U 1 1 60FFD802
P 2800 1150
F 0 "#PWR0109" H 2800 1000 50  0001 C CNN
F 1 "+5V" V 2815 1278 50  0000 L CNN
F 2 "" H 2800 1150 50  0001 C CNN
F 3 "" H 2800 1150 50  0001 C CNN
	1    2800 1150
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 610116C4
P 2000 1150
F 0 "SW1" H 2000 1385 50  0000 C CNN
F 1 "POW-SW" H 2000 1294 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2000 1150 50  0001 C CNN
F 3 "" H 2000 1150 50  0001 C CNN
	1    2000 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1150 1800 1150
Wire Wire Line
	1700 1350 2150 1350
$Comp
L power:+3.3V #PWR0110
U 1 1 6105CDE2
P 1350 2450
F 0 "#PWR0110" H 1350 2300 50  0001 C CNN
F 1 "+3.3V" V 1365 2578 50  0000 L CNN
F 2 "" H 1350 2450 50  0001 C CNN
F 3 "" H 1350 2450 50  0001 C CNN
	1    1350 2450
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C1
U 1 1 6105D5C8
P 4050 6700
F 0 "C1" V 3795 6700 50  0000 C CNN
F 1 "10uF" V 3886 6700 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 4088 6550 50  0001 C CNN
F 3 "~" H 4050 6700 50  0001 C CNN
	1    4050 6700
	0    -1   1    0   
$EndComp
$Comp
L Device:CP C2
U 1 1 6105D92B
P 4050 6250
F 0 "C2" V 4305 6250 50  0000 C CNN
F 1 "10uF" V 4214 6250 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 4088 6100 50  0001 C CNN
F 3 "~" H 4050 6250 50  0001 C CNN
	1    4050 6250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 61083C63
P 4650 6200
F 0 "#PWR0111" H 4650 5950 50  0001 C CNN
F 1 "GND" H 4655 6027 50  0000 C CNN
F 2 "" H 4650 6200 50  0001 C CNN
F 3 "" H 4650 6200 50  0001 C CNN
	1    4650 6200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 610AAEC7
P 3750 6250
F 0 "R1" V 3543 6250 50  0000 C CNN
F 1 "100" V 3634 6250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3680 6250 50  0001 C CNN
F 3 "~" H 3750 6250 50  0001 C CNN
	1    3750 6250
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 610AB11D
P 3750 6700
F 0 "R2" V 3957 6700 50  0000 C CNN
F 1 "100" V 3866 6700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3680 6700 50  0001 C CNN
F 3 "~" H 3750 6700 50  0001 C CNN
	1    3750 6700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3500 6700 3600 6700
Wire Wire Line
	3500 6250 3600 6250
Wire Wire Line
	4200 6700 4200 6600
Wire Wire Line
	4200 6600 4650 6600
Wire Wire Line
	4200 6250 4200 6400
Wire Wire Line
	4200 6400 4650 6400
$EndSCHEMATC
