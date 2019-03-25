# Make it pretty
#------------------------------------------------------------
export PS1=" \[\e[00;34m\]Σ \W \[\e[0m\]"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Nice commands
#------------------------------------------------------------
alias ls='ls -hF'
alias ll='ls -FGlAhp'  						                    # Preferred 'ls' implementation
alias hi='history'
alias cd..='cd ../'                                   # Go back 1 directory level (for fast typers)
alias ..='cd ../'                                     # Go back 1 directory level
alias ...='cd ../../'                                 # Go back 2 directory levels
alias .3='cd ../../../'                               # Go back 3 directory levels
alias .4='cd ../../../../'                            # Go back 4 directory levels
alias .5='cd ../../../../../'                         # Go back 5 directory levels
alias .6='cd ../../../../../../'                      # Go back 6 directory levels
alias f='open -a Finder ./'                           # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                                        # ~:            Go Home
alias c='clear'                                       # c:            Clear terminal display
alias which='type -all'                               # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'                   # path:         Echo all executable Paths
alias show_options='shopt'                            # Show_option
alias clemson='ssh cjstein@access.ces.clemson.edu'    # get onto the clemson servers
alias server='python3 -m http.server'		              # Start a http server in current directory

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
