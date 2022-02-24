#!/bin/bash

#make sure to make this executable and use it with sudo
#replace amdgpu_bl0 with whatever you use

destination=/sys/class/backlight/amdgpu_bl0
max_brightness=$(cat $destination/max_brightness)

read -p "Enter brightness: " brightness
echo "$brightness" > $destination/brightness

echo "current brightness is $brightness"
