#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

info "Setting up Sess..."

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/.sess)"

mkdir -p "$DESTINATION/"
symlink "$SOURCE/sess.sh" "$DESTINATION/sess.sh"

success "Finished setting up Sess."
