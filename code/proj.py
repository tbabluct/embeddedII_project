"""
Practical Code for Work Package 5
EEE3096S - Class of 2020 - University of Cape Town
Torsten Babl - BBLTOR001
James Barnard - BRNJAM017
28 October 2020
"""
import busio
import digitalio
import board
import adafruit_mcp3xxx.mcp3008 as MCP
from adafruit_mcp3xxx.analog_in import AnalogIn
import threading
import time
import RPi.GPIO as GPIO
import datetime
import ES2EEPROMUtils
import os

# Global variables
temp_chan = None
ldr_chan = None
start_time = 0
buz_counter = 0
btn_pin = 26 # BCM mode, Pin 37 on the header
buz_pin = 16 # BCM mode, Pin 36 on the header
adc_thread = None

lo_temp_thresh = 15
hi_temp_thresh = 25

rm_lock = threading.Lock()
run_mode = True
eeprom = None


def setup_ADC():
    """
    Configure MCP3008 ADC and set Analogue In handle
    """
    global temp_chan
    global ldr_chan
    # create the spi bus
    spi = busio.SPI(clock=board.SCK, MISO=board.MISO, MOSI=board.MOSI)

    # create the cs (chip select)
    cs = digitalio.DigitalInOut(board.D5)

    # create the mcp object
    mcp = MCP.MCP3008(spi, cs)

    # create an analog input channel on pin 0
    temp_chan = AnalogIn(mcp, MCP.P1)
    ldr_chan = AnalogIn(mcp, MCP.P0)


def setup_GPIO():
    """ Set up the button and buzzer pin """
    GPIO.setup(btn_pin, GPIO.IN, pull_up_down=GPIO.PUD_UP)
    GPIO.add_event_detect(btn_pin, GPIO.FALLING, 
                        callback=run_btn_callback, bouncetime=200)
    GPIO.setup(buz_pin, GPIO.OUT)


def run_btn_callback(channel):
    """
    Function called when the button is pressed and toggles between
    starting and stopping the sampling thread
    """
    rm_lock.acquire()
    global run_mode
    if run_mode:
        run_mode = False
        os.system("clear")
        print ("Monitoring stopped. Press the button again to resume")
    else:
        os.system("clear")
        print("{:10}{:10}{:7}{:5}{:8}".format("Time", "Sys Timer", "Temp", 
                                                    "Lux", "Buzzer"))
        run_mode = True  
    rm_lock.release()


def volt2temp(volt):
    """
    Returns the temperature in float format from float voltage
    Eq at: http://ww1.microchip.com/downloads/en/DeviceDoc/20001942G.pdf
    """
    return (volt - 0.5) / 0.010


def volt2lux(volt):
    """
    Convert the voltage read by the ADC to the resistance across the LDR
    and convert the resistance to an approximate value of light
    intensity.
    https://emant.com/316002
    """
    res = (3.3 / volt) - 1
    return 50/res


def format_sys_time(seconds):
    """
    Convert total seconds to fromatted HH:MM:SS string
    """
    s = seconds % 60
    m = (seconds // 60) % 60
    h = (seconds // 3600) % 3600
    return "{:02d}:{:02d}:{:02d}".format(h, m, s)


def save_reading_eeprom(lux, temp):
    """
    Save a lux and temp reading to the next eeprom index, overwrite the
    oldest entry. Save the last 20 entries
    """
    global eeprom

    last_index = eeprom.read_block(21, 4)[3]

    lux = lux % (256**2)
    lux = int(lux)
    temp_int = int(temp * 10) % (256**2)
    temp_int = int(temp_int)
    write_data = [0, 0, 0, 0]
    write_data[0], write_data[1] = temp_int >> 8, temp_int & 0xff
    write_data[2], write_data[3] = lux >> 8, lux & 0xff

    new_index = (last_index + 1) % 20
    new_index = int(new_index)

    eeprom.write_block(new_index, write_data)
    eeprom.write_block(21, [0, 0, 0, new_index])
    

def print_temp_thread():
    """
    Recursive interval thread implementaion from
    http://wiki.ee.uct.ac.za/RaspberryPi:ProgrammingInPython
    Adapted to print the temperature at the interval set in 
    <print_interval>
    """
    global start_time
    while (True):
        while (True):
            rm_lock.acquire()
            if (run_mode):
                rm_lock.release()
                break
            rm_lock.release()
            time.sleep(0.1)
        # Get runtime
        now = datetime.datetime.now()
        if start_time == 0:
            start_time = now
        runtime = now - start_time
        sys_time_str = format_sys_time(runtime.seconds)

        temp_volt = temp_chan.voltage
        temp = volt2temp(temp_volt)
        ldr_volt = ldr_chan.voltage
        lux = int(volt2lux(ldr_volt))

        # Activate buzzer if temperature is too high or too low
        buz_on = temp > hi_temp_thresh or temp < lo_temp_thresh
        GPIO.output(buz_pin, buz_on)

        print("{:10}{:10}{:3.1f} C {:4d} {:8}".format(now.strftime("%H:%M:%S"),
                                                sys_time_str, temp,
                                                lux, '*'*buz_on))

        save_reading_eeprom(lux, temp)

        time.sleep(5)


def main():
    """
    Entrypoint to the program if this file is executed
    """
    global eeprom
    setup_ADC()
    setup_GPIO()
    eeprom = ES2EEPROMUtils.ES2EEPROM()
    print("{:10}{:10}{:7}{:5}{:8}".format("Time", "Sys Timer", "Temp", 
                                                    "Lux", "Buzzer"))
    global adc_thread
    adc_thread = threading.Timer(0, print_temp_thread)
    adc_thread.daemon = True  # Daemon threads exit when the program does
    adc_thread.start()


if __name__ == "__main__":
    main()
    while(True):
        time.sleep(0.1)
