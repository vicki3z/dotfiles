#!/bin/bash

# Homebrew
if which brew &> /dev/null; then
    echo "\033[1;32m=> Homebrew ✔\033[0m"
else
    echo "Installing Homebrew..."
    cd $HOME
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "\033[1;32m==> Homebrew installed ✔\033[0m"
fi

# NVM
if which nvm &> /dev/null; then
  echo "\033[1;32m=> NVM ✔\033[0m"
else
  echo "Installing NVM..."
  cd $HOME
  /bin/bash -c "$(curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash)"
  echo "\033[1;32m==> NVM installed ✔\033[0m"
fi
