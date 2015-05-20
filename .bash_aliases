#  HISTORY

export HISTFILESIZE=20000
export HISTSIZE=10000
shopt -s histappend
# Combine multiline commands into one in history
shopt -s cmdhist
# in order to get history from screen session
export PROMPT_COMMAND="history -a; history -c; history -r; ${PROMPT_COMMAND}"

#  ALIASES

alias ll="ls -lahF"
#alias lock="xscreensaver-command -l"
alias rm="rm -v"
alias cp="cp -v"
alias mv="mv -v"
alias mkdir="mkdir -p "
alias tmux="tmux -2"
alias ttmux="tmux att"
alias rbcopy="xclip -selection c"
alias rbpaste="xclip -selection clipboard -o"

#  PS1 CONFIGURATION - GIT - VIRTUALENV

#we save PS1 to another variables
MYPS1=$PS1
# we stripe the last 3 variables to get ride off the $
MYPS1="${MYPS1%?}"
MYPS1="${MYPS1%?}"
MYPS1="${MYPS1%?}"

if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent -s`
    ssh-add
fi

if [ -f ~/.rb_git_bash_prompt ]; then
    . ~/.rb_git_bash_prompt
fi

export GOROOT=~/go
export PATH=~/go/bin/:$PATH

# auto ssh-add when no agent started
ssh-add -l >/dev/null || alias ssh='ssh-add -l >/dev/null || ssh-add && unalias ssh; ssh'
