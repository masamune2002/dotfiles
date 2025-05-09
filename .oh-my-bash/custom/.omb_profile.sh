export PATH=$PATH:/usr/local/Cellar/postgresql@9.6/9.6.22/bin/:/opt/nvim-linux64/bin/:~/Applications/:~/.local/bin/

#config
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'

#bash
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

#pyenv
export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init --path)"

alias ls='ls -aFHG'
alias ll='ls -lG'

#Git
alias p='git pull'
alias gc='git commit -m'
alias gp='git push origin'
alias gs='git status'
alias dev='git checkout develop'
alias br='git branch'
alias r='git rebase develop'
alias ri='git rebase develop -i'

#PostgreSQL
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
export PGADMIN_DEFAULT_EMAIL='msamune2002@gmail.com'
export PGADMIN_DEFAULT_PASSWORD='none'
export PGADMIN_DEFAULT_PASSWORD_FILE='~/.pg_pass'

#Misc.
alias profile='nvim ~/.bash_profile'
alias srcprofile='source ~/.bash_profile'
alias vprofile='nvim ~/.config/nvim/init.vim'
alias code='cd ~/Code'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

code

