# Perl argues about these in Command-T
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:/usr/local/bin:$PATH"

. ~/dotfiles/bash/rails
. ~/dotfiles/bash/torquebox
. ~/dotfiles/bash/rvm-git-prompt

HISTSIZE=90000
source ~/dotfiles/history_backup

# use vi mode in bash instead of emacs
set -o vi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
