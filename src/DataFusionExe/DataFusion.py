
# from PressureReadings.project.toolchain.projects.wiiboard.sensor_data.data_read import update
# import tensorflow as tf
# # import tensorflow_hub as hub
# from tensorflow import keras
import numpy as np
import cv2
import ultralytics
ultralytics.checks()
from ultralytics import YOLO
import re
import serial
import matplotlib.pyplot as plt
import re
import json

# Some modules to display an animation using imageio.
from IPython.display import display
# ser_buffer = ""

annotatedFrames = []
i=0

_conf = input("Which os system are u using? MAC or WIN \n")
_maxConf = input("What is the maximum weight expected on the wii board \n")

if _conf == "WIN":
    # Configure the serial connection
    ser = serial.Serial(
        port='COM6',         # Set to the appropriate COM port
        baudrate=9600,       # Adjust to match your device's baud rate
        parity=serial.PARITY_NONE,
        stopbits=serial.STOPBITS_ONE,
        bytesize=serial.EIGHTBITS,
        timeout=1            # Timeout for reading (in seconds)
    )
elif _conf== "MAC":
        ser = serial.Serial("/dev/cu.usbmodem101", 9600, timeout=1)

else:
    # Configure the serial connection
    ser = serial.Serial(
        port='COM6',         # Set to the appropriate COM port
        baudrate=9600,       # Adjust to match your device's baud rate
        parity=serial.PARITY_NONE,
        stopbits=serial.STOPBITS_ONE,
        bytesize=serial.EIGHTBITS,
        timeout=1            # Timeout for reading (in seconds)
    )

vmin=0
vmax=_maxConf

# Set up the plot
plt.ion()  # Turn on interactive mode
fig, ax = plt.subplots()
heatmap = ax.imshow(np.zeros((2, 2)), cmap='hot', interpolation='nearest', vmin=vmin, vmax=vmax)
ax.set_title('Force Sensor Heatmap')
plt.colorbar(heatmap)


# Labels for each sensor
sensor_labels = ['V1', 'V2', 'V3', 'V4']
for i, label in enumerate(sensor_labels):
    ax.text(i % 2, i // 2, label, ha='center', va='center', color='white')

def getSlopes(sps=640, gain=128):
    """
    get the V1,V2,V3,V4 values of the slopes and intercepts from the regressionVi_sps_gain.json
    """
    for label in sensor_labels:
        input_file = 'regression_' + label + '_' + str(sps) + '_' + str(gain) + '.json'

sensor_labels = ['V1', 'V2', 'V3', 'V4']  # Assuming these are the sensor labels

def getSlopes(sps=640, gain=128):
    """
    Get the slope and intercept values from the regression JSON files for each sensor.
    
    Args:
    sps (int): Samples per second, default is 640.
    gain (int): Gain value, default is 128.
    
    Returns:
    tuple: A tuple containing all slope and intercept values for V1, V2, V3, and V4.
    """
    slopes = []
    intercepts = []
    
    for label in sensor_labels:
        # input_file = 'regression_' + label + '_' + str(sps) + '_' + str(gain) + '.json'
        if _conf == "MAC":
            input_file = f'PressureReadings/project/toolchain/projects/wiiboard/sensor_data/results/regression_{label}_{sps}_{gain}.json'
        else:
            input_file = f'PressureReadings\\project\\toolchain\\projects\\wiiboard\\sensor_data\\results\\regression_{label}_{sps}_{gain}.json'
        
        try:
            # Open and load the JSON file
            with open(input_file, 'r') as f:
                data = json.load(f)
                # Extract the slope and intercept values
                slope = data[0]['slope']
                intercept = data[0]['intercept']
                
                slopes.append(slope)
                intercepts.append(intercept)
        
        except FileNotFoundError:
            print(f"File not found: {input_file}")
        except json.JSONDecodeError:
            print(f"Error decoding JSON file: {input_file}")
        except (KeyError, IndexError):
            print(f"Error reading slope/intercept from: {input_file}")
    
    # Unpack the slopes and intercepts and return as separate variables
    return (*slopes, *intercepts)

# Example usage to get individual variables
V1Slope, V2Slope, V3Slope, V4Slope, V1Intercept, V2Intercept, V3Intercept, V4Intercept = getSlopes()


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

def update_heatmap_blit(v1, v2, v3, v4, fig, heatmap, ax):
    data = np.array([[v1, v2], [v3, v4]])
    heatmap.set_array(data)
    heatmap.set_clim(vmin=vmin, vmax=vmax)
    
    # Redraw only the heatmap
    ax.draw_artist(heatmap)
    fig.canvas.blit(ax.bbox)  # Efficiently update only the portion of the canvas
    fig.canvas.flush_events()  # Ensure the canvas updates



def getPressureFaster():
    try:
        ser_buffer = ""
        # Read available bytes from the serial buffer
        ser_bytes = ser.read(ser.in_waiting or 1)  # Read what's in the buffer, or at least 1 byte
        
        # Accumulate the bytes in a buffer
        ser_buffer += ser_bytes.decode('utf-8')
        
        # Check for a complete line in the buffer
        if '\n' in ser_buffer:
            # Split the buffer at the newline character
            lines = ser_buffer.split('\n')
            complete_line = lines[0].strip()  # Get the first complete line
            ser_buffer = '\n'.join(lines[1:])  # Keep the rest in the buffer
            
            # Process the complete line
            match = re.match(r'Time:(-?\d+),V1:(-?\d+),V2:(-?\d+),V3:(-?\d+),V4:(-?\d+)', complete_line)
            if match:
                _, v1, v2, v3, v4 = map(int, match.groups())
                v1,v2,v3,v4 = getWeight(v1,v2,v3,v4 )
                return (v1, v2, v3, v4)
        return (0,0,0,0)
    except serial.SerialException as e:
        print("Serial communication error:", e)

def getWeight(v1,v2,v3,v4):
    weightedV1 = V1Slope * v1 + V1Intercept
    weightedV2 = V2Slope * v2 + V2Intercept
    weightedV3 = V3Slope * v3 + V3Intercept
    weightedV4 = V4Slope * v4 + V4Intercept
    return (weightedV1,weightedV2,weightedV3,weightedV4)
    

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
    v1, v2, v3, v4 = getPressureFaster() 
    cv2.imshow("YOLOv8 Tracking", annotated_frame)
    update_heatmap_blit(v1, v2, v3, v4, fig, heatmap, ax)
    
    # Break the loop if 'q' is pressed
    if cv2.waitKey(1) & 0xFF == ord("q"):
        break

    # # Release the video capture object and close windows
    # startVideoTracking()
cam.release()
# out.release()
cv2.destroyAllWindows()
