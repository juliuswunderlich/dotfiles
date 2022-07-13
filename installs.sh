#!/bin/sh

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # Linux
        sudo apt install git-core zsh
        # install cli utilities
        sudo apt install ack
        sudo apt install fd-find
        sudo apt install trash-cli
elif [[ "$OSTYPE" == "darwin"* ]]; then
    if [ "$(command -v brew)" ]; then
        # Mac OSX
        brew install zsh
        brew install ack
        brew install fd-find
        brew install trash-cli
        brew install arp-scan
    else 
        echo "install brew first"
    fi
else
    echo "The script does not work for this operating system..."
fi

# -----------------------------------------------------------------------
# install oh my zsh
# -----------------------------------------------------------------------
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"



# check current location
if [ "$PWD" = "$HOME/dotfiles"]; then


else
  echo "Repo must be placed in HOME!"
fi


setup_bash()
{

}

