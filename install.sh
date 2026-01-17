#!/usr/bin/env bash
rsync -a ./bin/. "$HOME/.local/bin/"
rsync -a ./config/hypr/ "$HOME/.config/hypr/"
rsync -a ./desktop_apps/ "$HOME/.local/share/applications/"
rsync -a ./icons/ "$HOME/.local/share/icons/"
