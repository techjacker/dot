#!/usr/bin/env bash

SCRIPT_DIR=$(dirname "$(realpath "$0")")

ln -s "$SCRIPT_DIR/.bash_aliases" "$HOME/.bash_aliases"
ln -s "$SCRIPT_DIR/.bash_aliases_git" "$HOME/.bash_aliases_git"
ln -s "$SCRIPT_DIR/.bash_aliases_tribe" "$HOME/.bash_aliases_tribe"
