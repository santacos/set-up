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
#)
#echo "Installing cask apps..."
#brew cask install ${CASKS[@]}

brew install autojump

#install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#install zsh syntax highlight
brew install zsh-syntax-highlighting

brew install git
brew install tig

#Setting up Vim pluging manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#Put this at the top of your .vimrc to use Vundle. Remove plugins you don't need, they are for illustration purposes.
#https://github.com/VundleVim/Vundle.vim?utm_campaign=free-traffic&utm_source=solutions-softonic-com&utm_medium=referral


# Require password as soon as screensaver or sleep mode starts
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

echo "Setting up complete"
