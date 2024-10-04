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

source "$ZSH_DIR"/prompt.zsh

# NVM - NodeJS Version Manager
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# For JSTG
# export JSTG_DB_POSTGRESQL=postgres://ben:PISQL@jsotqln01/jsot

bindkey '^[[A' history-substring-search-up
# bindkey '^[[B' history-substring-search-down

function list_installed_plugins() {
    for file in "$ZSH_DIR"/plugins/*/*.(plugin.zsh|zsh-theme)(#qN); do
        echo $file
    done

}
