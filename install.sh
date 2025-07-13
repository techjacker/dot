#!/usr/bin/env bash

SCRIPT_DIR=$(dirname "$(realpath "$0")")

# cat "$SCRIPT_DIR/.gitconfig" >> "$HOME/.gitconfig"


# if [[ -f $HOME/.bash_aliases ]]; then
# 	rm -f "$HOME/.bash_aliases"
# fi
ln -sf "$SCRIPT_DIR/.bash_aliases" "$HOME/.bash_aliases"
ln -sf "$SCRIPT_DIR/.bash_aliases_git" "$HOME/.bash_aliases_git"
ln -sf "$SCRIPT_DIR/.bash_aliases_tribe" "$HOME/.bash_aliases_tribe"
ln -sf "$SCRIPT_DIR/.gitconfig" >> "$HOME/.gitconfig.andy"


# [include]
#     path = /home/vscode/.gitconfig.andy
