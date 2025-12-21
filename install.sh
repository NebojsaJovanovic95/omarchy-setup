#!/usr/bin/env bash
rsync -a ./bin/. "$HOME/.local/bin/"
rsync -a ./config/hypr/ "$HOME/.config/hypr/"
