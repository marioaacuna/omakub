#!/bin/bash

if [ ! -f /etc/os-release ]; then
  echo "$(tput setaf 1)Error: Unable to determine OS. /etc/os-release file not found."
  echo "Installation stopped."
  exit 1
fi

. /etc/os-release

# Check if running on Ubuntu 24.04+ or Pop OS 24.04+
if [ "$ID" != "ubuntu" ] && [ "$ID" != "pop" ]; then
  echo "$(tput setaf 1)Error: Unsupported OS"
  echo "You are currently running: $ID $VERSION_ID"
  echo "Supported OS: Ubuntu 24.04+ or Pop OS 24.04+"
  echo "Installation stopped."
  exit 1
fi

if [ $(echo "$VERSION_ID >= 24.04" | bc) != 1 ]; then
  echo "$(tput setaf 1)Error: OS version too old"
  echo "You are currently running: $ID $VERSION_ID"
  echo "Required version: 24.04 or higher"
  echo "Installation stopped."
  exit 1
fi

# Check if running on x86
ARCH=$(uname -m)
if [ "$ARCH" != "x86_64" ] && [ "$ARCH" != "i686" ]; then
  echo "$(tput setaf 1)Error: Unsupported architecture detected"
  echo "Current architecture: $ARCH"
  echo "This installation is only supported on x86 architectures (x86_64 or i686)."
  echo "Installation stopped."
  exit 1
fi
