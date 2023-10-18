ARDUINO_TOOLCHAIN_ROOT=/home/jordan/.arduino15
ARDUINO_LIBRARY_ROOT=/home/jordan/Arduino

CXX=$(ARDUINO_TOOLCHAIN_ROOT)/packages/arduino/tools/arm-none-eabi-gcc/7-2017q4/bin/arm-none-eabi-g++
CXXFLAGS=-c -w -g3 -nostdlib -mcpu=cortex-m4

all: src/cpp_example.cpp.o

src/cpp_example.cpp.o: src/cpp_example.h src/cpp_example.cpp
	$(CXX) $(CXXFLAGS) src/cpp_example.cpp -o src/cpp_example.cpp.o
