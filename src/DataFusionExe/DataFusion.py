
from PressureReadings.project.toolchain.projects.wiiboard.sensor_data.data_read import update
import tensorflow as tf
import tensorflow_hub as hub
import numpy as np
import cv2
import ultralytics
ultralytics.checks()
from ultralytics import YOLO
import subprocess
import time
# Some modules to display an animation using imageio.
from IPython.display import display

annotatedFrames = []
i=0
def startVideoTracking():
        
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
        
        cv2.imshow("YOLOv8 Tracking", annotated_frame)
        print(update(time))

        cv2.imshow("YOLOv8 Tracking", annotated_frame)
        # Display the annotated frame
        
        # Break the loop if 'q' is pressed
        #if cv2.waitKey(1) & 0xFF == ord("q"):
            #break

    # # Release the video capture object and close windows
    startVideoTracking()
    cam.release()
    out.release()
    cv2.destroyAllWindows()
