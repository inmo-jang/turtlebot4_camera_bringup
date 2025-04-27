#!/bin/bash

# Move to workspace
cd ~/ros2_ws || { echo "Failed to cd into ~/ros2_ws"; exit 1; }

# Find and kill any process related to 'okad'
echo "Searching for processes related to 'okad'..."
PIDS=$(ps aux | grep oakd | grep -v grep | awk '{print $2}')
if [ -n "$PIDS" ]; then
    echo "Killing processes: $PIDS"
    kill -9 $PIDS
else
    echo "No running 'okad' processes found."
fi

# Source workspace
echo "Sourcing ROS 2 workspace..."
source install/local_setup.bash

# Launch
echo "Launching rgb_stereo_node.launch.py..."
ros2 launch depthai_examples stereo.launch.py

cd ~