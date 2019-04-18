# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# add local bin to PATH
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/sbin

# Source virtualenv
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/

# Folder Location Variables
export DOCS=~/Documents
export DOWN=~/Downloads
export DROP=~/Dropbox
export PROJ=~/projects

# Go Paths
export GOPATH=$PROJ/go-workspace # don't forget to change your path correctly!
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# Folder Location Aliases
alias docs="cd $DOCS"
alias down="cd $DOWN"
alias drop="cd $DROP"
alias proj="cd $PROJ"

# Bash Profile Commands
alias abp=". ~/.bash_profile"
alias ebp="subl -w ~/.bash_profile && abp"
alias lsa="ls -a"

# git helpers
alias gco="git checkout "
alias gcb="git checkout -b "
alias gtg="git tag "
alias gpt="git push origin --tags"
alias git_clean="git fetch -p && git branch -vv | grep ': gone]' | awk '{print $1}' | xargs git branch -D"
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

# Terminal Prompt Modification
export PS1="\\[$(tput bold)\\]\\[$(tput setaf 3)\\]mjg @ \W \\[$(tput setaf 2)\\]\$(parse_git_branch) \\[$(tput setaf 3)\\]> \\[$(tput sgr0)\\]"

#GitHub
git config --global --add color.ui true
git config --global --add color.diff true
git config --global user.name "Marvin Guerra"
git config --global user.email marvin@marvinguerra.com
git config --global core.editor "subl -w"
