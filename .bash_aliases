#!/usr/bin/env bash

[[ -s $HOME/bashmarks.sh ]] && source $HOME/bashmarks.sh

alias e="source .env"
alias ee="source .env.example"

alias bas="source ~/.bash_aliases"
alias bars="source ~/.bashrc"

timestamp() {
  date -d "@${1}"
}

alias ka="killall -9 "
k9() {
  kill -9 "$1"
}
grepkill() {
  grepProcesses | kill -9 "$1"
}

alias ls="ls -lh"
alias ll='ls -lFh'
alias la='ls -A'
alias grep='grep --color'
r() {
	exec "$SHELL"
}

alias cx='chmod +x'

mvbak() {
  mv "$1"{,.bak}
}
bak() {
  cp -r "$1"{,.bak}
}

# $1 = length of password
secret() {
  source /workspaces/platformproduct-enablementai-oem-integration/secrets.env
  # openssl rand -base64 "$1"
}

diskUsage() {
  du -ah "$1" | sort -n -r | head -n 30
}

alias userslist="cut -d: -f1 /etc/passwd"
# alias envaz="env | grep ARM | less"
alias ptree="ps -aef --forest"
alias treego="tree -L 3 -I 'vendor|bin'"
alias treeignore="tree -L 3 -I "
alias etc="sudo vim /etc/hosts"
# get nameservers
digns() {
  dig @8.8.8.8 +short NS "$1"
}

##################
# source
##################
als=()
als+=("git" "extra")
for al in "${als[@]}"; do
	if [[ -s "$HOME/.bash_aliases_${al}" ]]; then
		. "$HOME/.bash_aliases_${al}"
	fi
done

export GLOBIGNORE=.:..
