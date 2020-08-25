source ~/.exports;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# eval "$(rbenv init -)"
# eval "$(nodenv init -)"
# eval "$(pyenv init -)"

bind 'set completion-ignore-case on'

# `brew install bash-completion`
# if [ -f $(brew --prefix)/etc/bash_completion ]; then
#   . $(brew --prefix)/etc/bash_completion
# fi
# 
# if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
#   . `brew --prefix`/etc/bash_completion.d/git-completion.bash
# fi
# 
# if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
#   . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
# fi

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

source <(kubectl completion bash)

if type brew &>/dev/null; then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
      [[ -r "$COMPLETION" ]] && source "$COMPLETION"
    done
  fi
fi

# Include your own customizations!
# [[ -f ~/.bash.local ]] && source ~/.bash.local

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

source ~/.sess/sess.sh

# using font https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/SourceCodePro
eval "$(starship init bash)"
