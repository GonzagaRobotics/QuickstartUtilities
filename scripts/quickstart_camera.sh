#!/usr/bin/env bash

# Utility script by Lucas to quickly start the CameraSystem ROS module

sudo chmod 666 /dev/video0

# Using flatpak Chromium
cd ${HOME}/Desktop/CameraSystem && ./start.sh /var/lib/flatpak/app/org.chromium.Chromium/aarch64/stable/active/export/bin/org.chromium.Chromium

# # Using snap Chromium
# cd ${HOME}/Desktop/CameraSystem && ./start.sh /usr/bin/chromium-browser


