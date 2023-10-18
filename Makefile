all:
	arduino-cli compile -v --build-properties compiler.ldflags="/home/jordan/projects/arduino/nu/src/cortex-m4/nu.cpp.o" --fqbn arduino:mbed_nano:nano33ble MyFirstSketch
	arduino-cli upload --protocol serial --port /dev/ttyACM0 --fqbn arduino:mbed_nano:nano33ble MyFirstSketch/
