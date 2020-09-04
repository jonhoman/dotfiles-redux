source ~/.exports;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;
export HISTSIZE=10000
export HISTFILESIZE=10000

bind 'set completion-ignore-case on'

source <(kubectl completion bash)

# Why do I do this twice?
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

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

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

source ~/.sess/sess.sh

# using font https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/SourceCodePro
# Fira Code now, I think
eval "$(starship init bash)"

export PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
