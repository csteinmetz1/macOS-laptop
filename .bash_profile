# Make it pretty
#------------------------------------------------------------
export PS1=" \[\e[00;34m\]Σ \W \[\e[0m\]"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Python paths
#------------------------------------------------------------
# Setting PATH for Python 2.7
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.6
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# NVM path
#------------------------------------------------------------
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"                             # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"   # This loads nvm bash_completion

# Source aliases in the .bashrc file
[[ -f ~/.bashrc ]] && source ~/.bashrc