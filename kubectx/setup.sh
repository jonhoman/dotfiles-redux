#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

info "Setting up Kubectx and Kubens..."
info "TODO: check kubectx to see if Go binaries are marked as stable"

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/bin)"

mkdir -p "$DESTINATION/"
symlink "$SOURCE/kubectx" "$DESTINATION/kubectx"
symlink "$SOURCE/kubens" "$DESTINATION/kubens"

success "Finished setting up Kubectx and Kubens."
