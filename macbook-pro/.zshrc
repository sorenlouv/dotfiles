# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

# Set this to use case-sensitive completion
CASE_SENSITIVE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git brew autojump)

source $ZSH/oh-my-zsh.sh

# Add Homebrew to PATH
export PATH="/usr/local/bin:/usr/local/sbin:"

# Add MAMP's php version to PATH
export PATH="$PATH/Applications/MAMP/bin/php/php5.5.10/bin:"

# Add MAMP's mysql to PATH
export PATH="$PATH/Applications/MAMP/Library/bin:"

# Add standard folders to path
export PATH="$PATH/usr/bin:/bin:/usr/sbin:/sbin:"
