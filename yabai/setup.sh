#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

info "Setting up Yabai..."

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/)"

symlink "$SOURCE/.yabairc" "$DESTINATION/.yabairc"
symlink "$SOURCE/.skhdrc" "$DESTINATION/.skhdrc"

chmod +x ~/.yabairc

success "Finished setting up Yabai."
