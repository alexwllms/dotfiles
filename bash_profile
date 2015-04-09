# The first line sets the location where you want Terminal to look for binaries on your machine
export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH

# Required for the rbenv ruby version manager.
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

_direnv_hook() {
  eval "$(direnv export bash)";
};
if ! [[ "$PROMPT_COMMAND" =~ _direnv_hook ]]; then
  PROMPT_COMMAND="_direnv_hook;$PROMPT_COMMAND";
fi

# Tell bash to use the ANSII colours specificied in command line preferences.
export CLICOLOR=1

# turn on colourful lists
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# use 256 colors rather than 8 colors
export TERM=xterm-256color

export PROMPT_COMMAND=setup_prompt

# Load in the git branch prompt script.
source ~/.git-prompt.sh

# Add completion for git
source ~/.git-completion.bash

export PS1="\[\e[33m\]\w\[\e[m\]\$(__git_ps1)\[\e[33m\] \$ \[\e[m\]"
export PS2='> '

# Git autocompletion script
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Name tabs
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

# Load aliases from .aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

export EDITOR=vim

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Wrap git in 'hub'
eval "$(hub alias -s)"

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH
