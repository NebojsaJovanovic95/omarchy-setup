#!usr/bin/dev bash
rsync -a ./bin/. "$HOME/.local/bin/"
rsync -a ./config/hypr/ "$HOME/.config/hypr/"
