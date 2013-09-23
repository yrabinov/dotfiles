# temporary
alias export_queue='COUNT=3 rake resque:workers queue="export_earnings"'

alias st='cd $HOME/workspace/rails3/stageit'
alias stm='cd $HOME/workspace/stageitmaster'

# mac specific aliases ------------------------------------------

alias o='open . &'

# other aliases ------------------------------------------
#
alias m='mvim'

# fullscreen

alias cdg='cd ~/workspace/fullscreen/Gorilla/'
alias cdd='cd ~/workspace/fullscreen/Dashboard/'
alias cda='cd ~/workspace/fullscreen/Accounts/'
alias cdb='cd ~/workspace/fullscreen/Backoffice/'
alias cdc='cd ~/workspace/fullscreen/CommentPromotions/'
alias cde='cd ~/workspace/fullscreen/earnings/'
alias cds='cd ~/workspace/fullscreen/Statements/'
alias cdt='cd ~/workspace/fullscreen/teller/'
alias cdk='cd ~/workspace/fullscreen/keymaster/'
alias cdf='cd ~/workspace/fullscreen/fullscreen_ui/'
alias gorilla_dump='curl -o gorilla.dump'
alias gorilla_restore='pg_restore --verbose --clean --no-acl --no-owner -d gorilla_development gorilla.dump'
alias dashboard_dump='cd && mongodump -hds035667-a0.mongolab.com:35667 -dfs_dashboard -ufullscreen -pfe11owship -omongobackup && mongorestore --drop -dfullscreen_development mongobackup/fs_dashboard'
alias prod_gorilla='heroku run console --app fsgorilla'
alias b='bundle exec'

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

