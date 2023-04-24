#!/bin/bash
# I'm lazy and I prefer to automatize this series of commands, since I have to try much different settings
# This bash require root on ADB (if you have android 12+ is the only option I have found)
adb devices
sleep 30s
adb root
sleep 30s
adb push device_profile_FP3+.textproto /data/data/com.google.ar.core/files/custom_devices_profile.textproto