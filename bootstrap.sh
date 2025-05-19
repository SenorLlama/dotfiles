# Install Homebrew
if [[ $(command -v brew) == "" ]]; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew tap homebrew/cask-versions
brew update
brew tap homebrew/cask

# Install Useful libraries
brew install jq
brew install gdb
brew install gpg
brew install gradle
brew install go
brew install tree

# Install Default Apps with brew-cask
brew tap homebrew/cask-drivers

brew install arc
brew install caffeine
brew install docker
brew install iterm2
brew install logitune
brew install monitorcontrol
brew install notion
brew install postman
brew install raycast
brew install slack
brew install sonos
brew install sourcetree
brew install spotify
brew install sublime-text
brew install ticktick
brew install vlc

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

mas install 1476964367 # InYourFace Reminders

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Copy repo bash_profile
cp .zshrc ~/.zshrc
. ~/.zshrc