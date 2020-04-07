#!/bin/bash

nativefier --name "WhatsApp" --icon whatsapp-nativefier.png --width "900px" --height "600px" --inject "whatsapp-nativefier-inject.js" --verbose --single-instance --tray "https://web.whatsapp.com"

sudo cp -r WhatsApp-linux-x64 /usr/lib/whatsapp
sudo ln -s /usr/lib/whatsapp /usr/bin/whatsapp

sudo chown root:root /usr/lib/whatsapp/chrome-sandbox
sudo chmod 4755 /usr/lib/whatsapp/chrome-sandbox

sudo cp whatsapp-nativefier.desktop /usr/share/applications/whatsapp.desktop
sudo cp whatsapp-nativefier.png /usr/share/pixmaps/whatsapp.png

rm -rf WhatsApp-linux-x64/
