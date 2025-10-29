#!/bin/bash

cat <<EOF >~/.local/share/applications/HEY.desktop
[Desktop Entry]
Version=1.0
Name=HEY
Comment=HEY Email + Calendar
Exec=firefox --new-window --name=HEY --class=HEY "https://app.hey.com/"
Terminal=false
Type=Application
Icon=/home/$USER/.local/share/omakub/applications/icons/HEY.png
Categories=GTK;
MimeType=text/html;text/xml;application/xhtml_xml;
StartupNotify=true
EOF
