#############################     Shell env     #############################


############################# Software Install  #############################

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Python
brew install python
brew install python3
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
ssh-keygen -t rsa -C "csteinmetz1@gmail.com"
cat ~/.ssh/id_rsa.pub
echo 'Copy the key from ~/.ssh/id_rsa.pub onto GitHub.com'
read -n 1 -s -r -p "Press any key to continue"

# Various apps
brew install htop					 
brew install wget
brew install shiftit
brew cask install --appdir="/Applications" cyberduck
brew cask install --appdir="/Applications" docker
brew cask install --appdir="/Applications" authy
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" google-drive-file-stream
brew cask install --appdir="/Applications" visual-studio-code
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" spotify-notifications
brew cask install --appdir="/Applications" virtualbox

############################# Custom Directories #############################
mkdir '~/Code'
mkdir '~/Screenshots'

############################# macOS UI Settings #############################

# Dock 
defaults write com.apple.dock autohide YES                  # autohide 
defaults write com.apple.dock autohide-time-modifier 0      # instant reveal
defaults write com.apple.dock tilesize 50                   # set icon size
defaults write com.apple.dock orientation left              # position left
defaults write com.apple.dock mineffect scale               # scale effect (not genie)
killall Dock                                                # restart Dock

# Menu bar
defaults write com.apple.menuextra.battery ShowPercent YES  # show battery percent
defaults write com.apple.menuextra.clock IsAnalog NO        # digital clock 
defaults write com.apple.menuextra.clock DateFormat "EEE MMM d  h.mm a"
killall SystemUIServer

# Dark Menu Bar and Dock
tell application "System Events"
	tell appearance preferences
		set dark mode to false
	end tell
end tell

defaults write -g NSRequiresAquaSystemAppearance -bool Yes

tell application "System Events"
	tell appearance preferences
		set dark mode to true
	end tell
end tell

# Screenshot location
defaults write com.apple.screencapture location ~/Screenshots
