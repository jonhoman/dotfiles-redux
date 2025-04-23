#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

info "Setting up Aerospace..."

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/)"

symlink "$SOURCE/.aerospace.toml" "$DESTINATION/.aerospace.toml"

success "Finished setting up Aerospace."
