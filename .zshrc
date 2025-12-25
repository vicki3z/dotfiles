export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

#export NODE_EXTRA_CA_CERTS="$(mkcert -CAROOT)/rootCA.pem"

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

#$(meandu aws export)

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
