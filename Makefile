ARDUINO_BOARD_FQBN=arduino:mbed_nano:nano33ble
ARDUINO_BOARD_PORT=/dev/ttyACM0
PATH_TO_LIBRARY_OBJECT=my_rust_library/target/release/deps/my_rust_library-REPLACE_ME_WITH_HASH.o
TARGET_PLATFORM=thumbv7em-none-eabi
PATH_TO_C_LIBRARY_OBJECT=my_c_library/mylib.o
PATH_TO_LIBRARY_OBJECT=$(PATH_TO_RUST_LIBRARY_OBJECT)

all: $(PATH_TO_LIBRARY_OBJECT)
	arduino-cli compile -v --build-properties compiler.ldflags=$(PATH_TO_LIBRARY_OBJECT) --fqbn $(ARDUINO_BOARD_FQBN) MyFirstSketch
	arduino-cli upload --protocol serial --port $(ARDUINO_BOARD_PORT) --fqbn $(ARDUINO_BOARD_FQBN) MyFirstSketch/

$(PATH_TO_RUST_LIBRARY_OBJECT): my_rust_library/Cargo.toml my_rust_library/src/lib.rs
	cd my_rust_library && cargo rustc --release -- --emit=obj --target $(TARGET_PLATFORM)

$(PATH_TO_C_LIBRARY_OBJECT): my_c_library/mylib.c
	cd my_c_library && clang --target=$(TARGET_PLATFORM) -c mylib.c -o mylib.o
