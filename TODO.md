# Todo After Resetting Mac

###### TODO: try to automate as many as possible with code
###### Note: many settings not listed here might be taken care of in `.macos`

### Yet To Automate
- Enable full disk access to Terminal
- Ensure repos has been downloaded from iCloud
- Create a file named `.zshrc` in `~`
- Copy snippet from bottom of repos `.zshrc` to `~` `.zshrc`
- Restart Terminal. Changes should be applied.
- Set Terminal default text size, text color, and background color
- Install `brew` **for M1**
- Allow Touch ID to sudo: Add as 2nd line of `/etc/pam.d/sudo`: `auth sufficient pam_tid.so`

Add alias: https://stackoverflow.com/a/16957078


## System Preferences
- Set MacBook name
- Check checkbox to automatically keep Mac up to date
- Set sound check to off
- Set lock screen message
- set cursor size
- set trackpad touch to click
- set trackpad force touch to off
- set trackpad bottom right corner to secondary click
- swap ctrl and command keys
- hide Siri in menu bar
- hide input keyboard in menu bar
- show date

## Messages
- Set messages default downloads folder
- Set messages text size
- Enable Messages in iCloud

## Mail
- Set mail preferences including text size and signature
- Set mail downloads folder
- Set where mail searches
- Set what mail does with messages from blocked senders
- Set list preview line count
- Enable recent message at top
- Choose default signature

## Desktop
- Set desktop text size
- Set desktop sorting to date modified

## Notes
- Set notes automatic sorting of checked items
- Set notes default text size

## Safari
- Set safari start page
- Set Safari to reopen all non-private pages from last session
- Set safari downloads folder
- Show icons in tabs
- Enable extensions
- Enable developer menu

## Finder
- Finder preferences: open new windows in documents

## Finally
- Run `batch-install-via-brew`, logout, restart
- Run `.macos`, logout, restart
- (No need to prefix with `source` if files were made executable using `chmod +x FILENAMEHERE`)