import os
import subprocess

class Bluetooth:
    def __init__(self) -> None:
        self.isActive = False
        self.turnOff()

    def turnOn(self):
        subprocess.run(args=["bluetoothctl", "power", "on"])
        self.isActive = True

    def turnOff(self):
        subprocess.run(args=["bluetoothctl", "power", "off"])
        self.isActive = False

    def check(self):
        pass