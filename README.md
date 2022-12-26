# My Dotfiles
- What are "dotfiles"? Click [here](https://www.freecodecamp.org/news/dotfiles-what-is-a-dot-file-and-how-to-create-it-in-mac-and-linux/) for a great article!

# Documentation
- Most files in this repo are documented within themselves.
- `all` is an alias I use to ensure everything is up to date (brew, macOS).
- `brew.sh` is a file containing brew commands to install the brew packages I use, set various settings such as git, and install some apps from the Mac App Store via "mas" (`brew install mas`).
- `bulk-open` is a tiny program that lets you type a file name and **opens** all the files matching that name (in your current directory and its subdirectories). I use it when editing multiple READMEs, LICENSEs, and...well, mainly READMEs and LICENSEs.
- `bulk-rename` is another tiny program to **rename** multiple files. I used it to rename files such as LICENSE.md to LICENSE, when GitHub changed how they handle such files.
- `macos` contains a *whole* bunch of (mostly...working...? YMMV) macOS settings commands.
- Last, but **far** from least, `zshrc` contains commands to setup the Terminal prompt (such as setting the `path`) to look and work as I like/am used to, and set/create various aliases I regularly use.