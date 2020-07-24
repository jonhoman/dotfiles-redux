#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/)"

info "Setting up starship prompt..."

mkdir -p "$DESTINATION/.config"

symlink "$SOURCE/starship.toml" "$DESTINATION/.config/starship.toml"
