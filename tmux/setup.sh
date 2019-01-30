#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

info "Setting up Tmux..."

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/)"

symlink "$SOURCE/.tmux.conf" "$DESTINATION/.tmux.conf"

success "Finished setting up Tmux."
