
eval "$(/opt/homebrew/bin/brew shellenv)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
#source ~/.orbstack/shell/init.zsh 2>/dev/null || :

# Created by `pipx` on 2025-11-14 02:39:41
export PATH="$PATH:/Users/victoriap/Library/Python/3.9/bin"

# Created by `pipx` on 2025-11-14 02:39:44
export PATH="$PATH:/Users/victoriap/.local/bin"

# Yarn global
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# ZSH Config
export ZSH_CONFIG="$HOME/.config"

# ZSH_CUSTOM path
export ZSH_CUSTOM="$ZSH_CONFIG/zsh"

#ZSH_PLUGINS path
export ZSH_PLUGINS="$ZSH_CUSTOM/plugins"

#Starship config path
export STARSHIP_CONFIG="$ZSH_CONFIG/starship/starship.toml"

export EDITOR=/opt/homebrew/bin/nvim

