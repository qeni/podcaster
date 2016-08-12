#!/bin/bash

BIN="./bin/podcaster"
ICON="./img/podcaster.ico"
CONFIG="./src/podcaster.ini"
DEST_BIN="/usr/local/bin/podcaster"
DEST_ICON="/usr/share/icons/hicolor/64x64/apps/podcaster.ico"
DEST_DESKTOP="/usr/share/applications"
DEST_CONFIG="$HOME/.config/podcaster/podcaster.ini"

cecho() {
  local code="\033["
  case "$1" in
    black  | bk) color="${code}0;30m";;
    red    |  r) color="${code}1;31m";;
    green  |  g) color="${code}1;32m";;
    yellow |  y) color="${code}1;33m";;
    blue   |  b) color="${code}1;34m";;
    purple |  p) color="${code}1;35m";;
    cyan   |  c) color="${code}1;36m";;
    gray   | gr) color="${code}0;37m";;
    *) local text="$1"
  esac
  [ -z "$text" ] && local text="$color$2${code}0m"
  printf "$text"
}

cecho g ":: Copying config files\n"
mkdir -p $HOME/.config/podcaster
cp "$CONFIG" "$DEST_CONFIG"

cecho g ":: Copying icon files\n"
sudo cp "$ICON" "$DEST_ICON"

cecho g ":: Copying desktop files\n"
sudo cp ./src/podcaster.desktop "$DEST_DESKTOP"
sudo cp ./src/podcaster_private_playlist.desktop "$DEST_DESKTOP"

cecho g ":: Copying binary files\n"
sudo cp "$BIN" "$DEST_BIN"
sudo chmod +x "$DEST_BIN"

cecho b ":: Installation completed!\n"
