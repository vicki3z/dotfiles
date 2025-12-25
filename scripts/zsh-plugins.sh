#!/usr/bin/env bash

# Install or update zsh plugins.
ZSH_CONFIG_DIR=$HOME/.config/zsh

if [ -d "$ZSH_CONFIG_DIR/plugins" ]; then
  echo "Directory $ZSH_CONFIG_DIR/plugins exists."
else
  echo "Directory $ZSH_CONFIG_DIR/plugins does not exist."
  mkdir $ZSH_CONFIG_DIR/plugins
fi

ZSH_PLUGINS_DIR=$ZSH_CONFIG_DIR/plugins

function clone_or_pull {
  local repo_path="${1}"
  local project=
  project="$(echo "${repo_path}" | cut -d"/" -f2)"
  local project_path="$ZSH_PLUGINS_DIR/${project}"

  echo ${project_path}

  if cd "${project_path}" >/dev/null 2>&1; then
    echo "Updating ${repo_path}..."
    git pull
    cd - >/dev/null 2>&1 || exit
  else
    echo "Installing ${repo_path}..."
    git clone "https://github.com/${repo_path}" "${project_path}"
  fi
}

PLUGINS=(
  "zdharma-continuum/fast-syntax-highlighting"
  "zsh-users/zsh-autosuggestions"
  "sunlei/zsh-ssh"
  "MichaelAquilina/zsh-you-should-use"
)

for repo in "${PLUGINS[@]}"; do
  clone_or_pull ${repo}
done





