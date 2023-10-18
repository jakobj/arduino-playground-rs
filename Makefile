PATH_TO_OBJECT=cpp_example/src/cpp_example.cpp.o

all:
	arduino-cli compile -v --build-properties compiler.ldflags=$(PATH_TO_OBJECT) --fqbn arduino:mbed_nano:nano33ble MyFirstSketch
	arduino-cli upload --protocol serial --port /dev/ttyACM0 --fqbn arduino:mbed_nano:nano33ble MyFirstSketch/
