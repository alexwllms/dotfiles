export PROMPT='%~%b $ '
export LSCOLORS="gxBxhxDxfxhxhxhxhxcxcx"
export CLICOLOR=1
export GREP_OPTIONS="--color"
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
export EDITOR="vim"

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

alias s="git status -b"
alias commit="git commit --verbose"
alias checkout="git checkout"
alias branch="git branch"
alias diff="git diff"
alias log="git log --graph"
alias add="git add --all :/"
alias push="git push"
alias pull="git pull"
alias rebase="git rebase"
alias pr="git pull-request"

alias ber="bundle exec ruby"
alias be="bundle exec"

alias postgres="postgres -D /usr/local/var/postgres"

# Wrap git in 'hub'
eval "$(hub alias -s)"
