# BREW.SH
# Installs packages, apps, sets up gitconfig, creates hushlogin

# Ask for the administrator password upfront
sudo -v
# Keep-alive: update existing `sudo` time stamp until `.brew.sh` has finished
while true; do
    sudo -n true
    sleep 60
    kill -0 "$$" || exit
done 2>/dev/null &

# BREW
brew update
brew upgrade
BREW_PREFIX=$(brew --prefix)
brew install --cask brave-browser
brew install --cask sf-symbols
brew install --cask zoom
brew install git-open
brew link git-open
brew install multi-git-status
chmod 755 /usr/local/bin/mgitstatus
brew install --cask sublime-text
brew install --cask app-tamer
brew install --cask obs
brew install youtube-dl
brew install --cask signal
# Make subl work. See: https://stackoverflow.com/a/17731879/5306470
ln -sv "/Applications/Sublime Text.app/Contents/\
SharedSupport/bin/subl" /usr/local/bin/subl

# Setup git config globally
# 'untracked': https://git-scm.com/docs/git-update-index#_untracked_cache
git config --global user.name "Daniel Springer"
git config --global user.email 19246409+DaniSpringer@users.noreply.github.com
git config --global core.editor "subl -n -w"
git config --global core.untrackedCache true
git config --global color.ui true
git config --global help.autocorrect 1
git config --global pull.rebase false
git config --global push.autoSetupRemote true

echo "The mere presence of this file in the HOME (~) directory disables the \
system copyright notice, the date and time of the last login, the message \
of the day as well as other information that may otherwise appear on login. \
See man login" >.hushlogin
mv .hushlogin ~/
# To install Mac App Store apps via terminal
brew install mas

# Mac App Store (https://github.com/mas-cli/mas)
# Xcode
mas install 497799835

########## These 2 need Xcode to be installed **first**
brew install swiftlint
brew install chargepoint/xcparse/xcparse
##########

# iMovie
mas install 408981434

# Logic Pro X
#mas install 634148309

# Numbers
mas install 409203825

# Pages
mas install 409201541

# Shazam
#mas install 897118787

# Spotify
#brew install spotify

# Stockfish
mas install 801463932

# Remove outdated versions from the cellar.
brew cleanup