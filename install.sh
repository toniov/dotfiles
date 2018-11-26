#!/usr/bin/env bash

# Install homebrew and dependencies
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/bundle
brew bundle

# Install npm modules
npm install -g $(cat npmfile)

# Install prezto
git clone --recursive https://github.com/toniov/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
zsh
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
