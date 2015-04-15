export PROMPT='%~%b $ '
export LSCOLORS="gxBxhxDxfxhxhxhxhxcxcx"
export CLICOLOR=1
export GREP_OPTIONS="--color"
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
export EDITOR="vim"

# Needs to be at the top of the zshrc file
eval "$(hub alias -s)"

# Turns on command substitution in the prompt
setopt prompt_subst

setopt auto_pushd
setopt AUTOCD

# Silence the bell
setopt NO_BEEP

# Case insensitive globbing
setopt NO_CASE_GLOB

# Add branch name to right hand side of the prompt
setopt prompt_subst
source ~/.git-prompt.sh
export RPROMPT=$'$(__git_ps1 "%s")'

# Required for the rbenv ruby version manager.
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

alias vz="vim ~/.zshrc"
alias vv="vim ~/.vimrc"
alias vt="vim ~/.tmux.conf"

alias ls="ls -1"
alias la="ls -la -1"

alias gs="git status -b"
alias gc="git commit --verbose"
alias gb="git branch"
alias gl="git log --graph"
alias ga="git add --all :/"

alias ber="bundle exec ruby"
alias be="bundle exec"

alias postgres="postgres -D /usr/local/var/postgres"
