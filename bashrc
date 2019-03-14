
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
if [ -f ~/.local_bashrc ]; then
 . ~/.local_bashrc
fi

source ~/utils/enhancd/init.sh
# make bash history save
shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

export PS1="\t \[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# copies current branch to clipboard
alias gitcur="git branch | grep '* ' | sed -e 's/* //g' | pbcopy"
# get branches by author sorted by committerdate (thanks stack overflow)
alias gitbranchauth="git for-each-ref --format='%(committerdate) %09 %(authorname) %09 %(refname)' | sort -k5n -k2M -k3n -k4n"
alias watch-git-status='watch --color -n 8 git -c status.color=always status'
alias watch-git-branch='watch --color -n 8 git branch -vva --color=always'
alias watch-git-diff='watch -n 8 --color git diff --stat --color=always'
alias watch-git-diff-cache='watch -n 8 --color git diff --stat --cached --color=always'
alias watch-git-log='watch --color -n 8 git log --oneline --graph --decorate --remotes --branches --color=always'
alias gb-del='git fetch -p && for branch in `git branch -vv | grep '\'': gone]'\'' | awk '\''{print $1}'\''`; do git branch -D $branch; done'
alias ctags="`brew --prefix`/bin/ctags"
export N_PREFIX="$HOME/n"

export EDITOR=/usr/local/bin/vim

export PATH="$PATH:$HOME/.local/bin"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
md() { pandoc "$1" | lynx -stdin; }
