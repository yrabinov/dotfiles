# temporary
alias export_queue='COUNT=3 rake resque:workers queue="export_earnings"'

alias st='cd $HOME/workspace/rails3/stageit'
alias stm='cd $HOME/workspace/stageitmaster'

# mac specific aliases ------------------------------------------

alias o='open . &'

# other aliases ------------------------------------------
#
alias m='mvim'
alias cdw='cd ~/Workspace'
alias cdf='cd ~/Workspace/Collab/financials'

# utility
alias c='clear'
alias ..='cd ..'
alias ll='ls -lAGhF'
cd() { builtin cd "$1"; ll; }

# rails
alias r='rails'
alias tld='tail -f log/development.log'
alias tlt='tail -f log/test.log'
alias tlp='tail -f log/production.log'
alias rs='rails server'
alias rsp='rails server -e production'
alias rr='rake routes'
alias rdm='rake db:migrate'
alias rdr='rake db:rollback'

# git aliases
alias gb='git branch'
alias gba='git branch -a'
function gc() {
git commit -v -m "$*"
}
function gca() {
git commit -v -a -m "$*"
}
alias gd='git diff'
alias gdc='git diff --cached'
alias gl='git pull'
alias gp='git push'
alias gst='git status'
alias ga.='git add .'
alias grh='git reset --hard'
alias grs='git reset --soft'
alias co='git co'
alias ci='git ci'
alias gm='git merge'
alias glg='git log --oneline --graph --decorate --all'

