Project: ML Video Recognition & Pressure Boards for Post-Surgery Knee Rehabilitation @ KTH

INTRODUCTION
This project integrates machine learning-based video recognition and pressure boards to combine extrapolated data, generating an accurate 3D model of forces and human body movement. The main goal is to evaluate a patient's muscular power and movement fluidity, essential for monitoring progress in post-surgery knee rehabilitation.

PROBLEM STATEMENT
Evaluating muscle power and movement fluidity is crucial for tracking post-surgery recovery in patients with knee injuries. Traditionally, physiotherapists rely on qualitative assessments or expensive equipment to obtain reliable data. This project aims to provide a cost-effective, accurate, and universal solution for precise measurements through force sensors and skeleton tracking technology.

SOLUTION
Our system leverages data from four force sensors on a Wii board combined with video-based skeleton tracking to offer enhanced evaluations of knee recovery. By providing precise metrics, it complements and improves traditional methods of physiotherapy, offering a more data-driven approach to post-surgery rehabilitation.

HOW IT WORKS
Force Sensors: Four force sensors from a Wii board collect data on pressure distribution during movement.
Skeleton Tracking: Video-based skeleton tracking technology captures the movement and alignment of the patient's body.
Data Integration: Both sources of data are combined to create a 3D model that visualizes forces and motion, allowing for detailed analysis of knee recovery progress.


CONTRIBUTING
We welcome contributions! Please feel free to submit a pull request or raise an issue to discuss improvements or report bugs.


PROJECT STRUCTURE
Src/DataFusionExe
-DataFusion.py
	This file contains the code responsible for merging the data from the two core technologies used in this project: force sensors from the Wii board and video-based skeleton tracking. The integration of these datasets allows for the creation of a detailed and accurate 3D model, which is essential for evaluating a patient's post-surgery knee recovery.

-ImageRecognition AND PressureReadings:
	The folder ImageRecognition contains all the code related to skeleton tracking development and testing.
	The folder PressureReadings contains the implementation for reading force data from the Wii board's sensors.

-Requirements.txt
	The requirements.txt file lists all necessary dependencies for the project.

-yolov8m-pose.pt
	We use the yolov8m-pose.pt model for skeleton tracking.

INSTALLATION (WIP)
Clone the repository: git clone https://github.com/lore95/DataFusion.git
Install dependencies: pip install -r requirements.txt
Follow the steps in the Readme file located in PressureReadings
Run the application: python DataFusion.py

USAGE
Connect the Wii board to your USB port.
Start collecting data for post-surgery knee rehabilitation analysis.

The project communication channel: https://app.clickup.com/9012214187/v/b/s/90121097948

