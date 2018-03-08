# Make sure command line tools is installed
if xcode-select -p | grep 'Contents/Developer'; then
	echo 'Command Line Tools Installed'
else
	cat <<EOM
Error. Install Comman Line tools. Run:
$> xcode-select --install
EOM
	exit 1
fi

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install OpenPGP
brew install gpg

# Install RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable

# Install Default Apps with brew-cask
brew tap caskroom/cask
brew cask install alfred
brew cask install caffeine
brew cask install cyberduck
brew cask install docker
brew cask install google-chrome
brew cask install helium
brew cask install iterm2
brew cask install plex-media-server
brew cask install postman
brew cask install slack
brew cask install sourcetree
brew cask install spectacle
brew cask install spotify
brew cask install sublime-text
brew cask install transmission
brew cask install vlc

# Install gradle
brew install gradle

# Install GraphViz
brew install graphviz

# Install jq
brew install jq

# intall npm and essentials
brew install npm
npm install -g gulp
