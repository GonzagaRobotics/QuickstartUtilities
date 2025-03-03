#!/usr/bin/env bash

# Utility script made by Lucas to quickly start the science module

quickstart_pin_perms.sh && cd ${HOME}/Desktop/ScienceSystem && source install/local_setup.bash && ros2 launch launch/launch.py
