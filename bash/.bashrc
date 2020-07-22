source ~/.exports;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# eval "$(rbenv init -)"
# eval "$(nodenv init -)"
# eval "$(pyenv init -)"

bind 'set completion-ignore-case on'

# `brew install bash-completion`
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
  . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

# Include your own customizations!
# [[ -f ~/.bash.local ]] && source ~/.bash.local

# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

source ~/.sess/sess.sh
