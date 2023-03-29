#!/bin/bash

if [[ -f ~/.bashrc ]]; then
  source ~/.bashrc
fi

export PATH=$PATH:/usr/local/Cellar/postgresql@9.6/9.6.22/bin/

#config
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'

#bash
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

#pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init --path)"

alias ls='ls -aFHG'
alias ll='ls -lG'

#Git
alias p='git pull'
alias dev='git checkout develop'
alias br='git branch'
alias st='git status'
alias r='git rebase develop'
alias ri='git rebase develop -i'

#PostgreSQL
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

#Misc.
alias profile='nvim ~/.bash_profile'
alias srcprofile='source ~/.bash_profile'
alias vprofile='nvim ~/.config/nvim/init.vim'
alias code='cd ~/Code'

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

#code

