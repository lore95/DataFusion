# Project Title

This section will be used for the code implemented for the reading of data from pressure boards

## Description

In this folder, you will be able to connect the Wii Balance Board with your laptop

## Getting Started

### Dependencies

*For this project, you need to connect the Wii Balance Board with your laptop. For this some dependencies are required


### Installing the drivers

* This link will help you to install the development environment for the RISC-V based microcontroller boards used https://canvas.kth.se/courses/19538/pages/install-development-environment
* When you arrive to step 3, you can open /toolchain-gd32v/projects/wiiboard
* You need to compile main.c following the step 5 instruction and then you're done with connecting the chips to your laptop!



*These instructions are for Windows users
* You can go in your PowerShell and write these instructions
* Disconnect USB wire
* Write [System.IO.Ports.SerialPort]::getportnames()
* Connect USB wire
* Write [System.IO.Ports.SerialPort]::getportnames()
* Then you can see there is one more COM, remember its name
* These above instructions can be done once instead you know the COM Port name of your board

* Compile these following instructions one by one
* $portName = "COM6"
* $baudRate = 9600
* $serialPort = New-Object System.IO.Ports.SerialPort $portName, $baudRate, None, 8, One
* $serialPort.Open()
* try {
>>     while ($true) {
>>         if ($serialPort.BytesToRead -gt 0) {
>>             $data = $serialPort.ReadLine()
>>             Write-Host $data
>>         }
>>         Start-Sleep -Milliseconds 100  # Delay to avoid excessive CPU usage
>>     }
>> } catch {
>>     Write-Error "An error occurred: $_"
>> } finally {
>>     # Close the COM port when done
>>     $serialPort.Close()
>>     Write-Host "COM port closed."
>> }

* If you can see values, so the installation is working

### Executing program

*/toolchain-gd32v/projects/wiiboard/data_read.py enables you to plot the datas and save them into a json file
*/toolchain-gd32v/projects/wiiboard/sensor_data/sensitivity.py enables you to find the relationship between the values and the weight put on the sensors




## Help

Any advise for common problems or issues, please contact Marwan Zarouf

## Authors

Contributors names and contact info

Marwan Zarouf
mail address: zarouf@kth.se

