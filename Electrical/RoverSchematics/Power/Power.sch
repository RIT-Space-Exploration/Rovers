EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 8
Title "MINIROVER POWER DIAGRAM"
Date "2018-10-21"
Rev "B2"
Comp "RIT SPEX"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2650 2750 1250 600 
U 5BCF739B
F0 " BATTERY" 59
F1 "BATTERY.sch" 59
F2 "15V-" I R 3900 3250 59 
F3 "15V+" I R 3900 3150 59 
F4 "GND" I R 3900 2800 59 
F5 "CELLS1-4" I R 3900 2900 59 
$EndSheet
$Sheet
S 4200 2350 500  250 
U 5BCF74BF
F0 "ALARM" 59
F1 "ALARM.sch" 59
F2 "GND" I L 4200 2400 59 
F3 "CELLS" I L 4200 2550 59 
$EndSheet
Wire Wire Line
	3900 2800 4050 2800
Wire Wire Line
	4050 2800 4050 2400
Wire Wire Line
	4050 2400 4200 2400
Wire Wire Line
	4200 2550 4100 2550
Wire Wire Line
	4100 2550 4100 2900
Wire Wire Line
	4100 2900 3900 2900
$Comp
L Switch:SW_SPST MAINSW
U 1 1 5BD05F5D
P 4350 3150
F 0 "MAINSW" H 4350 3293 50  0000 C CNN
F 1 "SW_SPST" H 4350 3294 50  0001 C CNN
F 2 "" H 4350 3150 50  0001 C CNN
F 3 "" H 4350 3150 50  0001 C CNN
	1    4350 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3150 4150 3150
Wire Wire Line
	4850 3150 5000 3150
Wire Wire Line
	4350 3300 4350 3250
Wire Wire Line
	4350 3250 3900 3250
$Comp
L Device:Polyfuse F1
U 1 1 5BD061FD
P 4700 3150
F 0 "F1" V 4925 3150 50  0000 C CNN
F 1 "60A" V 4834 3150 50  0000 C CNN
F 2 "" H 4750 2950 50  0001 L CNN
F 3 "~" H 4700 3150 50  0001 C CNN
	1    4700 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 3300 5000 3300
$Sheet
S 6150 2500 650  400 
U 5BD06895
F0 "5VBUCK" 59
F1 "5VBUCK.sch" 59
F2 "12V+" I L 6150 2550 59 
F3 "12V-" I L 6150 2850 59 
F4 "5V+" I R 6800 2600 59 
F5 "5V-" I R 6800 2800 59 
$EndSheet
$Sheet
S 5000 3100 500  250 
U 5BD05FEE
F0 "METER" 59
F1 "METER.sch" 59
F2 "V+" I L 5000 3150 59 
F3 "V-" I L 5000 3300 59 
F4 "V+" I R 5500 3150 59 
F5 "V-" I R 5500 3300 59 
$EndSheet
Wire Wire Line
	5500 3150 5700 3150
Wire Wire Line
	5500 3300 5800 3300
Wire Wire Line
	5700 3150 5700 2550
Wire Wire Line
	5800 2850 5800 3300
$Sheet
S 6300 4250 900  450 
U 5BD097E9
F0 "MCONTROL" 59
F1 "MCONTROL.sch" 59
F2 "V+" I L 6300 4350 59 
F3 "V-" I L 6300 4600 59 
F4 "VOUT+" I R 7200 4350 59 
F5 "VOUT+" I R 7200 4600 59 
$EndSheet
Wire Wire Line
	5800 3300 5800 4600
Connection ~ 5800 3300
Wire Wire Line
	5700 3150 5700 4350
Connection ~ 5700 3150
$Sheet
S 7650 4250 850  450 
U 5BD0A19E
F0 "MOTOR" 59
F1 "MOTOR.sch" 59
F2 "V+" I L 7650 4350 59 
F3 "V-" I L 7650 4600 59 
$EndSheet
Wire Wire Line
	7200 4350 7650 4350
Wire Wire Line
	7200 4600 7650 4600
$Comp
L Device:Fuse F2
U 1 1 5BD0A919
P 5950 2550
F 0 "F2" V 5725 2550 50  0000 C CNN
F 1 "3A" V 5816 2550 50  0000 C CNN
F 2 "" H 6000 2350 50  0001 L CNN
F 3 "~" H 5950 2550 50  0001 C CNN
	1    5950 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 2550 5800 2550
Wire Wire Line
	6100 2550 6150 2550
Wire Wire Line
	5800 2850 6150 2850
Wire Notes Line
	8600 3900 8600 4900
Wire Notes Line
	5600 4900 5600 3900
Text Notes 6450 4050 0    79   ~ 0
MOTOR + CONTROL (x6)
Wire Notes Line
	5600 3900 8600 3900
Wire Notes Line
	5600 4900 8600 4900
$Comp
L Device:Fuse F3
U 1 1 5BD0C8F3
P 6050 4350
F 0 "F3" V 5825 4350 50  0000 C CNN
F 1 "10A" V 5916 4350 50  0000 C CNN
F 2 "" H 6100 4150 50  0001 L CNN
F 3 "~" H 6050 4350 50  0001 C CNN
	1    6050 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 4350 6300 4350
Wire Wire Line
	5900 4350 5700 4350
Wire Wire Line
	5800 4600 6300 4600
$Sheet
S 7300 2500 1000 700 
U 5BD0F6A9
F0 "RASPI" 79
F1 "RASPI.sch" 79
F2 "5V+" I L 7300 2600 59 
F3 "5V-" I L 7300 2800 59 
$EndSheet
Wire Wire Line
	7300 2600 6800 2600
Wire Wire Line
	7300 2800 6800 2800
$EndSCHEMATC
