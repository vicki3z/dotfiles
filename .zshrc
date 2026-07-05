autoload -U add-zsh-hook

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# NVM autoloader
# Source https://stackoverflow.com/a/39519460
load-nvmrc() {
  [[ -a .nvmrc ]] || return
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

export NODE_EXTRA_CA_CERTS="$(mkcert -CAROOT)/rootCA.pem"

# Load aliases
for file in $ZSH_CUSTOM/aliases/.*; do
  source "$file";
done

eval "$(starship init zsh)"


# Load / source zsh plugins.
source "${ZSH_PLUGINS}/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
source "${ZSH_PLUGINS}/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "${ZSH_PLUGINS}/zsh-ssh/zsh-ssh.zsh"
source "${ZSH_PLUGINS}/zsh-you-should-use/you-should-use.plugin.zsh"

