#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

info "Setting up Ag ignore list..."

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/)"

symlink "$SOURCE/.ag_ignore" "$DESTINATION/.ag_ignore"

success "Finished setting up Ag ignore list."
