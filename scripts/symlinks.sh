#!/usr/bin/env bash

DOTFILE_DIR=$HOME/dotfiles

DOTCONFIGFILES=(
  "zsh"
  "nvim"
  "alacritty"
  "zellij"
  "starship"
  "glow"
)

DOTFILES=(
  ".zshrc"
  ".zprofile"
  ".editorconfig"
)

cd $HOME

if [ -d "$HOME/.config" ]; then
  echo "Directory $HOME/.config exists."
else
  echo "Directory $HOME/.config does not exist."
  mkdir $HOME/.config
fi

for dotfile in "${DOTFILES[@]}";do
  echo "Linking file to $HOME/${dotfile}"
  ln -s $DOTFILE_DIR/${dotfile} $HOME/${dotfile}
done


for config in "${DOTCONFIGFILES[@]}";do
  echo "Linking file to $HOME/.config/${config}"
  ln -s $DOTFILE_DIR/${config} $HOME/.config/${config}
done

