#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

COMMENT=\#*

sudo -v

info "Installing Brewfile packages..."
brew bundle
yes | $(brew --prefix)/opt/fzf/install
success "Finished installing Brewfile packages."
