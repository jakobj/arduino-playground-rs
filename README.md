# arduino-playground-rs
Playing around with Rust on the Arduino.

This repository contains a minimal example for calling functions from Rust libraries from a standard Arduino sketch.

## Usage
1. Make sure you have the [Arduino CLI](https://arduino.github.io/arduino-cli/) installed, your board is plugged in and recognized.
2. Adapt the variables in `Makefile` to your needs.
3. Run `make`.
4. Profit.

### FAQ
- Q: Where do I find the hash I need to fill in `PATH_TO_LIBRARY_OBJECT`?
  - A: There may be a more structured approach, but I run `make` once, watch it fail, then look up the correct hash in `my_rust_library/target/release/deps/`, it's part of the file with the `.o` extension.

