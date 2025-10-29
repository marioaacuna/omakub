#!/bin/bash

cat <<EOF >~/.local/share/applications/WhatsApp.desktop
[Desktop Entry]
Version=1.0
Name=WhatsApp
Comment=WhatsApp Messenger
Exec=firefox --new-window --name=WhatsApp --class=Whatsapp "https://web.whatsapp.com"
Terminal=false
Type=Application
Icon=/home/$USER/.local/share/omakub/applications/icons/WhatsApp.png
Categories=GTK;
MimeType=text/html;text/xml;application/xhtml_xml;
StartupNotify=true
EOF
