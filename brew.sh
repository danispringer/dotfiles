#!/bin/bash

# BREW.SH
# Installs packages, apps, sets up gitconfig, creates hushlogin

# Ask for the administrator password upfront
sudo -v
# Keep-alive: update existing `sudo` time stamp until `.brew.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# M1 - https://stackoverflow.com/a/64997047/5306470
# Before installing Homebrew you will need Rosetta2 (for M1):
#/usr/sbin/softwareupdate --install-rosetta --agree-to-license
# Then install Homebrew for ARM M1 chip:
#arch -x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
#Install packages:
#arch -x86_64 brew install <package>

# BREW
brew update
arch -x86_64 brew update
arch -x86_64 brew upgrade
BREW_PREFIX=$(brew --prefix)
brew install shellcheck
brew install swiftlint
brew install chargepoint/xcparse/xcparse
brew install --cask google-chrome
brew install --cask sf-symbols
brew install git-open
brew link git-open
brew install multi-git-status
chmod 755 /usr/local/bin/mgitstatus
brew install --cask sublime-text
# Make subl work. See: https://stackoverflow.com/a/17731879/5306470
ln -sv "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

# Setup git config globally
# 'untracked': https://git-scm.com/docs/git-update-index#_untracked_cache
git config --global user.name "Daniel Springer"
git config --global user.email 19246409+DaniSpringer@users.noreply.github.com
git config --global core.editor "subl -n -w"
git config --global core.untrackedCache true
git config --global color.ui true
git config --global help.autocorrect 1
git config --global pull.rebase false

echo "The mere presence of this file in the HOME (~) directory disables the system copyright
notice, the date and time of the last login, the message of the day as well as other
information that may otherwise appear on login. See man login" > .hushlogin
mv .hushlogin ~/

# To install Mac App Store apps via terminal
brew install mas

# Remove outdated versions from the cellar.
brew cleanup

# Mac App Store (https://github.com/mas-cli/mas)
# Xcode
#mas install 497799835
# iMovie
mas install 408981434
# Logic Pro X
mas install 634148309
# Numbers
mas install 409203825
# Pages
mas install 409201541
# Shazam
mas install 897118787
# Telegram
mas install 747648890
# WhatsApp
mas install 1147396723