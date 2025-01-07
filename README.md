# arduino-playground-rs
Playing around with Rust ~~(and C)~~ on the Arduino.

This repository contains a minimal example for calling functions in Rust ~~(and C)~~ libraries from a standard Arduino sketch.

## Usage
1. Make sure you have the [Arduino CLI](https://arduino.github.io/arduino-cli/) installed, your board is plugged in and recognized (`arduino-cli board list`).
2. Adapt the variables in `Makefile` to your needs.
3. Run `make`.
4. ~~Profit.~~ Run `cat /dev/ttyACM0` (you may need to adapt the port).
5. Profit.
