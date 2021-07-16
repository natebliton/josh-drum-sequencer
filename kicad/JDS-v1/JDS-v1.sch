EESchema Schematic File Version 4
EELAYER 30 0
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
pm-out0
Text GLabel 2550 6000 2    50   Input ~ 0
pm-out1
Text GLabel 2550 6100 2    50   Input ~ 0
pm-out2
Text GLabel 2550 6200 2    50   Input ~ 0
pm-out3
Text GLabel 2550 6300 2    50   Input ~ 0
pm-out4
Text GLabel 2550 6400 2    50   Input ~ 0
pm-out5
Text GLabel 2550 6500 2    50   Input ~ 0
pm-out6
Text GLabel 2550 6600 2    50   Input ~ 0
pm-out7
$Comp
L power:GND #PWR0105
U 1 1 60F414D0
P 2350 4000
F 0 "#PWR0105" H 2350 3750 50  0001 C CNN
F 1 "GND" H 2355 3827 50  0000 C CNN
F 2 "" H 2350 4000 50  0001 C CNN
F 3 "" H 2350 4000 50  0001 C CNN
	1    2350 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0106
U 1 1 60F41A33
P 1350 1300
F 0 "#PWR0106" H 1350 1150 50  0001 C CNN
F 1 "+3.3V" V 1365 1428 50  0000 L CNN
F 2 "" H 1350 1300 50  0001 C CNN
F 3 "" H 1350 1300 50  0001 C CNN
	1    1350 1300
	0    -1   -1   0   
$EndComp
Text GLabel 1350 2000 0    50   Input ~ 0
toAmpL
Text GLabel 1350 2100 0    50   Input ~ 0
toAmpR
Text GLabel 1750 5900 0    50   Input ~ 0
pm-serial
Text GLabel 1750 6100 0    50   Input ~ 0
pm-clock
Text GLabel 1750 6400 0    50   Input ~ 0
pm-enable
$Comp
L Device_Audio_Electrosmith_Daisy_Seed:Device_Audio_Electrosmith_Daisy_Seed_Rev4 A1
U 1 1 60F2087B
P 2350 2500
F 0 "A1" H 2350 3965 50  0000 C CNN
F 1 "Daisy" H 2350 3874 50  0000 C CNN
F 2 "JDS-v1:Device_Audio_Electrosmith_Daisy_Seed" H 2350 1150 50  0001 C CNN
F 3 "https://github.com/electro-smith/DaisyWiki/wiki" H 2750 1300 50  0001 C CNN
	1    2350 2500
	1    0    0    -1  
$EndComp
Text GLabel 3350 3300 2    50   Input ~ 0
pm-clock
Text GLabel 3350 3600 2    50   Input ~ 0
pm-serial
Text GLabel 3350 3200 2    50   Input ~ 0
pm-enable
Text GLabel 3350 2600 2    50   Input ~ 0
pm-in0
Text GLabel 3350 2700 2    50   Input ~ 0
pm-in1
Text GLabel 3350 2800 2    50   Input ~ 0
pm-in2
Text GLabel 3350 2900 2    50   Input ~ 0
pm-in3
Text GLabel 3350 2200 2    50   Input ~ 0
pm-in4
Text GLabel 3350 2300 2    50   Input ~ 0
pm-in5
Text GLabel 3350 1800 2    50   Input ~ 0
pm-in6
Text GLabel 3350 1900 2    50   Input ~ 0
pm-in7
Text GLabel 1350 2300 0    50   Input ~ 0
pot1
$Comp
L Switch:SW_SPST SW1
U 1 1 60F4F94E
P 5700 1900
F 0 "SW1" H 5700 2135 50  0000 C CNN
F 1 "SW_SPST" H 5700 2044 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5700 1900 50  0001 C CNN
F 3 "~" H 5700 1900 50  0001 C CNN
	1    5700 1900
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D1
U 1 1 60F5147C
P 5350 1900
F 0 "D1" H 5350 2116 50  0000 C CNN
F 1 "1N4148" H 5350 2025 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5350 1725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5350 1900 50  0001 C CNN
	1    5350 1900
	1    0    0    -1  
$EndComp
Text GLabel 8050 1900 1    50   Input ~ 0
pm-out8
Text GLabel 5900 1550 1    50   Input ~ 0
pm-out1
Text GLabel 7650 1450 1    50   Input ~ 0
pm-out2
Text GLabel 7750 1450 1    50   Input ~ 0
pm-out3
Text GLabel 7850 1450 1    50   Input ~ 0
pm-out4
Text GLabel 7950 1450 1    50   Input ~ 0
pm-out5
Text GLabel 8050 1450 1    50   Input ~ 0
pm-out6
Text GLabel 8150 1450 1    50   Input ~ 0
pm-out7
$Comp
L Switch:SW_SPST SW2
U 1 1 60F57687
P 5700 2400
F 0 "SW2" H 5700 2635 50  0000 C CNN
F 1 "SW_SPST" H 5700 2544 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5700 2400 50  0001 C CNN
F 3 "~" H 5700 2400 50  0001 C CNN
	1    5700 2400
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D2
U 1 1 60F5768D
P 5350 2400
F 0 "D2" H 5350 2616 50  0000 C CNN
F 1 "1N4148" H 5350 2525 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5350 2225 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5350 2400 50  0001 C CNN
	1    5350 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1550 5900 1900
Text GLabel 4950 2050 0    50   Input ~ 0
pm-in1
Wire Wire Line
	5200 1900 5200 2050
Wire Wire Line
	5200 2050 4950 2050
$Comp
L Switch:SW_SPST SW3
U 1 1 60F5CDAF
P 5700 2900
F 0 "SW3" H 5700 3135 50  0000 C CNN
F 1 "SW_SPST" H 5700 3044 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5700 2900 50  0001 C CNN
F 3 "~" H 5700 2900 50  0001 C CNN
	1    5700 2900
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D3
U 1 1 60F5CDB5
P 5350 2900
F 0 "D3" H 5350 3116 50  0000 C CNN
F 1 "1N4148" H 5350 3025 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5350 2725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5350 2900 50  0001 C CNN
	1    5350 2900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW4
U 1 1 60F5CDBB
P 5700 3400
F 0 "SW4" H 5700 3635 50  0000 C CNN
F 1 "SW_SPST" H 5700 3544 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5700 3400 50  0001 C CNN
F 3 "~" H 5700 3400 50  0001 C CNN
	1    5700 3400
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D4
U 1 1 60F5CDC1
P 5350 3400
F 0 "D4" H 5350 3616 50  0000 C CNN
F 1 "1N4148" H 5350 3525 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5350 3225 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5350 3400 50  0001 C CNN
	1    5350 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1900 5900 2400
Connection ~ 5900 1900
Connection ~ 5900 2400
Wire Wire Line
	5900 2400 5900 2900
Connection ~ 5900 2900
Wire Wire Line
	5900 2900 5900 3400
$Comp
L Switch:SW_SPST SW5
U 1 1 60F6AAF6
P 5700 3850
F 0 "SW5" H 5700 4085 50  0000 C CNN
F 1 "SW_SPST" H 5700 3994 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5700 3850 50  0001 C CNN
F 3 "~" H 5700 3850 50  0001 C CNN
	1    5700 3850
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D5
U 1 1 60F6AAFC
P 5350 3850
F 0 "D5" H 5350 4066 50  0000 C CNN
F 1 "1N4148" H 5350 3975 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5350 3675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5350 3850 50  0001 C CNN
	1    5350 3850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW6
U 1 1 60F6AB02
P 5700 4350
F 0 "SW6" H 5700 4585 50  0000 C CNN
F 1 "SW_SPST" H 5700 4494 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5700 4350 50  0001 C CNN
F 3 "~" H 5700 4350 50  0001 C CNN
	1    5700 4350
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D6
U 1 1 60F6AB08
P 5350 4350
F 0 "D6" H 5350 4566 50  0000 C CNN
F 1 "1N4148" H 5350 4475 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5350 4175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5350 4350 50  0001 C CNN
	1    5350 4350
	1    0    0    -1  
$EndComp
Text GLabel 4950 4000 0    50   Input ~ 0
pm-in5
Wire Wire Line
	5200 3850 5200 4000
Wire Wire Line
	5200 4000 4950 4000
$Comp
L Switch:SW_SPST SW7
U 1 1 60F6AB12
P 5700 4850
F 0 "SW7" H 5700 5085 50  0000 C CNN
F 1 "SW_SPST" H 5700 4994 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5700 4850 50  0001 C CNN
F 3 "~" H 5700 4850 50  0001 C CNN
	1    5700 4850
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D7
U 1 1 60F6AB18
P 5350 4850
F 0 "D7" H 5350 5066 50  0000 C CNN
F 1 "1N4148" H 5350 4975 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5350 4675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5350 4850 50  0001 C CNN
	1    5350 4850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW8
U 1 1 60F6AB1E
P 5700 5350
F 0 "SW8" H 5700 5585 50  0000 C CNN
F 1 "SW_SPST" H 5700 5494 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5700 5350 50  0001 C CNN
F 3 "~" H 5700 5350 50  0001 C CNN
	1    5700 5350
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D8
U 1 1 60F6AB24
P 5350 5350
F 0 "D8" H 5350 5566 50  0000 C CNN
F 1 "1N4148" H 5350 5475 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5350 5175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5350 5350 50  0001 C CNN
	1    5350 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3850 5900 4350
Connection ~ 5900 3850
Connection ~ 5900 4350
Wire Wire Line
	5900 4350 5900 4850
Connection ~ 5900 4850
Wire Wire Line
	5900 4850 5900 5350
Text GLabel 4950 2550 0    50   Input ~ 0
pm-in2
Wire Wire Line
	5200 2400 5200 2550
Wire Wire Line
	5200 2550 4950 2550
Text GLabel 4950 3050 0    50   Input ~ 0
pm-in3
Wire Wire Line
	5200 2900 5200 3050
Wire Wire Line
	5200 3050 4950 3050
Text GLabel 4950 3550 0    50   Input ~ 0
pm-in4
Wire Wire Line
	5200 3400 5200 3550
Wire Wire Line
	5200 3550 4950 3550
Text GLabel 4950 4500 0    50   Input ~ 0
pm-in6
Wire Wire Line
	5200 4350 5200 4500
Wire Wire Line
	5200 4500 4950 4500
Text GLabel 4950 5000 0    50   Input ~ 0
pm-in7
Wire Wire Line
	5200 4850 5200 5000
Wire Wire Line
	5200 5000 4950 5000
Text GLabel 4950 5500 0    50   Input ~ 0
pm-in8
Wire Wire Line
	5200 5350 5200 5500
Wire Wire Line
	5200 5500 4950 5500
$Comp
L Switch:SW_SPST SW?
U 1 1 60F86FCC
P 6550 1900
F 0 "SW?" H 6550 2135 50  0000 C CNN
F 1 "SW_SPST" H 6550 2044 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6550 1900 50  0001 C CNN
F 3 "~" H 6550 1900 50  0001 C CNN
	1    6550 1900
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 60F86FD2
P 6200 1900
F 0 "D?" H 6200 2116 50  0000 C CNN
F 1 "1N4148" H 6200 2025 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6200 1725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6200 1900 50  0001 C CNN
	1    6200 1900
	1    0    0    -1  
$EndComp
Text GLabel 6750 1550 1    50   Input ~ 0
pm-out2
$Comp
L Switch:SW_SPST SW?
U 1 1 60F86FD9
P 6550 2400
F 0 "SW?" H 6550 2635 50  0000 C CNN
F 1 "SW_SPST" H 6550 2544 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6550 2400 50  0001 C CNN
F 3 "~" H 6550 2400 50  0001 C CNN
	1    6550 2400
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 60F86FDF
P 6200 2400
F 0 "D?" H 6200 2616 50  0000 C CNN
F 1 "1N4148" H 6200 2525 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6200 2225 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6200 2400 50  0001 C CNN
	1    6200 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1550 6750 1900
Wire Wire Line
	6050 1900 6050 2050
$Comp
L Switch:SW_SPST SW?
U 1 1 60F86FE8
P 6550 2900
F 0 "SW?" H 6550 3135 50  0000 C CNN
F 1 "SW_SPST" H 6550 3044 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6550 2900 50  0001 C CNN
F 3 "~" H 6550 2900 50  0001 C CNN
	1    6550 2900
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 60F86FEE
P 6200 2900
F 0 "D?" H 6200 3116 50  0000 C CNN
F 1 "1N4148" H 6200 3025 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6200 2725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6200 2900 50  0001 C CNN
	1    6200 2900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 60F86FF4
P 6550 3400
F 0 "SW?" H 6550 3635 50  0000 C CNN
F 1 "SW_SPST" H 6550 3544 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6550 3400 50  0001 C CNN
F 3 "~" H 6550 3400 50  0001 C CNN
	1    6550 3400
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 60F86FFA
P 6200 3400
F 0 "D?" H 6200 3616 50  0000 C CNN
F 1 "1N4148" H 6200 3525 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6200 3225 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6200 3400 50  0001 C CNN
	1    6200 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1900 6750 2400
Connection ~ 6750 1900
Connection ~ 6750 2400
Wire Wire Line
	6750 2400 6750 2900
Connection ~ 6750 2900
Wire Wire Line
	6750 2900 6750 3400
$Comp
L Switch:SW_SPST SW?
U 1 1 60F87006
P 6550 3850
F 0 "SW?" H 6550 4085 50  0000 C CNN
F 1 "SW_SPST" H 6550 3994 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6550 3850 50  0001 C CNN
F 3 "~" H 6550 3850 50  0001 C CNN
	1    6550 3850
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 60F8700C
P 6200 3850
F 0 "D?" H 6200 4066 50  0000 C CNN
F 1 "1N4148" H 6200 3975 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6200 3675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6200 3850 50  0001 C CNN
	1    6200 3850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 60F87012
P 6550 4350
F 0 "SW?" H 6550 4585 50  0000 C CNN
F 1 "SW_SPST" H 6550 4494 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6550 4350 50  0001 C CNN
F 3 "~" H 6550 4350 50  0001 C CNN
	1    6550 4350
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 60F87018
P 6200 4350
F 0 "D?" H 6200 4566 50  0000 C CNN
F 1 "1N4148" H 6200 4475 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6200 4175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6200 4350 50  0001 C CNN
	1    6200 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3500 6750 3850
Wire Wire Line
	6050 3850 6050 4000
$Comp
L Switch:SW_SPST SW?
U 1 1 60F87021
P 6550 4850
F 0 "SW?" H 6550 5085 50  0000 C CNN
F 1 "SW_SPST" H 6550 4994 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6550 4850 50  0001 C CNN
F 3 "~" H 6550 4850 50  0001 C CNN
	1    6550 4850
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 60F87027
P 6200 4850
F 0 "D?" H 6200 5066 50  0000 C CNN
F 1 "1N4148" H 6200 4975 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6200 4675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6200 4850 50  0001 C CNN
	1    6200 4850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 60F8702D
P 6550 5350
F 0 "SW?" H 6550 5585 50  0000 C CNN
F 1 "SW_SPST" H 6550 5494 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6550 5350 50  0001 C CNN
F 3 "~" H 6550 5350 50  0001 C CNN
	1    6550 5350
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 60F87033
P 6200 5350
F 0 "D?" H 6200 5566 50  0000 C CNN
F 1 "1N4148" H 6200 5475 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6200 5175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6200 5350 50  0001 C CNN
	1    6200 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3850 6750 4350
Connection ~ 6750 3850
Connection ~ 6750 4350
Wire Wire Line
	6750 4350 6750 4850
Connection ~ 6750 4850
Wire Wire Line
	6750 4850 6750 5350
Wire Wire Line
	6050 2400 6050 2550
Wire Wire Line
	6050 2900 6050 3050
Wire Wire Line
	6050 3400 6050 3550
Wire Wire Line
	6050 4350 6050 4500
Wire Wire Line
	6050 4850 6050 5000
Wire Wire Line
	6050 5000 5800 5000
Wire Wire Line
	6050 5350 6050 5500
Wire Wire Line
	5200 2050 6050 2050
Connection ~ 5200 2050
Wire Wire Line
	5200 2550 6050 2550
Connection ~ 5200 2550
Wire Wire Line
	5200 3050 6050 3050
Connection ~ 5200 3050
Wire Wire Line
	5200 3550 6050 3550
Connection ~ 5200 3550
Wire Wire Line
	5900 3400 5900 3850
Connection ~ 5900 3400
Wire Wire Line
	5200 4000 6050 4000
Connection ~ 5200 4000
Wire Wire Line
	5200 4500 6050 4500
Connection ~ 5200 4500
Wire Wire Line
	5200 5500 6050 5500
Connection ~ 5200 5500
$EndSCHEMATC
