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
 
export PS1="${BLUE}\w${COLOUR_NONE} ${BRANCH}> " 
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
