#!/bin/bash

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias cd..="cd .."

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
alias :q="exit"
alias q="exit"
alias c="clear"
alias ch="history -c && > ~/.bash_history && > ~/.zsh_history"
alias d="cd ~/Desktop"
alias g="git"
alias py="python"
alias ll="ls -l"
alias m="man"
alias search='history|grep'
# Protect yourself from file removal accidents
alias trash='mv --force -t ~/.local/share/Trash '
alias chmox='chmod -x'
# URL-encode strings
alias urlencode='py -c "import sys, urllib.parse; print(urllib.parse.quote_plus(str(sys.argv[0:])))"'

# Docker Aliases
alias dkps="docker ps --format '{{.ID}} ~ {{.Names}} ~ {{.Status}} ~ {{.Image}}'"
alias dkl='docker logs'
alias dklf='docker logs -f'
alias dku="docker-compose up"
alias dkd="docker-compose down"

# For personal use
alias reboot='systemctl reboot -i'

# GitHub
alias gitreset="git fetch upstream && git reset --hard upstream/main && git push origin main --force"

# Exa - modern ls
alias ls='exa -al --color=always --group-directories-first --header'

alias lg='lazygit'
