# Install Homebrew
if [[ $(command -v brew) == "" ]]; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew tap homebrew/cask-versions
brew update
brew tap homebrew/cask

# Install Java
brew install adoptopenjdk8
brew install adoptopenjdk11

# Install Useful libraries
brew install jq
brew install gdb
brew install gpg
brew install gradle
brew install graphviz
brew install go
brew install tree

# Install apps from App Store
brew install mas
while true; do
    read -p "Are you logged into the App Store?" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) echo "Please login and click yes after complete.";;
        * ) echo "Please answer yes or no.";;
    esac
done
mas install 405843582 	# Alfred
mas install 1043270657	# GIF Keyboard
mas install 1054607607	# Helium
mas install 803453959	# Slack
mas install 784801555	# OneNote

# Install RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable

# Install Default Apps with brew-cask
brew tap homebrew/cask-drivers

brew install caffeine
brew install cyberduck
brew install docker
brew install gas-mask
brew install goland
brew install google-chrome
brew install intellij-idea
brew install iterm2
brew install marvin
brew install postman
brew install sonos
brew install sourcetree
brew install spectacle
brew install spotify
brew install sublime-text
brew install transmission
brew install vlc

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

# Low priority installs
mas install 497799835	# Xcode