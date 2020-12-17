#!/bin/bash

# Set TimeZone
timedatectl set-timezone America/New_York

# Disable Automatic Date/Time
timedatectl set-ntp 0

# Install Zip
apt-get install zip

# Install rsync
apt-get install rsync

# Install Updates
apt-get update && sudo apt-get upgrade



# End of Line