#!/bin/bash
sudo aptitude autoclean
rm -rf ~/.thumbnails/*
rm ~/.local/share/recently-used.xbel
rm -r -f ~/.local/share/Trash/files/*
sudo aptitude clean 
sudo apt-get autoclean
sudo apt-get autoremove
find ~/ -name '*~' -exec rm {} \;
rm -rf ~/.mozilla/firefox/x.default/cache/*
exit 0
