#########################################
# Misc.:
#########################################

# Make Sublime Text default editor
export EDITOR=sublime

# Grunt tab completion
eval "$(grunt --completion=zsh)"

# Show dot files (hidden files)
alias showDotFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'

# Hide dot files
alias hideDotFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
