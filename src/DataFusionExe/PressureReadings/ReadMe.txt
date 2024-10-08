# Project Title: Wii Balance Board Data Reading

This project contains code for connecting and reading data from the Wii Balance Board using RISC-V based microcontroller boards.

## Description

In this repository, you will find tools to connect the Wii Balance Board to your laptop, capture sensor data, and analyze it. The project includes code for setting up the board, reading sensor data, and processing the data for visualization and analysis.

## Getting Started

### Prerequisites

Before you begin, ensure you have the following installed on your system:

- A Windows-based laptop
- RISC-V toolchain installed (Instructions below)
- PowerShell

### Dependencies

For proper functionality, the Wii Balance Board must be connected to your laptop via USB. The following dependencies are required:

- RISC-V toolchain setup for development
- PowerShell for running commands

### Installing the Drivers

Follow these steps to install the required drivers and development environment:

1. Install the RISC-V based microcontroller toolchain by following the instructions provided here: [KTH Development Environment Setup](https://canvas.kth.se/courses/19538/pages/install-development-environment)
2. After reaching step 3 in the instructions, navigate to `/toolchain-gd32v/projects/wiiboard`.
3. Compile the `main.c` file by following step 5 in the guide.
4. This process will complete the connection setup between the Wii Balance Board and your laptop.

### PowerShell Setup (For Windows Users)

Once the drivers are installed, use the following PowerShell commands to verify the correct COM port and read data from the Wii Balance Board:

1. Open PowerShell.
2. Run the following commands to detect the COM port:
   - Disconnect the USB cable.
   - Run:
     ```powershell
     [System.IO.Ports.SerialPort]::getportnames()
     ```
   - Reconnect the USB cable and run the command again. The new COM port listed is your board’s port name.
3. Note the COM port name (e.g., "COM6").

To start reading data from the board:

1. Open PowerShell and run these commands one by one:
    ```powershell
    $portName = "COM6"
    $baudRate = 9600
    $serialPort = New-Object System.IO.Ports.SerialPort $portName, $baudRate, None, 8, One
    $serialPort.Open()
    try {
        while ($true) {
            if ($serialPort.BytesToRead -gt 0) {
                $data = $serialPort.ReadLine()
                Write-Host $data
            }
            Start-Sleep -Milliseconds 100  # Delay to avoid excessive CPU usage
        }
    } catch {
        Write-Error "An error occurred: $_"
    } finally {
        $serialPort.Close()
        Write-Host "COM port closed."
    }
    ```
2. If data is displayed, the setup is successful.

### Executing the Program

You can use the following scripts to process and analyze the data:

- `/toolchain-gd32v/projects/wiiboard/data_read.py`: This script reads and plots sensor data, saving the output to a JSON file.
- `/toolchain-gd32v/projects/wiiboard/sensor_data/sensitivity.py`: This script calculates the relationship between the sensor readings and the weight applied to the Wii Balance Board sensors.

## Common Issues

If you encounter problems:

1. **COM Port Not Detected:** Ensure the USB connection is secure and verify that you are using the correct COM port.
2. **No Data Output:** Check the power to the board and verify that the PowerShell commands are running without errors.

## Contact

For help or advice, please reach out to the contributors.

## Authors

Marwan Zarouf

