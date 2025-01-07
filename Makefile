ARDUINO_BOARD_FQBN=arduino:mbed_nano:nano33ble
ARDUINO_BOARD_PORT=/dev/ttyACM0
TARGET_PLATFORM=thumbv7em-none-eabi

PATH_TO_RUST_LIBRARY=my_rust_library/target/$(TARGET_PLATFORM)/release/
RUST_LIBRARY=my_rust_library
PATH_TO_RUST_LIBRARY_OBJECT=$(PATH_TO_RUST_LIBRARY)/lib$(RUST_LIBRARY).a
# PATH_TO_C_LIBRARY_OBJECT=my_c_library/mylib.o

all: MyFirstSketch/MyFirstSketch.ino $(PATH_TO_RUST_LIBRARY_OBJECT)
	arduino-cli compile -v --build-property compiler.libraries.ldflags="-L$(PATH_TO_RUST_LIBRARY) -l$(RUST_LIBRARY)" --fqbn $(ARDUINO_BOARD_FQBN) MyFirstSketch
	arduino-cli upload --protocol serial --port $(ARDUINO_BOARD_PORT) --fqbn $(ARDUINO_BOARD_FQBN) MyFirstSketch/

$(PATH_TO_RUST_LIBRARY_OBJECT): my_rust_library/Cargo.toml my_rust_library/src/lib.rs
	cd my_rust_library && cargo build --release --target $(TARGET_PLATFORM)

# $(PATH_TO_C_LIBRARY_OBJECT): my_c_library/mylib.c
# 	cd my_c_library && clang --target=$(TARGET_PLATFORM) -c mylib.c -o mylib.o
