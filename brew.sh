#!/bin/bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade


echo "  🍺 installing " $CASKS
CASKS=(
    vscodium  # visual-studio-code built from source
    sublime-text
    kitty  # gpu accelerated terminal
    
    brave-browser
    google-chrome
    firefox

    zoomus
    telegram
    slack

    alfred
    transmission
    vlc
)
brew cask install $CASKS

echo "  🍺 installing " $BREWS
BREWS=(
    git
    git-lfs
    gnupg
    grep
    wget
    openssh
    screen
    vim --with-override-system-vi
    p7zip
    zopfli
    htop-osx
    unrar
    node
    sshfs
    pyenv
    pyenv-virtualenv

    coreutils
    moreutils
    findutils
    docker
    ffmpeg
    tree
    youtube-dl

    koekeishiya/formulae/skhd
    crisidev/homebrew-chunkwm/chunkwm
)
brew install $BREWS


echo "  🍺 installing fonts"
FONTS=(
  font-anonymous-pro
  font-dejavu-sans-mono-for-powerline
  font-droid-sans-mono-for-powerline
  font-meslo-lg font-input
  font-inconsolata font-inconsolata-for-powerline
  font-liberation-mono-for-powerline
  font-liberation-sans
  font-meslo-lg
  font-nixie-one
  font-office-code-pro
  font-raleway font-roboto
  font-source-code-pro font-source-code-pro-for-powerline
  font-source-sans-pro
)
# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2
# Instal some more fonts:
brew tap caskroom/fonts
brew cask install $FONTS


# github.com/sindresorhus/quick-look-plugins
QUICKLOOKS=(
    # quicklookase
    qlcolorcode
    qlimagesize
    qlmarkdown
    qlstephen
    qlvideo
    quicklook-csv
    quicklook-json
    webpquicklook
)
caskin $QUICKLOOKS
# restart quicklook manager
qlmanage -r
brew cleanup


# Remove outdated versions from the cellar.
brew cleanup
