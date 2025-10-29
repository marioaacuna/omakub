#!/bin/bash

# Run desktop installers
for installer in ~/.local/share/omakub/install/desktop/*.sh; do
  # Skip Chrome, LibreOffice, Signal, and VSCode installers
  if [[ "$installer" == *"app-chrome.sh" ]] || \
     [[ "$installer" == *"app-libreoffice.sh" ]] || \
     [[ "$installer" == *"app-signal.sh" ]] || \
     [[ "$installer" == *"app-vscode.sh" ]]; then
    continue
  fi
  source $installer
done

# Logout to pickup changes
gum confirm "Ready to reboot for all settings to take effect?" && sudo reboot
