### TUMBLEWEED SPECIFIC CONFIGURATION ###

# NVM - NodeJS Version Manager
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# export NVM_DIR="$HOME/.nvm"
# #[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# alias nvm="unalias nvm; [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"; nvm $@"

# PYENV - Python Version Manager
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

eval "$(pyenv virtualenv-init -)"

function uppkg() {

    printf "-- UPDATING TUMBLEWEED -- \n"
    printf "1. sudo zypper refresh\n"
    printf "2. sudo zypper dup\n"
    printf "3. flatpak update\n"
    # read -p "Are you sure -> " -n 1 -r
    read -q "REPLY?Are you sure (Y/y) -> ";
    # echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]] then
        echo
        sudo zypper refresh && sudo zypper dup && flatpak update;
    fi

}

function newnote() {
    typst init @local/notes:0.0.1
}
