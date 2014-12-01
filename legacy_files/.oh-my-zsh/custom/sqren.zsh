#########################################
# Misc.:
#########################################

# Make Sublime Text default editor
export EDITOR=sublime

# Grunt tab completion
eval "$(grunt --completion=zsh)"

# Show hidden files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'

# Hide hidden files
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
