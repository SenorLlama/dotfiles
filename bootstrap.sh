# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install OpenPGP
brew install gpg

# Install RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable

# Install gradle
brew install gradle

# Install postgress
brew install postgresql

# Install GraphViz
brew install graphviz

# Install jq
brew install jq

# intall npm and essentials
brew install npm
npm install -g gulp
