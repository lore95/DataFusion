
from ImageRecognition.SkeletonTracking import startVideoTracking
from PressureReadings.project.toolchain-gd32v-v201-win.projects.wiiboard.sensor_data.data_read import update

import time

annotated_frames = []

startVideoTime = time.time()+ 1000

# Start an infinite loop
while True:
    update(time)
    startVideoTracking(startVideoTime)

    # Check if 'q' is pressed
    if keyboard.is_pressed('q'):
        print("You pressed 'q'. Exiting...")
        break
