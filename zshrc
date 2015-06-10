export LSCOLORS="gxBxhxDxfxhxhxhxhxcxcx"
export CLICOLOR=1
export GREP_OPTIONS="--color"
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
export EDITOR="vim"

# Needs to be at the top of the zshrc file
#eval "$(hub alias -s)"

# Disable C-s
stty start undef
stty stop undef

setopt auto_pushd
setopt AUTOCD

# Silence the bell
setopt NO_BEEP

# Case insensitive globbing
setopt NO_CASE_GLOB

# Add branch name to right hand side of the prompt
setopt prompt_subst
source ~/.git-prompt.sh
export PROMPT='%F{yellow}%~%b $(__git_ps1 "%s") $ '

# Required for the rbenv ruby version manager.
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

alias vz="vim ~/.zshrc"
alias vv="vim ~/.vimrc"
alias vt="vim ~/.tmux.conf"

alias ls="ls -1"
alias la="ls -la -1"

alias gs="git status"
alias gc="git commit --verbose"
alias gb="git branch"
alias gd="git diff --word-diff"
alias gl="git log --oneline --decorate"
alias ga="git add --all :/"
alias gpom="git push origin master"

alias ber="bundle exec ruby"
alias be="bundle exec"

alias postgres="postgres -D /usr/local/var/postgres"

alias rad="cd ~/mas/rad"
alias radc="cd ~/mas/rad_consumer"

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '~/.zshrc'
