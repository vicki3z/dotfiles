#!/usr/bin/env bash

# Set current directory ~/dotfiles to CONFIG_DIR
CONFIG_DIR=$(dirname "$0")

echo "🔧 Setting up your terminal..."

sh $CONFIG_DIR/scripts/install_packages.sh
sh $CONFIG_DIR/scripts/brew.sh
sh $CONFIG_DIR/scripts/symlinks.sh
sh $CONFIG_DIR/scripts/zsh-plugins.sh

echo "⚡️All right! Restart your terminal to complete the configuration."
