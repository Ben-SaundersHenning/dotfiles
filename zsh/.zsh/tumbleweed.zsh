### TUMBLEWEED SPECIFIC CONFIGURATION ###

# NVM - NodeJS Version Manager
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

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
