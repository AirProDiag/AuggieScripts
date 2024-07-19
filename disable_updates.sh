#!/bin/bash
CONFIG_FILE="/etc/apt/apt.conf.d/20auto-upgrades"
NEW_VALUE="0"
sudo sed -i "s/^\(\s*APT::Periodic::Unattended-Upgrade\s*\).*\$/\1\"$NEW_VALUE\";/" "$CONFIG_FILE"
sudo systemctl restart unattended-upgrades
echo "APT::Periodic::Unattended-Upgrade set to $NEW_VALUE"
