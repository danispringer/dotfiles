#!/bin/zsh

# Make Sublime Text the default editor.
# To make subl work, see https://stackoverflow.com/a/17731879/5306470
export EDITOR='subl -w'

export PATH="/opt/homebrew/bin:$HOME/Documents/repos/dotfiles:/usr/bin:/bin\
:/usr/sbin:/sbin:/opt/homebrew/sbin:$PATH"

# Make git tab autocompletions work
autoload -Uz compinit && compinit

# Set prompt to "<current dir> %"
PS1='%1~ %# '
export PS1

# Customize man pages color
export LESS_TERMCAP_md=$(tput bold; tput setaf 1)

# NVM
# export NVM_DIR="$HOME/.nvm"
# # This loads nvm
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# # This loads nvm bash_completion
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Aliases
alias ..='cd ../'
alias all='upallbrews'
alias ap='open *.xcodeproj'
alias cc='xcodebuild clean; rm -rf ~/Library/Developer/Xcode/DerivedData'
alias d='cd /Users/dani/Documents/repos/dotfiles'
alias dt='cd /Users/dani/Desktop'
alias ga.='git add .'
alias ga='git add'
alias gba='git branch -a'
alias gc='git commit -v'
alias gd='git diff'
alias gl='git log'
alias go='git open'
alias gp='git push'
alias gs='git status'
alias hide='defaults write com.apple.finder AppleShowAllFiles -bool false \
&& killall Finder' # Show/hide hidden files in Finder
alias mgs='mgitstatus -e --depth=0'
# alias op='open *.xcworkspace'
alias path='<<<${(F)path}'
#alias podup='''ls -d *  | xargs -I {} bash -c 'cd '{}' && echo '{}' && \
#pod install --repo-update'''';
alias r='cd /Users/dani/Documents/repos'
alias show='defaults write com.apple.finder AppleShowAllFiles -bool true \
&& killall Finder' # Show/hide hidden files in Finder
alias sudo='sudo ' # Enable aliases to be sudo’ed
alias swiftlint='swiftlint --reporter relative-path --quiet';

# yt-dlp "https://www.youtube.com/watch?v=FIEbMsOm-Uo" -f mp4
# seems to take low quality

# Make ls output colored
alias ls='ls -G'
alias l='ls -G'
alias la='ls -AG'
alias l1='ls -1AG'
alias la1='ls -1AG'

# Go to projects folder, where I usually want to be
r

#######################
# In ~, create a file called `.zshrc` to link to this one
# (which is stored in repos folder), and put this code in it (UNCOMMENTED):
# if [ -f ~/Documents/repos/dotfiles/zshrc ]; then
#    source ~/Documents/repos/dotfiles/zshrc
# fi
#######################
