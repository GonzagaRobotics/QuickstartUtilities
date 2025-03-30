#!/usr/bin/env bash

# Utility script by Lucas to quickly start the CameraSystem ROS module

sudo chmod 666 /dev/video0

# $(which chromium) returns the snap version of chromium at the moment               
cd ${HOME}/Desktop/CameraSystem && ros2 launch launch/combined.launch.py chromium_path:=$(which chromium)
