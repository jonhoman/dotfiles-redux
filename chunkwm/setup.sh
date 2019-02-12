#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

info "Setting up Chunkwm..."

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/)"

symlink "$SOURCE/.chunkwmrc" "$DESTINATION/.chunkwmrc"
symlink "$SOURCE/.skhdrc" "$DESTINATION/.skhdrc"

chmod +x ~/.chunkwmrc

success "Finished setting up Chunkwm."
