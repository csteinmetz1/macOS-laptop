# Nice commands
#------------------------------------------------------------
alias ls='ls -hF'
alias ll='ls -FGlAhp'  						          # Preferred 'ls' implementation
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
alias server='python3 -m http.server'		          # Start a http server in current directory