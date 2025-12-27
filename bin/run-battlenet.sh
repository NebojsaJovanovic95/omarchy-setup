#!/usr/bin/env bash

export STEAM_COMPAT_CLIENT_INSTALL_PATH="/home/nebojsa/.steam/steam"
export STEAM_COMPAT_DATA_PATH="/home/nebojsa/.steam/steam/steamapps/compatdata/2906910801"

PROTON="/home/nebojsa/.steam/steam/steamapps/common/Proton - Experimental/proton"

"$PROTON" run \
"/home/nebojsa/.steam/steam/steamapps/compatdata/2906910801/pfx/drive_c/Program Files (x86)/Battle.net/Battle.net Launcher.exe"
