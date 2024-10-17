
# from PressureReadings.project.toolchain.projects.wiiboard.sensor_data.data_read import update
# import tensorflow as tf
# # import tensorflow_hub as hub
# from tensorflow import keras
import numpy as np
import cv2
import ultralytics
ultralytics.checks()
from ultralytics import YOLO
import subprocess
import re
import serial
import serial
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import re
from collections import deque
import json
from datetime import datetime
import time

# Some modules to display an animation using imageio.
from IPython.display import display

annotatedFrames = []
i=0
# Configure the serial connection
ser = serial.Serial(
    port='COM6',         # Set to the appropriate COM port
    baudrate=9600,       # Adjust to match your device's baud rate
    parity=serial.PARITY_NONE,
    stopbits=serial.STOPBITS_ONE,
    bytesize=serial.EIGHTBITS,
    timeout=1            # Timeout for reading (in seconds)
)
vmin=-1e6
vmax=0
# Set up the plot
plt.ion()  # Turn on interactive mode
fig, ax = plt.subplots()
heatmap = ax.imshow(np.zeros((2, 2)), cmap='hot', interpolation='nearest', vmin=vmin, vmax=vmax)
ax.set_title('Force Sensor Heatmap')
plt.colorbar(heatmap)


# Labels for each sensor
# sensor_labels = ['V1', 'V2', 'V3', 'V4']
# for i, label in enumerate(sensor_labels):
#     ax.text(i % 2, i // 2, label, ha='center', va='center', color='white')

def update_heatmap(v1, v2, v3, v4):
    # Create a 2x2 array with the sensor values
    print(v1, v2, v3, v4)
    data = np.array([[v1, v2], [v3, v4]])
    
    # Update the heatmap
    heatmap.set_array(data)
    
    # Update the color scale if needed
    heatmap.set_clim(vmin=vmin, vmax=vmax)
    
    # Redraw the figure
    fig.canvas.draw()
    fig.canvas.flush_events()



def getPressure():
    line = ser.readline().decode('utf-8').strip()
    match = re.match(r'Time:(-?\d+),V1:(-?\d+),V2:(-?\d+),V3:(-?\d+),V4:(-?\d+)', line)
    if match:
        _, v1, v2, v3, v4 = map(int, match.groups())
        return (v1, v2, v3, v4)
    
# def startVideoTracking():
        
# Load the YOLOv8 model
model = YOLO('yolov8m-pose.pt')
#skeletonRTTracking = model(source=0,show=False,conf=0.3,save=True)
# Open the video file
cam = cv2.VideoCapture(0)
annotated_frames = []
# # Loop through the video frames
while cam.isOpened():
    
    # Read a frame from the video
    success, frame = cam.read()

    if not success:
        break

# Run YOLOv8 tracking on the frame, persisting tracks between frames
    results = model.track(frame, persist=True, tracker ='bytetrack.yaml', conf=0.05, classes=0)

#     # Visualize the results on the frame
    annotated_frame = results[0].plot()
    v1, v2, v3, v4 = getPressure()
    cv2.imshow("YOLOv8 Tracking", annotated_frame)
    update_heatmap(v1, v2, v3, v4)
    
    
    # Break the loop if 'q' is pressed
    if cv2.waitKey(1) & 0xFF == ord("q"):
        break

    # # Release the video capture object and close windows
    # startVideoTracking()
cam.release()
# out.release()
cv2.destroyAllWindows()
