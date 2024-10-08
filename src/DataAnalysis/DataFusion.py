import ImageRecognition.SkeletonTracking.py as SkltTrack



# Start an infinite loop
while True:
    SkltTrack.startVideoTracking()
    # Check if 'q' is pressed
    if keyboard.is_pressed('q'):
        print("You pressed 'q'. Exiting...")
        break
