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
L Connector:Raspberry_Pi_2_3 J1
U 1 1 5FAA4331
P 3100 5900
F 0 "J1" H 2450 7200 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 3800 4600 50  0000 C CNN
F 2 "" H 3100 5900 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 3100 5900 50  0001 C CNN
	1    3100 5900
	1    0    0    -1  
$EndComp
$Comp
L Analog_ADC:MCP3008 U2
U 1 1 5FAB6DAF
P 4400 2500
F 0 "U2" H 3950 3000 50  0000 C CNN
F 1 "MCP3008" H 4950 1900 50  0000 C CNN
F 2 "" H 4500 2600 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21295d.pdf" H 4500 2600 50  0001 C CNN
	1    4400 2500
	1    0    0    -1  
$EndComp
$Comp
L dk_Temperature-Sensors-Analog-and-Digital-Output:MCP9700A-E_TO U1
U 1 1 5FAB901C
P 1850 2700
F 0 "U1" H 1750 2950 60  0000 R CNN
F 1 "MCP9700E" H 2450 2400 60  0000 R CNN
F 2 "digikey-footprints:TO-92-3" H 2050 2900 60  0001 L CNN
F 3 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en022859" H 2050 3000 60  0001 L CNN
F 4 "MCP9700A-E/TO-ND" H 2050 3100 60  0001 L CNN "Digi-Key_PN"
F 5 "MCP9700A-E/TO" H 2050 3200 60  0001 L CNN "MPN"
F 6 "Sensors, Transducers" H 2050 3300 60  0001 L CNN "Category"
F 7 "Temperature Sensors - Analog and Digital Output" H 2050 3400 60  0001 L CNN "Family"
F 8 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en022859" H 2050 3500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/microchip-technology/MCP9700A-E-TO/MCP9700A-E-TO-ND/1212508" H 2050 3600 60  0001 L CNN "DK_Detail_Page"
F 10 "SENSOR ANALOG -40C-125C TO92-3" H 2050 3700 60  0001 L CNN "Description"
F 11 "Microchip Technology" H 2050 3800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2050 3900 60  0001 L CNN "Status"
	1    1850 2700
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Optical:LDR03 R2
U 1 1 5FAC10B3
P 2400 1550
F 0 "R2" H 2470 1596 50  0000 L CNN
F 1 "LDR03" H 2470 1505 50  0000 L CNN
F 2 "OptoDevice:R_LDR_10x8.5mm_P7.6mm_Vertical" V 2575 1550 50  0001 C CNN
F 3 "http://www.elektronica-componenten.nl/WebRoot/StoreNL/Shops/61422969/54F1/BA0C/C664/31B9/2173/C0A8/2AB9/2AEF/LDR03IMP.pdf" H 2400 1500 50  0001 C CNN
	1    2400 1550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5FAC28F2
P 1750 6500
F 0 "SW1" H 1750 6785 50  0000 C CNN
F 1 "SW_Push" H 1750 6694 50  0000 C CNN
F 2 "" H 1750 6700 50  0001 C CNN
F 3 "~" H 1750 6700 50  0001 C CNN
	1    1750 6500
	1    0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:24LC00 U3
U 1 1 5FAC455F
P 4950 5400
F 0 "U3" H 5200 5650 50  0000 C CNN
F 1 "FT24C32A" H 4700 5150 50  0000 C CNN
F 2 "" H 4950 5400 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21178G.pdf" H 4950 5400 50  0001 C CNN
	1    4950 5400
	-1   0    0    -1  
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 5FAC593B
P 1350 4750
F 0 "BZ1" H 1355 5040 50  0000 C CNN
F 1 "Buzzer" H 1355 4949 50  0000 C CNN
F 2 "" V 1325 4850 50  0001 C CNN
F 3 "~" V 1325 4850 50  0001 C CNN
	1    1350 4750
	-1   0    0    -1  
$EndComp
$Comp
L dk_Transistors-Bipolar-BJT-Single:2N2222A Q1
U 1 1 5FAC6E39
P 1550 5300
F 0 "Q1" H 1738 5353 60  0000 L CNN
F 1 "2N2222A" H 1738 5247 60  0000 L CNN
F 2 "digikey-footprints:TO-18-3" H 1750 5500 60  0001 L CNN
F 3 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N2221A.PDF" H 1750 5600 60  0001 L CNN
F 4 "2N2222ACS-ND" H 1750 5700 60  0001 L CNN "Digi-Key_PN"
F 5 "2N2222A" H 1750 5800 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 1750 5900 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 1750 6000 60  0001 L CNN "Family"
F 8 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N2221A.PDF" H 1750 6100 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/central-semiconductor-corp/2N2222A/2N2222ACS-ND/4806845" H 1750 6200 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.8A TO-18" H 1750 6300 60  0001 L CNN "Description"
F 11 "Central Semiconductor Corp" H 1750 6400 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1750 6500 60  0001 L CNN "Status"
	1    1550 5300
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5FAC7C04
P 2400 1950
F 0 "R3" H 2470 1996 50  0000 L CNN
F 1 "1k" H 2470 1905 50  0000 L CNN
F 2 "" V 2330 1950 50  0001 C CNN
F 3 "~" H 2400 1950 50  0001 C CNN
	1    2400 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FAC8112
P 2000 5300
F 0 "R1" V 1793 5300 50  0000 C CNN
F 1 "1k" V 1884 5300 50  0000 C CNN
F 2 "" V 1930 5300 50  0001 C CNN
F 3 "~" H 2000 5300 50  0001 C CNN
	1    2000 5300
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR06
U 1 1 5FACA42B
P 2400 1300
F 0 "#PWR06" H 2400 1150 50  0001 C CNN
F 1 "+3V3" H 2415 1473 50  0000 C CNN
F 2 "" H 2400 1300 50  0001 C CNN
F 3 "" H 2400 1300 50  0001 C CNN
	1    2400 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5FACCA6D
P 2400 2200
F 0 "#PWR07" H 2400 1950 50  0001 C CNN
F 1 "GND" H 2405 2027 50  0000 C CNN
F 2 "" H 2400 2200 50  0001 C CNN
F 3 "" H 2400 2200 50  0001 C CNN
	1    2400 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1300 2400 1400
Wire Wire Line
	2400 1700 2400 1750
Wire Wire Line
	2400 2200 2400 2100
$Comp
L power:+3V3 #PWR04
U 1 1 5FAD2363
P 1850 2350
F 0 "#PWR04" H 1850 2200 50  0001 C CNN
F 1 "+3V3" H 1865 2523 50  0000 C CNN
F 2 "" H 1850 2350 50  0001 C CNN
F 3 "" H 1850 2350 50  0001 C CNN
	1    1850 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5FAD2CA7
P 1850 3050
F 0 "#PWR05" H 1850 2800 50  0001 C CNN
F 1 "GND" H 1855 2877 50  0000 C CNN
F 2 "" H 1850 3050 50  0001 C CNN
F 3 "" H 1850 3050 50  0001 C CNN
	1    1850 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3000 1850 3050
Wire Wire Line
	1850 2350 1850 2400
Wire Wire Line
	2400 1750 3300 1750
Wire Wire Line
	3300 1750 3300 2200
Wire Wire Line
	3300 2200 3800 2200
Connection ~ 2400 1750
Wire Wire Line
	2400 1750 2400 1800
Wire Wire Line
	2250 2700 3000 2700
Wire Wire Line
	3000 2700 3000 2300
Wire Wire Line
	3000 2300 3800 2300
$Comp
L power:+3V3 #PWR010
U 1 1 5FAE015F
P 4600 1850
F 0 "#PWR010" H 4600 1700 50  0001 C CNN
F 1 "+3V3" H 4615 2023 50  0000 C CNN
F 2 "" H 4600 1850 50  0001 C CNN
F 3 "" H 4600 1850 50  0001 C CNN
	1    4600 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1850 4600 1950
Wire Wire Line
	4300 2000 4300 1950
Wire Wire Line
	4300 1950 4600 1950
Connection ~ 4600 1950
Wire Wire Line
	4600 1950 4600 2000
$Comp
L power:GND #PWR011
U 1 1 5FAE2006
P 4600 3200
F 0 "#PWR011" H 4600 2950 50  0001 C CNN
F 1 "GND" H 4605 3027 50  0000 C CNN
F 2 "" H 4600 3200 50  0001 C CNN
F 3 "" H 4600 3200 50  0001 C CNN
	1    4600 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3100 4600 3150
Wire Wire Line
	4300 3100 4300 3150
Wire Wire Line
	4300 3150 4600 3150
Connection ~ 4600 3150
Wire Wire Line
	4600 3150 4600 3200
Wire Wire Line
	5000 2400 5100 2400
Wire Wire Line
	5000 2500 5100 2500
Wire Wire Line
	5000 2600 5100 2600
Wire Wire Line
	5000 2700 5100 2700
Text Label 5100 2400 0    50   ~ 0
SCLK0
Text Label 5100 2500 0    50   ~ 0
MISO0
Text Label 5100 2600 0    50   ~ 0
MOSI0
Text Label 5100 2700 0    50   ~ 0
~CE0
Wire Wire Line
	3900 6100 4000 6100
Wire Wire Line
	3900 6200 4000 6200
Wire Wire Line
	3900 6300 4000 6300
Wire Wire Line
	3900 6400 4000 6400
Text Label 4000 6400 0    50   ~ 0
SCLK0
Text Label 4000 6200 0    50   ~ 0
MISO0
Text Label 4000 6300 0    50   ~ 0
MOSI0
Text Label 4000 6100 0    50   ~ 0
~CE0
Wire Wire Line
	3900 5300 4550 5300
Wire Wire Line
	3900 5400 4550 5400
NoConn ~ 4550 5500
NoConn ~ 5350 5500
NoConn ~ 5350 5400
NoConn ~ 5350 5300
$Comp
L power:+3V3 #PWR012
U 1 1 5FAF03F0
P 4950 5050
F 0 "#PWR012" H 4950 4900 50  0001 C CNN
F 1 "+3V3" H 4965 5223 50  0000 C CNN
F 2 "" H 4950 5050 50  0001 C CNN
F 3 "" H 4950 5050 50  0001 C CNN
	1    4950 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5FAF0A30
P 2700 7250
F 0 "#PWR08" H 2700 7000 50  0001 C CNN
F 1 "GND" H 2705 7077 50  0000 C CNN
F 2 "" H 2700 7250 50  0001 C CNN
F 3 "" H 2700 7250 50  0001 C CNN
	1    2700 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 7200 2700 7250
$Comp
L power:GND #PWR013
U 1 1 5FAF1743
P 4950 5750
F 0 "#PWR013" H 4950 5500 50  0001 C CNN
F 1 "GND" H 4955 5577 50  0000 C CNN
F 2 "" H 4950 5750 50  0001 C CNN
F 3 "" H 4950 5750 50  0001 C CNN
	1    4950 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 5700 4950 5750
Wire Wire Line
	4950 5050 4950 5100
NoConn ~ 3800 2400
NoConn ~ 3800 2500
NoConn ~ 3800 2600
NoConn ~ 3800 2700
NoConn ~ 3800 2800
NoConn ~ 3800 2900
Wire Wire Line
	1950 6500 2300 6500
$Comp
L power:GND #PWR03
U 1 1 5FAF59B9
P 1500 6600
F 0 "#PWR03" H 1500 6350 50  0001 C CNN
F 1 "GND" H 1505 6427 50  0000 C CNN
F 2 "" H 1500 6600 50  0001 C CNN
F 3 "" H 1500 6600 50  0001 C CNN
	1    1500 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6600 1500 6500
Wire Wire Line
	1500 6500 1550 6500
$Comp
L power:+3V3 #PWR01
U 1 1 5FAF9329
P 1450 4350
F 0 "#PWR01" H 1450 4200 50  0001 C CNN
F 1 "+3V3" H 1465 4523 50  0000 C CNN
F 2 "" H 1450 4350 50  0001 C CNN
F 3 "" H 1450 4350 50  0001 C CNN
	1    1450 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4350 1450 4650
Wire Wire Line
	1450 4850 1450 5100
Wire Wire Line
	1450 5500 1450 5600
$Comp
L power:GND #PWR02
U 1 1 5FAFBC5C
P 1450 5600
F 0 "#PWR02" H 1450 5350 50  0001 C CNN
F 1 "GND" H 1455 5427 50  0000 C CNN
F 2 "" H 1450 5600 50  0001 C CNN
F 3 "" H 1450 5600 50  0001 C CNN
	1    1450 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 5300 1850 5300
Wire Wire Line
	2150 5300 2300 5300
$Comp
L power:+3V3 #PWR09
U 1 1 5FB07295
P 3200 4500
F 0 "#PWR09" H 3200 4350 50  0001 C CNN
F 1 "+3V3" H 3215 4673 50  0000 C CNN
F 2 "" H 3200 4500 50  0001 C CNN
F 3 "" H 3200 4500 50  0001 C CNN
	1    3200 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4500 3200 4600
NoConn ~ 3300 4600
NoConn ~ 3000 4600
NoConn ~ 2900 4600
NoConn ~ 3900 5000
NoConn ~ 3900 5100
NoConn ~ 2300 5100
NoConn ~ 2300 5000
NoConn ~ 3900 6000
NoConn ~ 3900 5800
NoConn ~ 3900 5700
NoConn ~ 3900 5600
NoConn ~ 3900 6600
NoConn ~ 3900 6700
NoConn ~ 2300 6600
NoConn ~ 2300 6400
NoConn ~ 2300 6300
NoConn ~ 2300 6200
NoConn ~ 2300 6100
NoConn ~ 2300 5900
NoConn ~ 2300 5800
NoConn ~ 2300 5700
NoConn ~ 2300 5500
NoConn ~ 2300 5400
NoConn ~ 2800 7200
NoConn ~ 2900 7200
NoConn ~ 3000 7200
NoConn ~ 3100 7200
NoConn ~ 3200 7200
NoConn ~ 3300 7200
NoConn ~ 3400 7200
Text Notes 2350 950  0    197  ~ 0
Analog Inputs
Text Notes 5400 2550 0    118  ~ 0
SPI0
Text Notes 4300 6300 0    118  ~ 0
SPI0
Text Notes 4600 4800 0    118  ~ 0
EEPROM
Text Notes 2850 4150 0    197  ~ 0
RPi
$EndSCHEMATC
