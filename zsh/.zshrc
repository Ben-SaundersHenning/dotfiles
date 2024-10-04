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

# GIT='git --git-dir='$PWD'/.git'


# Load plugins
source ~/.zsh/plugin_list.zsh

for key value in "${(@kv)PLUGINS}"; do
    # If the plugin is downloaded
    if [ -d ~/.zsh/plugins/"$key" ]; then
        echo "$key exists"
    else
        echo "Plugin $key not found. Attempting to install..."
        git clone "$value" ~/.zsh/plugins/"$key"

    fi
done

# source all plugins
for file in ~/.zsh/plugins/*/*.(plugin.zsh|zsh-theme)(#qN); do
    source $file
done
unset file


source ~/.zsh/prompt.zsh
