#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

info "Setting up k8s utils..."

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/bin)"

KUBECTX_VERSION="v0.9.4"
KUBECTL_VERSION="v1.21.12"
wget -q "https://github.com/ahmetb/kubectx/releases/download/$KUBECTX_VERSION/kubens" -O $SOURCE/kubens
wget -q "https://github.com/ahmetb/kubectx/releases/download/$KUBECTX_VERSION/kubectx" -O $SOURCE/kubectx
wget -q "https://storage.googleapis.com/kubernetes-release/release/$KUBECTL_VERSION/bin/darwin/amd64/kubectl" -O $SOURCE/kubectl

chmod +x kube*

mkdir -p "$DESTINATION/"
symlink "$SOURCE/kubens" "$DESTINATION/kubens"
symlink "$SOURCE/kubectx" "$DESTINATION/kubectx"
symlink "$SOURCE/kubectl" "$DESTINATION/kubectl"

success "Finished setting up k8s utils."
