export PROMPT='%~%b $ '
export LSCOLORS="gxBxhxDxfxhxhxhxhxcxcx"
export GREP_OPTIONS="--color"
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
export EDITOR="vim"

# Set ZSH git completion
fpath=(~/.zsh $fpath)

# Turns on command substitution in the prompt
setopt prompt_subst

setopt auto_pushd
setopt AUTOCD

# Turn on spellchecking
setopt CORRECT

# Silence the bell
setopt NO_BEEP

# Case insensitive globbing
setopt NO_CASE_GLOB

# Load aliases from .aliases
if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

# Add branch name to right hand side of the prompt
setopt prompt_subst
source ~/.git-prompt.sh
export RPROMPT=$'$(__git_ps1 "%s")'

# Add tab completion for git
source ~/.git-completion.bash

# Required for the rbenv ruby version manager.
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"
