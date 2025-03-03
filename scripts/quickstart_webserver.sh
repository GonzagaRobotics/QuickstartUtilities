#!/usr/bin/env bash

# Utility command by Lucas to speed up running the ROS webserver
cd ${HOME}/Desktop/ && ros2 launch rosbridge_server rosbridge_websocket.launch.xml
