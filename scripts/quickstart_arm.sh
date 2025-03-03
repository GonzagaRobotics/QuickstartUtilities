#!/usr/bin/env bash

# Quick utility script to start the arm by Lucas
quickstart_pin_perms.sh && cd ${HOME}/Desktop/ArmSoftware/ && source install/local_setup.bash && ros2 run arm arm --ros-args -p shoulder_pwm:=13 -p shoulder_dir:=6 -p forearm_pwm:=19 -p forearm_dir:=26 -p wrist_pwm:=12 -p wrist_dir:=16 -p base_pwm:=22 -p base_dir:=27 -p left_grabber_pwm:=10 -p right_grabber_pwm:=9 -p x_dir:=14 -p x_step:=15

