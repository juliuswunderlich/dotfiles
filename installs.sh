#!/bin/sh

# -----------------------------------------------------------------------
# install zsh
# -----------------------------------------------------------------------
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # Linux
        sudo apt install git-core zsh
elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
        brew install zsh
else
        #unknown
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

