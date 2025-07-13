#!/usr/bin/env bash

SCRIPT_DIR=$(dirname "$(realpath "$0")")

# cat "$SCRIPT_DIR/.gitconfig" >> "$HOME/.gitconfig"

if [[ -f $HOME/.bash_aliases ]]; then
	rm -f "$HOME/.bash_aliases"
	ln -s "$SCRIPT_DIR/.bash_aliases" "$HOME/.bash_aliases"
	ln -s "$SCRIPT_DIR/.bash_aliases_git" "$HOME/.bash_aliases_git"
	ln -s "$SCRIPT_DIR/.bash_aliases_tribe" "$HOME/.bash_aliases_tribe"
fi

