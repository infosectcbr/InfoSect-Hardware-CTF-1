#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Usage; $0 </dev/ttyUSB?>" > /dev/stderr
	exit 1
fi
USBDEVICE=$1
avrdude -v -patmega328p -carduino -P$USBDEVICE -b57600 -D -Uflash:w:HWCTF1.ino.hex:i 
