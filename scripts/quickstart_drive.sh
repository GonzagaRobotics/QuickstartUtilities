#!/usr/bin/env bash 

# Quick utility script made by Lucas to start up the drive system

sudo chmod 666 /dev/ttyUSB0 && cd ${HOME}/Desktop/DriveSystemROS && source install/local_setup.bash && ros2 run drive_system drive_system
