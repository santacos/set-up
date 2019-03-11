#!/usr/bin/env bash

echo "Start setting up Mac"
if test ! $(which brew); then
echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

#update home brew
brew update

#install iTerm

#echo "Installing cask..."
#brew install caskroom/cask/brew-cask
#CASKS=(
#    google-chrome
#    iterm2
#		 visual-studio-code
#		 docker
#)
#echo "Installing cask apps..."
#brew cask install ${CASKS[@]}

brew install autojump

#install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#install zsh syntax highlight
brew install zsh-syntax-highlighting

echo "Installing git & tig..."
brew install git
brew install tig

#Install Node
echo "Installing Node..."
brew install node

echo "Installing yarn..."
brew install yarn

#Setting up git username and email for global
git config --global user.name "Cos Amornthip"
git config --global user.email amornthip.rak@gmail.com

#Setting up Vim pluging manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#Put this at the top of your .vimrc to use Vundle. Remove plugins you don't need, they are for illustration purposes.
#https://github.com/VundleVim/Vundle.vim?utm_campaign=free-traffic&utm_source=solutions-softonic-com&utm_medium=referral

#Install asdf to control version of ruby, node
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.0

# Require password as soon as screensaver or sleep mode starts
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

echo "Setting up complete"

