# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob nomatch
unsetopt autocd beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ben/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

setopt globdots

GIT='git'
ZSH_DIR="$HOME/.zsh"

source "$ZSH_DIR"/prompt.zsh

# Load plugin list
source ~/.zsh/plugin_list.zsh
# Clone any plugins that are not already cloned
for key value in "${(@kv)PLUGINS}"; do
    # If the plugin is not downloaded
    if [ ! -d "$ZSH_DIR/plugins/$key" ]; then
        printf "Plugin '$key' not found. Attempting to install..." "\n"
        $GIT clone "$value" "$ZSH_DIR/plugins/$key"
    fi
done

# Source all plugins
for file in "$ZSH_DIR"/plugins/*/*.(plugin.zsh|zsh-theme)(#qN); do
    source $file
done
unset file

# Conditonal configuration for machines
if [[ $(uname) == "Darwin" ]]; then

    #MacOS
    source "$ZSH_DIR"/mac.zsh


elif [[ "$OSTYPE" == "linux-gnu"* ]]; then

    #Tumbleweed
    source "$ZSH_DIR"/tumbleweed.zsh


fi

# For JSTG
# export JSTG_DB_POSTGRESQL=postgres://ben:PISQL@jsotqln01/jsot

bindkey '^[[A' history-substring-search-up
# bindkey '^[[B' history-substring-search-down

alias ls='lsd'
alias la='lsd -la'

function list_installed_plugins() {
    for file in "$ZSH_DIR"/plugins/*/*.(plugin.zsh|zsh-theme)(#qN); do
        echo $file
    done
}

function socs() {
    echo "-- OFF campus WIFI --

1. ssh school-socs
2. ssh linux.socs.uoguelph.ca

-- ON campus WIFI

1. ssh bsaund03@linux.socs.uoguelph.ca";
}

# Temp for Tauri dev
export WEBKIT_DISABLE_DMABUF_RENDERER=1
# export WEBKIT_DISABLE_COMPOSITING_MODE=1
