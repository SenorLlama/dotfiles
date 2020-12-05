# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Create projects directory and go-workspace
mkdir -p ~/projects/go-workspace/src ~/projects/go-workspace/pkg ~/projects/go-workspace/bin

brew tap caskroom/versions
brew cask install java8

# Install Useful libraries
brew update
brew install circleci
brew install dep
brew install jq
brew install gdb
brew install gpg
brew install gradle
brew install graphviz
brew install golang
brew install tree

# Install apps from App Store
brew install mas
mas install 405843582 	# Alfred
mas install 1043270657	# GIF Keyboard
mas install 1054607607	# Helium
mas install 803453959	# Slack
mas install 784801555	# OneNote
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
brew cask install google-cloud-sdk
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

# Setup ProtoBuf
brew install prototool
brew install autoconf
brew install automake
brew install swift-protobuf 

# intall npm and essentials
brew install npm
npm install -g gulp

# Copy repo bash_profile
cp .bash_profile ~/.bash_profile
. ~/.bash_profile

# Download common go tools
go get -u golang.org/x/lint/golint
go get -u github.com/golang/protobuf/protoc-gen-go
go get -u github.com/twitchtv/twirp/protoc-gen-twirp
go get github.com/twitchtv/retool
