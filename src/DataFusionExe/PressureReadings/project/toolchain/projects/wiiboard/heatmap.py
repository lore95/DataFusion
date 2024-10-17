import serial
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import re
import numpy as np
from scipy.ndimage import zoom
from collections import deque
import datetime
import os


# Configure the serial connection
ser = serial.Serial(
    port='COM6',         # Set to the appropriate COM port
    baudrate=9600,       # Adjust to match your device's baud rate
    parity=serial.PARITY_NONE,
    stopbits=serial.STOPBITS_ONE,
    bytesize=serial.EIGHTBITS,
    timeout=1            # Timeout for reading (in seconds)
)

# Create a figure and axis for the heatmap
fig, ax = plt.subplots()
vmin = -1000000
vmax=0
# Initialize the 2x2 matrix for the heatmap (this represents the four sensor values)
heatmap_data = np.zeros((2, 2))

# Create the heatmap with initial data, using the full range of vmin to vmax0
# Using interpolation 'bilinear' to smooth the transitions
heatmap = ax.imshow(heatmap_data, cmap='hot', interpolation='bilinear', vmin=vmin, vmax=vmax)

# Set colorbar for reference
cbar = plt.colorbar(heatmap)
cbar.set_label('Force Value')

# Queues to store recent data points for smoothing (Moyenne glissante sur 10 dernières valeurs)
window_size = 10
v1_history = deque(maxlen=window_size)
v2_history = deque(maxlen=window_size)
v3_history = deque(maxlen=window_size)
v4_history = deque(maxlen=window_size)



def init():
    """Initialize the plot (heatmap)."""
    heatmap.set_data(np.zeros((2, 2)))  # Initialize with zeros
    return [heatmap]

def update(frame):
    """Update the heatmap with new sensor values."""
    line = ser.readline().decode('utf-8').strip()
    match = re.match(r'Time:\d+,V1:(-?\d+),V2:(-?\d+),V3:(-?\d+),V4:(-?\d+)', line)
    if match:
        v1, v2, v3, v4 = map(int, match.groups())

        print(datetime.now())
        # Clamp values to the range (vmin to 10000) to avoid extreme values affecting the plot
        v1 = np.clip(v1, vmin, vmax)
        v2 = np.clip(v2, vmin, vmax)
        v3 = np.clip(v3, vmin, vmax)
        v4 = np.clip(v4, vmin, vmax)
        # Add the new values to the history deque
        v1_history.append(v1)
        v2_history.append(v2)
        v3_history.append(v3)
        v4_history.append(v4)

        # Compute the moving average for each sensor
        v1_avg = np.mean(v1_history)
        v2_avg = np.mean(v2_history)
        v3_avg = np.mean(v3_history)
        v4_avg = np.mean(v4_history)

        # Clamp values to the range (vmin to vmax)
        v1_avg = np.clip(v1_avg, vmin, vmax)
        v2_avg = np.clip(v2_avg, vmin, vmax)
        v3_avg = np.clip(v3_avg, vmin, vmax)
        v4_avg = np.clip(v4_avg, vmin, vmax)

        # Update the heatmap data (2x2 matrix representing the four sensors)
        heatmap_data[0, 0] = v1_avg  # Top-left
        heatmap_data[0, 1] = v2_avg  # Top-right
        heatmap_data[1, 0] = v3_avg  # Bottom-left
        heatmap_data[1, 1] = v4_avg  # Bottom-right


        # Smooth the heatmap by interpolating the 2x2 grid to a larger grid (e.g., 100x100)
        smoothed_heatmap = zoom(heatmap_data, zoom=3)  # Adjust the zoom factor as needed for smoothness

        # Update the heatmap display
        heatmap.set_data(smoothed_heatmap)
        print(datetime.now())

        return [heatmap]
        
# Set up animation to continuously update the heatmap
ani = animation.FuncAnimation(fig, update, init_func=init, blit=True, interval=0.1)

plt.show()

# Close the serial port after closing the plot window
ser.close()
