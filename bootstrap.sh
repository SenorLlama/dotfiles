# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap caskroom/versions
brew cask install java8

# Install Useful libraries
brew install jq
brew install gpg
brew install gradle
brew install graphviz

# Install apps from App Store
brew install mas
mas install 405843582 	# Alfred
mas install 406056744	# Evernote
mas install 1054607607	# Helium
mas install 803453959	# Slack
mas install 1278508951 	# Trello
mas install 497799835	# Xcode

# Install RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable

# Install Default Apps with brew-cask
brew tap caskroom/cask
brew tap homebrew/cask-drivers

brew cask install caffeine
brew cask install cyberduck
brew cask install docker
brew cask install dropbox
brew cask install gas-mask
brew cask install goland
brew cask install google-chrome
brew cask install intellij-idea
brew cask install iterm2
brew cask install marvin
brew cask install plex-media-server
brew cask install postman
brew cask install sonos
brew cask install sourcetree
brew cask install spectacle
brew cask install spotify
brew cask install sublime-text
brew cask install transmission
brew cask install vlc

# intall npm and essentials
brew install npm
npm install -g gulp

# Copy repo bash_profile
cp .bash_profile ~/.bash_profile
. ~/.bash_profile
