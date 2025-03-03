# Quickstart Utility Scripts

Version: 0.1.0

Code name: N/A

## Introduction

&emsp;
A set of utility shell scripts to quickly launch relevant ROS programs on the Pi (and eventually the Jetson) so as not to have to look up all the launch commands and file permission settings everytime. This code is provided to conveniently let you start various ROS scripts, such as the CameraSystem, DriveSysteb, ScienceSystem, and webserver no matter where Pi's file directory you are and without running into issues forgetting to set file permissions.

&emsp;
The primary feature of this script is to ensure that you don't forget to set pin and file permisisons. This is NOT intended to replace or guarantee abiding by the most up to date documentation of these rover systems. It is YOUR RESPONSIBILITY to ensure that the documentation is being followed; this is just for additional convenience.

These scripts require everything to be stored in `~/Desktop`. This can be easily changed by reading and editing the various scripts. When in doubt about what a script will do, quickly read through the script itself, and read through the relevant documentation. Some scripts will contain `sudo` calls within them to properly set file permissions for various outputs (e.g. cameras, physical pins on the Pi). These should be safe (again, it is your responsibility to check before running any command with root permissions), but the actual scripts themselves are not designed to be run with root permissions.

As of 3/3/2025, all scripts are installed and work as intended on the Arm Raspberry Pi.

## Setup

Ensure `~/bin` exists and is added to your path. Clone this repo anywhere on the system.

From inside the root directory of this repo, run
```bash 
./copy.sh
```

This will copy everything in `scripts` to `~/bin`.

## Usage

Type the name of the script you want to use in the terminal and run it. You can also just write `quickstart_` and hit tab to see available options.

## Scripts installed

- `quickstart_arm.sh`
    - Starts the ArmSoftware ROS node and specifies the pins used for the arm (even though the defaults 
        should work as expected)
- `quickstart_pin_perms.sh`
    - Starts the `pigpiod` daemon and changes the permissions on `/dev/gpiomem` to allow usage of Pi programs invoking GPIO pins. You likely don't need to run this on its own unless you're making a new program that reads/writes to the physical pins on the Pi.
- `quickstart_camera.sh`
    - Starts the CameraSystem program using Chromium provided by flatpak
- `quickstart_science.sh` 
    - Starts the ScienceSystem
- `quickstart_drive.sh`
    - Starts the DriveSystem
- `quickstart_webserver.sh`
    - Starts a ROS webserver to interface with the ControlSystem on an external computer connected over a network
