ARDUINO_TOOLCHAIN_ROOT=/home/jordan/.arduino15
ARDUINO_LIBRARY_ROOT=/home/jordan/Arduino

CXX=$(ARDUINO_TOOLCHAIN_ROOT)/packages/arduino/tools/arm-none-eabi-gcc/7-2017q4/bin/arm-none-eabi-g++
CXXFLAGS=-c -w -g3 -nostdlib @$(ARDUINO_TOOLCHAIN_ROOT)/packages/arduino/hardware/mbed_nano/4.0.8/variants/ARDUINO_NANO33BLE/defines.txt @$(ARDUINO_TOOLCHAIN_ROOT)/packages/arduino/hardware/mbed_nano/4.0.8/variants/ARDUINO_NANO33BLE/cxxflags.txt -DARDUINO_ARCH_NRF52840 -MMD -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -DARDUINO=10607 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED_NANO -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=0
LDLIBS=-I$(ARDUINO_TOOLCHAIN_ROOT)/packages/arduino/hardware/mbed_nano/4.0.8/cores/arduino -I$(ARDUINO_TOOLCHAIN_ROOT)/packages/arduino/hardware/mbed_nano/4.0.8/variants/ARDUINO_NANO33BLE -I$(ARDUINO_LIBRARY_ROOT)/libraries/nu/src -I$(ARDUINO_TOOLCHAIN_ROOT)/packages/arduino/hardware/mbed_nano/4.0.8/cores/arduino/api/deprecated -I$(ARDUINO_TOOLCHAIN_ROOT)/packages/arduino/hardware/mbed_nano/4.0.8/cores/arduino/api/deprecated-avr-comp -iprefix$(ARDUINO_TOOLCHAIN_ROOT)/packages/arduino/hardware/mbed_nano/4.0.8/cores/arduino @$(ARDUINO_TOOLCHAIN_ROOT)/packages/arduino/hardware/mbed_nano/4.0.8/variants/ARDUINO_NANO33BLE/includes.txt

all: src/nu.h src/nu.cpp
	$(CXX) $(CXXFLAGS) $(LDLIBS) src/nu.cpp -o src/cortex-m4/nu.cpp.o
	# ar rcs src/cortex-m4/libnu.a src/cortex-m4/nu.o
