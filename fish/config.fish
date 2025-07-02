fnm env --use-on-cd --shell fish | source
starship init fish | source

alias ls='eza --oneline --icons --hyperlink'
alias cat='bat'
alias fm='yazi'

#config
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'

#Git
alias p='git pull'
alias gc='git commit -m'
alias ga='git add'
alias gaa='git add -A'
alias gp='git push origin'
alias gs='git status'
alias dev='git checkout develop'
alias br='git branch'
alias r='git rebase develop'
alias ri='git rebase develop -i'

#PostgreSQL
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

#Misc.
alias bp='nvim ~/.bash_profile'
alias srcprofile='source ~/.bash_profile'
alias vprofile='nvim ~/.config/nvim/'
alias code='cd ~/Code'
alias cfg='cd ~/.config'

alias vimia='python3 ~/Apps/chronicles-of-vimia/src/run_arcade_mode.py'
