#!/bin/zsh

# Make Sublime Text the default editor.
# To make subl work, see https://stackoverflow.com/a/17731879/5306470
export EDITOR='subl -w'

export PATH="$HOME/Documents/repos/dotfiles:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/homebrew/bin:s$PATH"

# Add a '*' to the branch name if the branch has been changed
#export GIT_PS1_SHOWDIRTYSTATE=1;

autoload -Uz compinit && compinit
PS1='%1~ %# '
export PS1

# Customize man pages colors (I think)
export LESS_TERMCAP_mb="$PURPLE_COLOR$BOLD"
export LESS_TERMCAP_md="$BLUE_COLOR$BOLD"
export LESS_TERMCAP_me="$RESET$RESET"
export LESS_TERMCAP_se="$RESET$RESET"
export LESS_TERMCAP_so="$YELLOW_COLOR$BOLD"
export LESS_TERMCAP_ue="$RESET$RESET"
export LESS_TERMCAP_us="$GREEN_COLOR$BOLD$BEGIN_UNDERLINE"

# NVM
export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Aliases
alias brew86='arch -x86_64 brew '
alias r='cd /Users/dani/Documents/repos'
alias dt='cd /Users/dani/Desktop'
alias d='cd /Users/dani/Documents/repos/dotfiles'
alias mgs='mgitstatus -e --depth=0'
alias ..='cd ../'
# alias podup='''ls -d *  | xargs -I {} bash -c 'cd '{}' && echo '{}' && pod install --repo-update'''';
alias gs='git status'
alias ga='git add'
alias ga.='git add .'
alias gc='git commit -v'
alias gp='git push'
alias gd='git diff'
alias go='git open'
alias gl='git log'
alias gba='git branch -a'
alias cc='xcodebuild clean; rm -rf ~/Library/Developer/Xcode/DerivedData'
alias path='<<<${(F)path}'
alias ap='open *.xcodeproj'
alias op='open *.xcworkspace'
alias swiftlint='swiftlint --quiet'
alias work='cd /Users/dani/Documents/repos/merkos/chabadPlus_iOS/c-kids'

# Show/hide hidden files in Finder
alias show='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias hide='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# See Prefacto for code. Command to run script is simply 'bash screenshots.sh'

# Detect which `ls` flavor is in use
if ls --color >/dev/null 2>&1; then # GNU `ls`
    colorflag="--color"
    export LS_COLORS="no=00:fi=00:di=01;31:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:"
else # macOS `ls`
    colorflag="-G"
    export LSCOLORS="FxFxhxDxfxhxhxhxhxcxcx"
fi

# Run 'man ls' in help
# Add ${colorflag} for colored output

alias l='ls -F ${colorflag}'
alias la='ls -AF ${colorflag}'
alias l1='ls -1AF ${colorflag}'

# Go to projects folder, where I usually want to be
r

#######################
# In ~, create a file called `.zshrc` to link to this one
# (which is stored in repos folder), and put this code in it (UNCOMMENTED):
# if [ -f ~/Documents/repos/dotfiles/zshrc ]; then
#    source ~/Documents/repos/dotfiles/zshrc
# fi
#######################
