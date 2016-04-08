# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# add local bin to PATH
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/sbin

# Source virtualenv
export VIRENV=$HOME/.virtualenvs
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/
source /usr/local/bin/virtualenvwrapper.sh

# Folder Location Variables
export DOCS=~/Documents
export DOWN=~/Downloads
export DROP=~/Dropbox
export RAILP=~/projects/rails
export NODEP=~/projects/nodejs
export PROJ=~/projects

# Folder Location Aliases
alias docs="cd $DOCS"
alias down="cd $DOWN"
alias drop="cd $DROP"
alias railp="cd $RAILP"
alias nodep="cd $NODEP"
alias proj="cd $PROJ"

# Bash Profile Commands
alias abp=". ~/.bash_profile"
alias ebp="subl -w ~/.bash_profile && abp"
alias lsa="ls -a"

# git parser
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

# Terminal Prompt Modification
export PS1="\\[$(tput bold)\\]\\[$(tput setaf 3)\\]mjg @ \W \\[$(tput setaf 2)\\]\$(parse_git_branch) \\[$(tput setaf 3)\\]> \\[$(tput sgr0)\\]"

#GitHub
git config --global --add color.ui true
git config --global --add color.diff true
git config --global user.name "Marvin Guerra"
git config --global user.email guerra.marvin@gmail.com
git config --global core.editor "subl -w"
# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# docker helpers
alias dockershellinit="$(boot2docker shellinit)"
