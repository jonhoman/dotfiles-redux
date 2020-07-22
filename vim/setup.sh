#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

info "Setting up Vim..."

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/)"

symlink "$SOURCE/.vimrc" "$DESTINATION/.vimrc"

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/.vim)"
 
mkdir -p "$DESTINATION/autoload"

symlink "$SOURCE/autoload" "$DESTINATION/autoload"

mkdir -p "$DESTINATION/backup_files/"
mkdir -p "$DESTINATION/swap_files/"
mkdir -p "$DESTINATION/undo_files/"

success "Finished setting up Vim."
