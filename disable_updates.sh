#!/bin/bash

# Define the configuration file
CONFIG_FILE="/etc/apt/apt.conf.d/20auto-upgrades"

# Set the desired value
NEW_VALUE="0"

# Update the configuration file
sudo sed -i 's/\(^\s*APT::Periodic::Unattended-Upgrade\s*\).*\$/\1\"$NEW_VALUE\";/' '$CONFIG_FILE'

# Restart the unattended-upgrades service
sudo systemctl restart unattended-upgrades

echo "APT::Periodic::Unattended-Upgrade set to $NEW_VALUE"
