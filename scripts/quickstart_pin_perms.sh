#!/usr/bin/env bash

# Utility script by Lucas that sets the appropriate pin permissions and starts the pigpio daemon

sudo pigpiod
sudo chown arm /dev/gpiomem
sudo chmod g+rw /dev/gpiomem
