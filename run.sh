#!/usr/bin/env zsh

# install brew, brew cask, trash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask
brew install trash git node wget

# install quicklook plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv qlimagesize webpquicklook suspicious-package

# Install some good stuff
brew cask install dark-mode pycharm sublime-text alfred iterm2 google-chrome google-chrome-canary firefox imageoptim imagealpha

# create subl shortcut for Sublime Text
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

# install oh-my-zsh
curl -L http://install.ohmyz.sh | sh
# install oh-my-zsh syntax highlight
git§ clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/zsh-syntax-highlighting
# install z
git clone https://github.com/rupa/z /usr/local/bin/z/

ln -s ~/.dotfiles/.zshrc ~/.zshrc

# setup some git config
git config --global push.default current
git config --global credential.helper osxkeychain
git config --global color.ui auto
git config --global mergetool.keepbackup false
git config --global merge.tool opendiff
git config --global core.filemode false
git config --global core.excludesfile ~/.gitignore-global

source ~/.zshrc
echo "Dotfiles installed."
