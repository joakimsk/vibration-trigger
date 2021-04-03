EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Vibration-triggered, time-delayed driver"
Date "2021-04-03"
Rev "1.0.0"
Comp "Skjefstad Engineering"
Comment1 "Author: Joakim Skjefstad (skjefstad.joakim@gmail.com)"
Comment2 "Load can be changed."
Comment3 "Resettable, will stay powered as long as vibration is sustained."
Comment4 "Triggered by vibration on piezo, turns on a load for 30 seconds."
$EndDescr
$Comp
L full_circuit-rescue:NE555-Timer-full_circuit-rescue U2
U 1 1 5EA6F7DB
P 6950 3800
F 0 "U2" H 7150 4300 50  0000 C CNN
F 1 "NE555" H 7150 4200 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6950 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne555.pdf" H 6950 3800 50  0001 C CNN
	1    6950 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT1
U 1 1 5EA70844
P 5650 1950
F 0 "BT1" V 5405 1950 50  0000 C CNN
F 1 "5v" V 5496 1950 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" V 5650 2010 50  0001 C CNN
F 3 "~" V 5650 2010 50  0001 C CNN
	1    5650 1950
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC548 Q3
U 1 1 5EA786BD
P 9400 3600
F 0 "Q3" H 9591 3646 50  0000 L CNN
F 1 "BC548" H 9591 3555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9600 3525 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 9400 3600 50  0001 L CNN
	1    9400 3600
	1    0    0    -1  
$EndComp
Text GLabel 5450 1950 0    50   Input ~ 0
GND
Text GLabel 5850 1950 2    50   Input ~ 0
VCC
Text GLabel 6950 5600 3    50   Output ~ 0
GND
Wire Wire Line
	7850 4000 7850 3800
$Comp
L Device:R R6
U 1 1 5EA7FCDD
P 7850 3250
F 0 "R6" H 7920 3296 50  0000 L CNN
F 1 "580k" H 7920 3205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 7780 3250 50  0001 C CNN
F 3 "~" H 7850 3250 50  0001 C CNN
	1    7850 3250
	1    0    0    -1  
$EndComp
Connection ~ 7850 4000
$Comp
L Device:C C1
U 1 1 5EA868EB
P 6300 3800
F 0 "C1" V 6048 3800 50  0000 C CNN
F 1 "0.01uF" V 6150 3800 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 6338 3650 50  0001 C CNN
F 3 "~" H 6300 3800 50  0001 C CNN
	1    6300 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5EA8E651
P 8900 3600
F 0 "R7" V 8693 3600 50  0000 C CNN
F 1 "820" V 8784 3600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 8830 3600 50  0001 C CNN
F 3 "~" H 8900 3600 50  0001 C CNN
	1    8900 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5EA93E33
P 9500 2850
F 0 "R8" H 9570 2896 50  0000 L CNN
F 1 "330" H 9570 2805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 9430 2850 50  0001 C CNN
F 3 "~" H 9500 2850 50  0001 C CNN
	1    9500 2850
	1    0    0    -1  
$EndComp
Connection ~ 6950 5450
Wire Wire Line
	6950 5450 6950 5600
$Comp
L Device:R R3
U 1 1 5EA9A08B
P 5600 3250
F 0 "R3" H 5400 3300 50  0000 L CNN
F 1 "180k" H 5350 3200 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 5530 3250 50  0001 C CNN
F 3 "~" H 5600 3250 50  0001 C CNN
	1    5600 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5EAA19EA
P 9500 3150
F 0 "D1" V 9539 3033 50  0000 R CNN
F 1 "LED" V 9448 3033 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 9500 3150 50  0001 C CNN
F 3 "~" H 9500 3150 50  0001 C CNN
	1    9500 3150
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:BC557 Q2
U 1 1 5EAA7B5A
P 7250 4450
F 0 "Q2" H 7441 4404 50  0000 L CNN
F 1 "BC557" H 7441 4495 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7450 4375 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 7250 4450 50  0001 L CNN
	1    7250 4450
	1    0    0    1   
$EndComp
Wire Wire Line
	9500 3300 9500 3400
Wire Wire Line
	9200 3600 9050 3600
Text GLabel 6150 3800 0    50   Input ~ 0
GND
$Comp
L Device:CP C2
U 1 1 5EACD213
P 7850 4850
F 0 "C2" H 7968 4896 50  0000 L CNN
F 1 "47uF" H 7968 4805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 7888 4700 50  0001 C CNN
F 3 "~" H 7850 4850 50  0001 C CNN
	1    7850 4850
	1    0    0    -1  
$EndComp
Text GLabel 9500 2700 1    50   Input ~ 0
VCC
Text GLabel 9500 3800 3    50   Output ~ 0
GND
Wire Wire Line
	7850 3400 7850 3800
Connection ~ 7850 3800
Wire Wire Line
	7850 3000 7850 3100
Wire Wire Line
	6950 3400 6950 3000
Connection ~ 6950 3000
Wire Wire Line
	6950 3000 7850 3000
Text GLabel 6950 2950 1    50   Input ~ 0
VCC
Wire Wire Line
	6950 2950 6950 3000
Wire Wire Line
	5800 3000 5800 4000
Wire Wire Line
	6950 3000 5800 3000
Wire Wire Line
	6450 4000 5800 4000
Wire Wire Line
	5600 3600 6450 3600
Wire Wire Line
	5800 3000 5600 3000
Wire Wire Line
	5600 3000 5600 3100
Connection ~ 5800 3000
Wire Wire Line
	5600 3400 5600 3600
Connection ~ 5600 3600
Wire Wire Line
	6950 5450 7350 5450
Connection ~ 7350 5450
Wire Wire Line
	7350 5450 7850 5450
$Comp
L Device:R R5
U 1 1 5EAF4D58
P 7350 5000
F 0 "R5" H 7420 5046 50  0000 L CNN
F 1 "260" H 7420 4955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 7280 5000 50  0001 C CNN
F 3 "~" H 7350 5000 50  0001 C CNN
	1    7350 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3600 5600 4450
$Comp
L Device:R R4
U 1 1 5EAF9C62
P 6700 4450
F 0 "R4" V 6493 4450 50  0000 C CNN
F 1 "4k7" V 6584 4450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 6630 4450 50  0001 C CNN
F 3 "~" H 6700 4450 50  0001 C CNN
	1    6700 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	6550 4450 5600 4450
Connection ~ 5600 4450
Wire Wire Line
	5600 4450 5600 4750
$Comp
L Device:R R2
U 1 1 5EAC7066
P 5150 4950
F 0 "R2" V 4943 4950 50  0000 C CNN
F 1 "820" V 5034 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 5080 4950 50  0001 C CNN
F 3 "~" H 5150 4950 50  0001 C CNN
	1    5150 4950
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC548 Q1
U 1 1 5EAEF0FF
P 5500 4950
F 0 "Q1" H 5691 4996 50  0000 L CNN
F 1 "BC548" H 5691 4905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5700 4875 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 5500 4950 50  0001 L CNN
	1    5500 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4400 4050 4700
Wire Wire Line
	7350 5150 7350 5450
Wire Wire Line
	7850 5000 7850 5450
Wire Wire Line
	6950 4200 6950 5450
Wire Wire Line
	6950 5450 5600 5450
Wire Wire Line
	4050 5450 4050 5200
Wire Wire Line
	5600 5150 5600 5450
$Comp
L Device:R_POT_TRIM RV1
U 1 1 5EB3790F
P 3450 5050
F 0 "RV1" H 3380 5096 50  0000 R CNN
F 1 "1M" H 3380 5005 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA6-H2,5_Horizontal" H 3450 5050 50  0001 C CNN
F 3 "~" H 3450 5050 50  0001 C CNN
	1    3450 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 5050 3800 5050
$Comp
L Device:C PZ1
U 1 1 5EB39984
P 2600 4600
F 0 "PZ1" H 2715 4646 50  0000 L CNN
F 1 "PIEZO" H 2715 4555 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 2638 4450 50  0001 C CNN
F 3 "~" H 2600 4600 50  0001 C CNN
	1    2600 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4400 3450 4400
Wire Wire Line
	2600 4400 2600 4450
Wire Wire Line
	2600 4750 2600 4850
Wire Wire Line
	2600 4850 3800 4850
$Comp
L Device:R R1
U 1 1 5EB3ECE0
P 2600 5150
F 0 "R1" H 2670 5196 50  0000 L CNN
F 1 "3.9M" H 2670 5105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 2530 5150 50  0001 C CNN
F 3 "~" H 2600 5150 50  0001 C CNN
	1    2600 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 5450 3450 5450
Wire Wire Line
	2600 5450 2600 5300
Wire Wire Line
	3450 5200 3450 5450
Connection ~ 3450 5450
Wire Wire Line
	3450 5450 2600 5450
Wire Wire Line
	3450 4900 3450 4400
Connection ~ 3450 4400
Wire Wire Line
	3450 4400 2600 4400
Wire Wire Line
	2600 4850 2600 5000
Connection ~ 2600 4850
Text GLabel 4050 4350 1    50   Input ~ 0
VCC
Text GLabel 4050 5500 3    50   Output ~ 0
GND
Wire Wire Line
	4050 5450 4050 5500
Connection ~ 4050 5450
Wire Wire Line
	4050 4400 4050 4350
Connection ~ 4050 4400
Wire Wire Line
	7350 4650 7350 4850
Wire Wire Line
	7850 4000 7850 4200
Wire Wire Line
	7450 4000 7850 4000
Wire Wire Line
	7450 3800 7850 3800
Wire Wire Line
	6850 4450 7050 4450
Wire Wire Line
	7350 4250 7350 4200
Wire Wire Line
	7350 4200 7850 4200
Connection ~ 7850 4200
Wire Wire Line
	7850 4200 7850 4700
Wire Wire Line
	7450 3600 8750 3600
Wire Notes Line
	2400 4000 2400 6000
Wire Notes Line
	4850 4000 2400 4000
Wire Notes Line
	2400 6000 8350 6000
Wire Notes Line
	8350 2300 8350 6000
Wire Notes Line
	4850 2300 4850 6000
Wire Notes Line
	10000 2300 10000 4200
Wire Notes Line
	10000 4200 8350 4200
Wire Notes Line
	4850 2300 10000 2300
Text Notes 3850 5950 2    50   ~ 0
Vibration Sensor
Text Notes 7250 5950 2    50   ~ 0
Resettable Monostable 555 Timer
Text Notes 9450 4150 2    50   ~ 0
Triggered Load
$Comp
L full_circuit-rescue:LM386-Joakim_Kicad-full_circuit-rescue U1
U 1 1 5EB93AD2
P 4050 4950
F 0 "U1" H 4150 5100 50  0000 L CNN
F 1 "LM386" H 4100 4800 50  0000 L CNN
F 2 "Package_SO:MSOP-8-1EP_3x3mm_P0.65mm_EP1.68x1.88mm" H 4350 5100 50  0001 C CNN
F 3 "" H 4350 5100 50  0001 C CNN
	1    4050 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4950 4450 4950
$EndSCHEMATC
