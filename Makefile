ARDUINO_BOARD_FQBN=arduino:mbed_nano:nano33ble
ARDUINO_BOARD_PORT=/dev/ttyACM0
RUST_TARGET_PLATFORM=thumbv7em-none-eabi
PATH_TO_LIBRARY_OBJECT=my_rust_library/target/release/deps/my_rust_library-REPLACE_ME_WITH_HASH.o

all: $(PATH_TO_LIBRARY_OBJECT)
	arduino-cli compile -v --build-properties compiler.ldflags=$(PATH_TO_LIBRARY_OBJECT) --fqbn $(ARDUINO_BOARD_FQBN) MyFirstSketch
	arduino-cli upload --protocol serial --port $(ARDUINO_BOARD_PORT) --fqbn $(ARDUINO_BOARD_FQBN) MyFirstSketch/

$(PATH_TO_LIBRARY_OBJECT):
	cd my_rust_library && cargo rustc --release -- --emit=obj --target $(RUST_TARGET_PLATFORM)
