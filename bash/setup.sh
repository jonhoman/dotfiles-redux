#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/)"

info "Setting up bash shell..."

symlink "$SOURCE/.bashrc" "$DESTINATION/.bashrc"
symlink "$SOURCE/.bash_profile" "$DESTINATION/.bash_profile"
symlink "$SOURCE/.exports" "$DESTINATION/.exports"

# TODO: set bash shell
set_bash_shell() {
    if grep --quiet bash <<< "$SHELL"; then
        success "Bash shell is already set up."
    else
        echo "Bash not yet default shell"
        substep_info "Adding bash executable to /etc/shells"
        if grep --fixed-strings --line-regexp --quiet "/usr/local/bin/bash" /etc/shells; then
            substep_success "Bash executable already exists in /etc/shells."
        else
            if sudo bash -c "echo /usr/local/bin/bash >> /etc/shells"; then
                substep_success "Bash executable added to /etc/shells."
              else
                substep_error "Failed adding Bash executable to /etc/shells."
                return 1
            fi
        fi
        substep_info "Changing shell to bash"
        if sudo chsh -s /usr/local/bin/bash $(whoami); then
            substep_success "Changed shell to bash"
        else
            substep_error "Failed changing shell to bash"
            return 2
        fi
    fi
}

if set_bash_shell; then
    success "Successfully set up bash shell."
else
    error "Failed setting up bash shell."
fi


