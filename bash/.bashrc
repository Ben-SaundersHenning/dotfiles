# Sample .bashrc for SuSE Linux
# Copyright (c) SuSE GmbH Nuernberg


# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
export EDITOR=/usr/bin/nvim

# ---> CUSTOM ADDITIONS HERE <--- #

# -> PROMPT <- #

#changing the bash prompt, sept 12 2022:
#PS1="\[\033[1;32m\]➜ \[\033[1;34m\]\W \[\033[0m\]"
#export PS1

#changing the bash prompt, Oct 20, 2022:
# PS1="\[\033[1;34m\]\W \[\033[0m\]\[\033[1;32m\]-> \[\033[0m\]"
# export PS1

#changing the bash prompt (git signs), Sept 16, 2023:
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
PS1="\[\033[1;34m\]\W\[\033[0m\]\$git_prompt\[\033[1;32m\] -> \[\033[0m\]"
export PS1

# -> PATH <- #

# pnpm
export PNPM_HOME="/home/ben/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# -> FZF Stuff <- #
#
#automatically put there by fzf installtion (not through zypper)
[ -f ~/.fzf.bash ] && source ~/.fzf.bash


# -> ALIAS LIST <- #

alias ff="cd ~ && cd \$(fd -LH | fzf)"

alias nvimconfig="cd ~/dotfiles/nvim/.config/nvim && nvim init.lua"

function update() {

    echo "Running the following command: 'sudo zypper ref && sudo zypper dup'";
    sudo zypper refresh && sudo zypper dup;

}

function socs() {
    echo "-- OFF campus WIFI --

1. ssh school-socs
2. ssh linux.socs.uoguelph.ca

-- ON campus WIFI

1. ssh bsaund03@linux.socs.uoguelph.ca";
}

# -> OTHER <- #

# Env variable for Raspberry Pi Postgresql DB
export JSTG_DB_POSTGRESQL=postgres://ben:PISQL@jsotqln01/jsot
# export DATABASE_URL=postgres://ben:PISQL@jsotqln01/jsot

# temporary Tauri fix
# export WEBKIT_DISABLE_COMPOSITING_MODE=1


export PATH=$PATH:/home/ben/.spicetify
