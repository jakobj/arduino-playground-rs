PATH_TO_OBJECT="/home/jordan/projects/arduino/nu/src/cortex-m4/nu.cpp.o"

all:
	arduino-cli compile -v --build-properties compiler.ldflags=$(PATH_TO_OBJECT) --fqbn arduino:mbed_nano:nano33ble MyFirstSketch
	arduino-cli upload --protocol serial --port /dev/ttyACM0 --fqbn arduino:mbed_nano:nano33ble MyFirstSketch/
