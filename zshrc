autoload -Uz compinit promptinit
autoload -Uz vcs_info

compinit
promptinit

zstyle ':completion:*' menu select
zstyle ':vcs_info:git:*' formats '%b'

# Setopt
setopt COMPLETE_ALIASES
setopt NO_BEEP
setopt AUTOCD
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt CORRECT
setopt CLOBBER
setopt PROMPT_SUBST

# History
HISTSIZE=10000
SAVEHIST=$HISTSIZE
HISTFILE=~/.config/zsh/zhistory

# Profile
if [[ -r ~/.config/zsh/zprofile ]]; then
  source ~/.config/zsh/zprofile
fi
# Aliases
if [[ -r ~/.config/zsh/aliases ]]; then
  source ~/.config/zsh/aliases
fi
