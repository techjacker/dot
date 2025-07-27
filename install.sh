#!/usr/bin/env bash

SCRIPT_DIR=$(dirname "$(realpath "$0")")

# cat "$SCRIPT_DIR/.gitconfig" >> "$HOME/.gitconfig"


# if [[ -f $HOME/.bash_aliases ]]; then
# 	rm -f "$HOME/.bash_aliases"
# fi
ln -sf "$SCRIPT_DIR/.bash_aliases" "$HOME/.bash_aliases"
ln -sf "$SCRIPT_DIR/.bash_aliases_git" "$HOME/.bash_aliases_git"
ln -sf "$SCRIPT_DIR/.bash_aliases_extra" "$HOME/.bash_aliases_extra"
ln -sf "$SCRIPT_DIR/.gitconfig" "$HOME/.gitconfig.andy"


if ! grep -q include "$HOME/.gitconfig"; then
  cat "$SCRIPT_DIR/.gitconfig.include" >> "$HOME/.gitconfig"
fi

installBashmarks() {
  git clone https://github.com/huyng/bashmarks.git
  pushd bashmarks
  make install
  popd
}

installBashmarks
