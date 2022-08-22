#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

COMMENT=\#*

sudo -v

info "Installing assume-role..."

go install github.com/remind101/assume-role@latest

success "Finished installing assume-role."
