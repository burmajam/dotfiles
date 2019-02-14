# Perl argues about these in Command-T
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:/usr/local/bin:$PATH"

. ~/dotfiles/bash/rails
#. ~/dotfiles/bash/torquebox
. ~/dotfiles/bash/rvm-git-prompt
. ~/dotfiles/bash/kubernetes
. ~/dotfiles/bash/elixir
. ~/dotfiles/bash/git

HISTSIZE=90000
source ~/dotfiles/history_backup

# use vi mode in bash instead of emacs
set -o vi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex" # Kiex support

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export ERL_AFLAGS="-kernel shell_history enabled"

# Helm
if [ -f helm ]; then
  . helm completion bash
fi

# Istio
export PATH="$PATH:$HOME/istio-1.0.4/bin"

# For FreightHUB testing
export FH_EMAIL_TO="milan.burmaja@vibe.rs"
