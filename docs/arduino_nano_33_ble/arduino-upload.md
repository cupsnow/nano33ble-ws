[TOC]

# Note about Arduino IDE 2.x

## Log from Arduino IDE 2.x upload

```
FQBN: arduino:mbed_nano:nano33ble
Using board 'nano33ble' from platform in folder: /home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5
Using core 'arduino' from platform in folder: /home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5

Detecting libraries used...
/home/joelai/.arduino15/packages/arduino/tools/arm-none-eabi-gcc/7-2017q4/bin/arm-none-eabi-g++ -c -w -g3 -nostdlib @/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/variants/ARDUINO_NANO33BLE/defines.txt @/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/variants/ARDUINO_NANO33BLE/cxxflags.txt -DARDUINO_ARCH_NRF52840 -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -w -x c++ -E -CC -DARDUINO=10607 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED_NANO -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=1 -I/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/cores/arduino -I/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/variants/ARDUINO_NANO33BLE -I/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/cores/arduino/api/deprecated -I/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/cores/arduino/api/deprecated-avr-comp -iprefix/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/cores/arduino @/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/variants/ARDUINO_NANO33BLE/includes.txt /tmp/arduino/sketches/68B438100E0A4BC09AD72FCDEFD3CB32/sketch/test1.ino.cpp -o /dev/null
Generating function prototypes...
/home/joelai/.arduino15/packages/arduino/tools/arm-none-eabi-gcc/7-2017q4/bin/arm-none-eabi-g++ -c -w -g3 -nostdlib @/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/variants/ARDUINO_NANO33BLE/defines.txt @/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/variants/ARDUINO_NANO33BLE/cxxflags.txt -DARDUINO_ARCH_NRF52840 -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -w -x c++ -E -CC -DARDUINO=10607 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED_NANO -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=1 -I/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/cores/arduino -I/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/variants/ARDUINO_NANO33BLE -I/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/cores/arduino/api/deprecated -I/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/cores/arduino/api/deprecated-avr-comp -iprefix/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/cores/arduino @/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/variants/ARDUINO_NANO33BLE/includes.txt /tmp/arduino/sketches/68B438100E0A4BC09AD72FCDEFD3CB32/sketch/test1.ino.cpp -o /tmp/2445102751/sketch_merged.cpp
/home/joelai/.arduino15/packages/builtin/tools/ctags/5.8-arduino11/ctags -u --language-force=c++ -f - --c++-kinds=svpf --fields=KSTtzns --line-directives /tmp/2445102751/sketch_merged.cpp
Compiling sketch...
/home/joelai/.arduino15/packages/arduino/tools/arm-none-eabi-gcc/7-2017q4/bin/arm-none-eabi-g++ -c -Wall -Wextra -g3 -nostdlib @/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/variants/ARDUINO_NANO33BLE/defines.txt @/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/variants/ARDUINO_NANO33BLE/cxxflags.txt -DARDUINO_ARCH_NRF52840 -MMD -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -DARDUINO=10607 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED_NANO -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=0 -I/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/cores/arduino -I/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/variants/ARDUINO_NANO33BLE -I/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/cores/arduino/api/deprecated -I/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/cores/arduino/api/deprecated-avr-comp -iprefix/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/cores/arduino @/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/variants/ARDUINO_NANO33BLE/includes.txt /tmp/arduino/sketches/68B438100E0A4BC09AD72FCDEFD3CB32/sketch/test1.ino.cpp -o /tmp/arduino/sketches/68B438100E0A4BC09AD72FCDEFD3CB32/sketch/test1.ino.cpp.o
Compiling libraries...
Compiling core...
Using previously compiled file: /tmp/arduino/sketches/68B438100E0A4BC09AD72FCDEFD3CB32/core/variant.cpp.o
Using precompiled core: /tmp/arduino/cores/arduino_mbed_nano_nano33ble_8a22f76d478736c13b671d1df7254e0e/core.a
Linking everything together...
/home/joelai/.arduino15/packages/arduino/tools/arm-none-eabi-gcc/7-2017q4/bin/arm-none-eabi-g++ -E -P -x c /home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/variants/ARDUINO_NANO33BLE/linker_script.ld -o /tmp/arduino/sketches/68B438100E0A4BC09AD72FCDEFD3CB32/linker_script.ld
/home/joelai/.arduino15/packages/arduino/tools/arm-none-eabi-gcc/7-2017q4/bin/arm-none-eabi-g++ -L/tmp/arduino/sketches/68B438100E0A4BC09AD72FCDEFD3CB32 -Wl,--gc-sections -Wall -Wextra -Wl,--as-needed @/home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/variants/ARDUINO_NANO33BLE/ldflags.txt -T/tmp/arduino/sketches/68B438100E0A4BC09AD72FCDEFD3CB32/linker_script.ld -Wl,-Map,/tmp/arduino/sketches/68B438100E0A4BC09AD72FCDEFD3CB32/test1.ino.map --specs=nosys.specs -o /tmp/arduino/sketches/68B438100E0A4BC09AD72FCDEFD3CB32/test1.ino.elf /tmp/arduino/sketches/68B438100E0A4BC09AD72FCDEFD3CB32/sketch/test1.ino.cpp.o /tmp/arduino/sketches/68B438100E0A4BC09AD72FCDEFD3CB32/core/variant.cpp.o -Wl,--whole-archive /tmp/arduino/sketches/68B438100E0A4BC09AD72FCDEFD3CB32/../../cores/arduino_mbed_nano_nano33ble_8a22f76d478736c13b671d1df7254e0e/core.a /home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/variants/ARDUINO_NANO33BLE/libs/libmbed.a /home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/variants/ARDUINO_NANO33BLE/libs/libcc_310_core.a /home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/variants/ARDUINO_NANO33BLE/libs/libcc_310_ext.a /home/joelai/.arduino15/packages/arduino/hardware/mbed_nano/4.1.5/variants/ARDUINO_NANO33BLE/libs/libcc_310_trng.a -Wl,--no-whole-archive -Wl,--start-group -lstdc++ -lsupc++ -lm -lc -lgcc -lnosys -Wl,--end-group
/home/joelai/.arduino15/packages/arduino/tools/arm-none-eabi-gcc/7-2017q4/bin/arm-none-eabi-objcopy -O binary /tmp/arduino/sketches/68B438100E0A4BC09AD72FCDEFD3CB32/test1.ino.elf /tmp/arduino/sketches/68B438100E0A4BC09AD72FCDEFD3CB32/test1.ino.bin
/home/joelai/.arduino15/packages/arduino/tools/arm-none-eabi-gcc/7-2017q4/bin/arm-none-eabi-objcopy -O ihex -R .eeprom /tmp/arduino/sketches/68B438100E0A4BC09AD72FCDEFD3CB32/test1.ino.elf /tmp/arduino/sketches/68B438100E0A4BC09AD72FCDEFD3CB32/test1.ino.hex

/home/joelai/.arduino15/packages/arduino/tools/arm-none-eabi-gcc/7-2017q4/bin/arm-none-eabi-size -A /tmp/arduino/sketches/68B438100E0A4BC09AD72FCDEFD3CB32/test1.ino.elf
Sketch uses 85288 bytes (8%) of program storage space. Maximum is 983040 bytes.
Global variables use 44560 bytes (16%) of dynamic memory, leaving 217584 bytes for local variables. Maximum is 262144 bytes.
Performing 1200-bps touch reset on serial port /dev/ttyACM0
Waiting for upload port...
No upload port found, using /dev/ttyACM0 as fallback
"/home/joelai/.arduino15/packages/arduino/tools/bossac/1.9.1-arduino2/bossac" -d --port=ttyACM0 -U -i -e -w "/tmp/arduino/sketches/68B438100E0A4BC09AD72FCDEFD3CB32/test1.ino.bin" -R
Set binary mode
version()=Arduino Bootloader (SAM-BA extended) 2.0 [Arduino:IKXYZ]
Connected at 921600 baud
identifyChip()=nRF52840-QIAA
write(addr=0,size=0x34)
writeWord(addr=0x30,value=0x400)
writeWord(addr=0x20,value=0)
version()=Arduino Bootloader (SAM-BA extended) 2.0 [Arduino:IKXYZ]
Device       : nRF52840-QIAA
Version      : Arduino Bootloader (SAM-BA extended) 2.0 [Arduino:IKXYZ]
Address      : 0x0
Pages        : 256
Page Size    : 4096 bytes
Total Size   : 1024KB
Planes       : 1
Lock Regions : 0
Locked       : none
Security     : false
Erase flash
chipErase(addr=0)

Done in 0.000 seconds
Write 85296 bytes to flash (21 pages)

[                              ] 0% (0/21 pages)write(addr=0x34,size=0x1000)
writeBuffer(scr_addr=0x34, dst_addr=0, size=0x1000)

[=                             ] 4% (1/21 pages)write(addr=0x34,size=0x1000)
writeBuffer(scr_addr=0x34, dst_addr=0x1000, size=0x1000)

[==                            ] 9% (2/21 pages)write(addr=0x34,size=0x1000)
writeBuffer(scr_addr=0x34, dst_addr=0x2000, size=0x1000)

[====                          ] 14% (3/21 pages)write(addr=0x34,size=0x1000)
writeBuffer(scr_addr=0x34, dst_addr=0x3000, size=0x1000)

[=====                         ] 19% (4/21 pages)write(addr=0x34,size=0x1000)
writeBuffer(scr_addr=0x34, dst_addr=0x4000, size=0x1000)

[=======                       ] 23% (5/21 pages)write(addr=0x34,size=0x1000)
writeBuffer(scr_addr=0x34, dst_addr=0x5000, size=0x1000)

[========                      ] 28% (6/21 pages)write(addr=0x34,size=0x1000)
writeBuffer(scr_addr=0x34, dst_addr=0x6000, size=0x1000)

[==========                    ] 33% (7/21 pages)write(addr=0x34,size=0x1000)
writeBuffer(scr_addr=0x34, dst_addr=0x7000, size=0x1000)

[===========                   ] 38% (8/21 pages)write(addr=0x34,size=0x1000)
writeBuffer(scr_addr=0x34, dst_addr=0x8000, size=0x1000)

[============                  ] 42% (9/21 pages)write(addr=0x34,size=0x1000)
writeBuffer(scr_addr=0x34, dst_addr=0x9000, size=0x1000)

[==============                ] 47% (10/21 pages)write(addr=0x34,size=0x1000)
writeBuffer(scr_addr=0x34, dst_addr=0xa000, size=0x1000)

[===============               ] 52% (11/21 pages)write(addr=0x34,size=0x1000)
writeBuffer(scr_addr=0x34, dst_addr=0xb000, size=0x1000)

[=================             ] 57% (12/21 pages)write(addr=0x34,size=0x1000)
writeBuffer(scr_addr=0x34, dst_addr=0xc000, size=0x1000)

[==================            ] 61% (13/21 pages)write(addr=0x34,size=0x1000)
writeBuffer(scr_addr=0x34, dst_addr=0xd000, size=0x1000)

[====================          ] 66% (14/21 pages)write(addr=0x34,size=0x1000)
writeBuffer(scr_addr=0x34, dst_addr=0xe000, size=0x1000)

[=====================         ] 71% (15/21 pages)write(addr=0x34,size=0x1000)
writeBuffer(scr_addr=0x34, dst_addr=0xf000, size=0x1000)

[======================        ] 76% (16/21 pages)write(addr=0x34,size=0x1000)
writeBuffer(scr_addr=0x34, dst_addr=0x10000, size=0x1000)

[========================      ] 80% (17/21 pages)write(addr=0x34,size=0x1000)
writeBuffer(scr_addr=0x34, dst_addr=0x11000, size=0x1000)

[=========================     ] 85% (18/21 pages)write(addr=0x34,size=0x1000)
writeBuffer(scr_addr=0x34, dst_addr=0x12000, size=0x1000)

[===========================   ] 90% (19/21 pages)write(addr=0x34,size=0x1000)
writeBuffer(scr_addr=0x34, dst_addr=0x13000, size=0x1000)

[============================  ] 95% (20/21 pages)write(addr=0x34,size=0x1000)
writeBuffer(scr_addr=0x34, dst_addr=0x14000, size=0x1000)

[==============================] 100% (21/21 pages)
Done in 3.269 seconds
reset()
```