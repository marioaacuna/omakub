#!/bin/bash

for script in ~/.local/share/omakub/applications/*.sh; do
  # Skip Docker and Basecamp applications
  if [[ "$script" == *"Docker.sh" ]] || \
     [[ "$script" == *"Basecamp.sh" ]]; then
    continue
  fi
  source $script
done
