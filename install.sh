#############################     Shell env     #############################


############################# Software Install  #############################

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Python
brew install python
pip install --user pipenv

# Node
brew install nvm
mkdir ~/.nvm
echo 'export NVM_DIR="$HOME/.nvm"'  >> ~/.bash_profile
echo '[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm' >> ~/.bash_profile
echo '[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion' >> ~/.bash_profile
source ~/.bash_profile
nvm install stable

# Git
brew install git

# Various apps
brew cask install visual-studio-code
brew install htop					 
brew install wget

############################# macOS UI Settings #############################

# Dock 
defaults write com.apple.dock autohide YES					# autohide 
defaults write com.apple.dock autohide-time-modifier 0		# instant reveal
defaults write com.apple.dock tilesize 50					# set icon size
defaults write com.apple.dock orientation left				# position left
defaults write com.apple.dock mineffect scale				# scale effect (not genie)
killall Dock 												# restart Dock

# Menu bar
defaults write com.apple.menuextra.battery ShowPercent YES	# show battery percent
defaults write com.apple.menuextra.clock IsAnalog NO		# digital clock 
defaults write com.apple.menuextra.clock DateFormat "EEE MMM d  h.mm a"

killall SystemUIServer