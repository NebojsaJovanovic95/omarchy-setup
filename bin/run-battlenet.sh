#!/usr/bin/env bash
PROTON="/home/nebojsa/.steam/steam/steamapps/common/Proton - Experimental/proton"
PREFIX="/home/nebojsa/.steam/steam/steamapps/compatdata/2906910801/pfx"
"$PROTON" run --prefix "$PREFIX" "$PREFIX/drive_c/Program Files (x86)/Battle.net/Battle.net Launcher.exe"
