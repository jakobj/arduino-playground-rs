ARDUINO_TOOLCHAIN_ROOT=/home/jordan/.arduino15
ARDUINO_LIBRARY_ROOT=/home/jordan/Arduino

CXX=$(ARDUINO_TOOLCHAIN_ROOT)/packages/arduino/tools/arm-none-eabi-gcc/7-2017q4/bin/arm-none-eabi-g++
CXXFLAGS=-c -w -g3 -nostdlib -mcpu=cortex-m4

all: src/nu.h src/nu.cpp
	$(CXX) $(CXXFLAGS) src/nu.cpp -o src/cortex-m4/nu.cpp.o
