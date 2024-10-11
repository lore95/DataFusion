DATA INTEGRATION: FORCE SENSORS AND SKELETON TRACKING
This section contains the code responsible for merging the data from the two core technologies used in this project: force sensors from the Wii board and video-based skeleton tracking. The integration of these datasets allows for the creation of a detailed and accurate 3D model, which is essential for evaluating a patient's post-surgery knee recovery.

- The folder ImageRecognition contains all the code related to skeleton tracking development.
- The folder PressureReadings contains the implementation for reading force data from the Wii board's sensors.
- The script DataFusion.py integrates the data from both sources and runs the program.
- The requirements.txt file lists all necessary dependencies for the project.
- We use the yolov8m-pose.pt model for skeleton tracking.

INSTALLATION (WIP)
Clone the repository: git clone https://github.com/lore95/DataFusion.git
Install dependencies: pip install -r requirements.txt
Run the application: python DataFusion.py

USAGE
Connect the Wii board to your USB port.
Launch the video recognition system.
Start collecting data for post-surgery knee rehabilitation analysis.