#!/bin/bash

# Needed for all installers
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y curl git unzip

# Run terminal installers
for installer in ~/.local/share/omakub/install/terminal/*.sh; do
  # Skip git, docker, and zellij installers
  if [[ "$installer" == *"set-git.sh" ]] || \
     [[ "$installer" == *"docker.sh" ]] || \
     [[ "$installer" == *"app-zellij.sh" ]] || \
     [[ "$installer" == *"app-lazydocker.sh" ]]; then
    continue
  fi
  source $installer
done
