#!/usr/bin/env bash

# Install command-line tools using Homebrew.
echo "⚡️Setting up Homebrew..."

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install font
brew install --cask font-hack
brew install --cask font-hack-nerd-font

# Install useful packages/binaries
brew install git
brew install ripgrep
brew install fd
brew install neovim
brew install tlrc
brew install zellij
brew install starship
brew install glow
brew install yarn
brew install tree-sitter-cli
brew install lua
brew install luarocks
brew install fzf

# Install cask packages
brew install --cask alacritty

# Remove outdated versions from the cellar.
brew cleanup

echo "✅ Completed Homebrew setup"
