### Template for USB-serial on GD32V103

This is a minimal project to enable USB communication via virtual com port on GD32V103 using the [original firmware library] (https://github.com/riscv-mcu/GD32VF103_Firmware_Library)

Should build on PlatformIO as well as with a makefile as long as the files in lib are included, and the firmware library is available externally from the project. (Should automatically happen on PIO)